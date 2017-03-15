<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$strInputFile = 'sr.jpg';
$target = 'car_transparent.png';
$im = new Imagick($strInputFile);
$im->paintTransparentImage($im->getImageBackgroundColor(), 0, 10000);
$im->setImageFormat('png');
$im->writeImage($target);
$im->destroy();

?>

