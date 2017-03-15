<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$strInputFile = $_GET['file'];
$tranname= explode('.', $strInputFile);
$target = $tranname[0].'_transparent.png';

$fuzz = isset($_GET['fuzz']) ? $_GET['fuzz'] : 10000;

$im = new Imagick($strInputFile);
$im->paintTransparentImage($im->getImageBackgroundColor(), 0, $fuzz);
$im->setImageFormat('png');
$im->writeImage($target);
$im->destroy();



?>
<div style="float: left; width: 50%">
    <h2>INPUT: <?php echo $strInputFile; ?></h2>
    <img src="<?php echo $strInputFile?>">
</div>

<div style="float: left; width: 49%">
    <h2>OUTPUT: <?php echo $target; ?></h2>
    <img src="<?php echo $target?>">
</div>


