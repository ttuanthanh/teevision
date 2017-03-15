<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$strInputFile = $_GET['file'];
$tranname= explode('.', $strInputFile);
$target = $tranname[0].'transparent.png';
$im = new Imagick($strInputFile);
$im->paintTransparentImage($im->getImageBackgroundColor(), 0, 100);
$im->setImageFormat('png');
$im->writeImage($target);
$im->destroy();



?>

<img src="<?php echo $target?>">

