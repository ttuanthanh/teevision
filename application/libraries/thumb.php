<?php
/**
 * @author teevisionprinting - www.teevisionprinting.com
 * @date: 2015-01-10
 * 
 * @copyright  Copyright (C) 2015 teevisionprinting.com. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE
 *
 */
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class thumb{
	
	public $file = '';
	
	function __construct($file = '')
	{
		if($file != '')
		{
			$this->file = $file;
		}
	}
	
	/*
	 * convert svg to image 
	 * create thumb
	 * $file: path of file save
	*/
	public function resize($file, $size = array('width'=>100, 'height'=>100), $type = 'png', $fixed = false)
	{
		$image 	= new Imagick($this->file);
		
		$image->setBackgroundColor(new ImagickPixel('transparent'));
		$image->setImageFormat($type);
		
		if($fixed === true)
		{
			$newWidth	= $size['width'];
			$newHeight	= $size['height'];
		}
		else
		{
			$imageprops = $image->getImageGeometry();
			$width 		= $imageprops['width'];
			$height 	= $imageprops['height'];
			if($width > $height){
				$newHeight = $size['height'];
				$newWidth = ($size['height'] / $height) * $width;
			}else{
				$newWidth = $size['width'];
				$newHeight = ($size['width'] / $width) * $height;
			}
		}
		
		$image->resizeImage($newWidth, $newHeight, imagick::FILTER_LANCZOS, 1); 
		$image->writeImage($file.'.'.$type);	
		$image->clear();
		$image->destroy();
	}
	
        public function resize2($file, $size = array('width'=>100, 'height'=>100), $type = 'png', $fixed = false)
	{
                $info = pathinfo($file);
                $ext = strtolower($info['extension']);
                list($width, $height) = getimagesize($file); 


                $tn= imagecreatetruecolor($image['width'], $image['height']); 
                if ( $ext == 'jpg' ) 
                    $source = imagecreatefromjpeg($file); 
                else if ($ext == 'png')
                    $source = imagecreatefrompng($file); 
                imagecopyresampled($tn, $source, 0, 0, 0, 0, $image['width'], $image['height'], $width, $height); 
        }
}