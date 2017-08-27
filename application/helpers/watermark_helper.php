<?php
/**
 * @author teevisionprinting - www.teevisionprinting.com
 * @date: 2015-01-10
 * 
 * Display custom fields
 * 
 * @copyright  Copyright (C) 2015 teevisionprinting.com. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE
 *
 */
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

Class Watermark
{

	function waterImage($image, $save)
	{	
		//$image = 'images/create-a-lonely-child-scene-photo-manipulation.jpg';

                //get the size of the image
                list($width, $height) = getimagesize($image);

                /*
                 * set the watermark font size
                 * possible values 1,2,3,4, and 5
                 * where 5 is the biggest
                 */
                $fontSize = 5;

                //set the watermark text
                $text = "teevisionprinting.com";

                /*
                 * Put the watermark on the
                 * lower right corner of the image
                 */
                //$xPosition = ($width-((imagefontwidth($fontSize)*strlen($text))+10));
                //$yPosition = ($height-(imagefontheight($fontSize)+10));
                

                //create a new image
                $newImg = imagecreatefrompng($image);

                imagesavealpha($newImg, true);
                
                //set the watermark font color to red
                $fontColor = imagecolorallocate($newImg, 255, 0, 0);
                
                
                
                $font = './assets/fonts/arial.ttf';
                $white = imagecolorallocate($newImg, 255, 255, 255);
                $grey = imagecolorallocate($newImg, 128, 128, 128);
                $black = imagecolorallocate($newImg, 0, 0, 0);
                
                $bbox = imagettfbbox(20, 0, $font, $text);
                $xPosition = (($width/2)-(($bbox[2] - $bbox[0]) / 2));
                $yPosition = $height-20;
                
                // Add some shadow to the text
                imagettftext($newImg, 20, 0, ($xPosition + 1), ($yPosition + 1), $grey, $font, $text);

                // Add the text
                imagettftext($newImg, 20, 0, $xPosition, $yPosition, $white, $font, $text);

                //write the watermark on the created image
                //imagestring($newImg, $fontSize, $xPosition, $yPosition, $text, $fontColor);

                //output the new image with a watermark to a file
                //imagejpeg($newImg,"add-a-text-watermark-to-an-image-with-php_03.jpg",100);
                /*
                 * PNG file appeared to have
                 * a better quality than the JPG
                 */
                imagepng($newImg, $save, 0);

                /*
                 * destroy the image to free
                 * any memory associated with it
                 */
                imagedestroy($newImg);
	}
}