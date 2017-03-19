<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $target_dir = "/";
    $target_file = basename($_FILES["fileToUpload"]["name"]);
    $uploadOk = 1;
    $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        echo "<br />File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "<br />File is not an image.";
        $uploadOk = 0;
    }

    // Check if file already exists
//    if (file_exists($target_file)) {
//        echo "<br />Sorry, file already exists.";
//        $uploadOk = 0;
//    }
    // Check file size
    if ($_FILES["fileToUpload"]["size"] > 500000) {
        echo "<br />Sorry, your file is too large.";
        $uploadOk = 0;
    }
    // Allow certain file formats
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    && $imageFileType != "gif" ) {
        echo "<br />Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
        $uploadOk = 0;
    }

    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        echo "<br />Sorry, your file was not uploaded.";
    // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
            echo "<br />The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";

            $strInputFile = $target_file;
            $tranname= explode('.', $strInputFile);
            $target = $tranname[0].'_transparent.png';

            $fuzz = isset($_POST['fuzz']) ? $_POST['fuzz'] : 10000;

            $im = new Imagick($strInputFile);
            $im->paintTransparentImage($im->getImageBackgroundColor(), 0, $fuzz);
            $im->setImageFormat('png');
            $im->writeImage($target);
            $im->destroy();
        } else {
            echo "<br />Sorry, there was an error uploading your file.";
        }
    }
}





?>
<style>
    body{
        background: #007F7B;
        color: white;
    }
</style>

<form  method="post" enctype="multipart/form-data" style="font-size: 14px">
    Select image to upload:
    <input type="file" name="fileToUpload" id="fileToUpload">
    <br/><br/>
    Fuzz:
    <input type="text" name="fuzz" id="fuzz" value="10000">
    <br /><br/>
    <input type="submit" value="Upload and remove background" name="submit" style="height: 30px; background: #CEF3C5">
</form>
<?php 
if (isset($target)){
    ?>
<div style="background: #007F7B">
    <div style="float: left; width: 50%">
        <h2>INPUT: <?php echo $strInputFile.' ---fuzz: '.$fuzz; ?></h2>
        <img src="<?php echo $strInputFile?>" width="80%">
    </div>

    <div style="float: left; width: 49%">
        <h2>OUTPUT: <?php echo $target; ?></h2>
        <img src="<?php echo $target?>"  width="80%">
    </div>
    
    
    <br clear="all" />
</div>

<?php
    }
    ?>

