<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$target_dir = "/";
$target_file = basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }

    // Check if file already exists
    if (file_exists($target_file)) {
        echo "Sorry, file already exists.";
        $uploadOk = 0;
    }
    // Check file size
    if ($_FILES["fileToUpload"]["size"] > 500000) {
        echo "Sorry, your file is too large.";
        $uploadOk = 0;
    }
    // Allow certain file formats
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    && $imageFileType != "gif" ) {
        echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
        $uploadOk = 0;
    }

    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        echo "Sorry, your file was not uploaded.";
    // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
            echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";

            $strInputFile = $target_file;
            $tranname= explode('.', $strInputFile);
            $target = $tranname[0].'_transparent.png';

            $fuzz = isset($_GET['fuzz']) ? $_GET['fuzz'] : 10000;

            $im = new Imagick($strInputFile);
            $im->paintTransparentImage($im->getImageBackgroundColor(), 0, $fuzz);
            $im->setImageFormat('png');
            $im->writeImage($target);
            $im->destroy();
        } else {
            echo "Sorry, there was an error uploading your file.";
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

<form  method="post" enctype="multipart/form-data">
    Select image to upload:
    <input type="file" name="fileToUpload" id="fileToUpload">
    <input type="submit" value="Upload Image" name="submit">
</form>

<div style="background: #007F7B">
    <div style="float: left; width: 50%">
        <h2>INPUT: <?php echo $strInputFile; ?></h2>
        <img src="<?php echo $strInputFile?>">
    </div>
<?php 
if (isset($target)){
    ?>
    <div style="float: left; width: 49%">
        <h2>OUTPUT: <?php echo $target; ?></h2>
        <img src="<?php echo $target?>">
    </div>
    <?php
    }
    ?>
    
    <br clear="all" />
</div>



