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
<h2>File name: <?php echo $target; ?></h2>
<img src="<?php echo $target?>">

