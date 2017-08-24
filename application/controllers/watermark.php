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

class Watermark extends Frontend_Controller 
{
    function __construct()
    {
        parent::__construct();
    }
		
	public function index()
	{		
                $image = $this->input->get('url');
		$stamp = imagecreatefrompng('http://r70.cooltext.com/rendered/cooltext255993008605699.png');
                $im = imagecreatefrompng($image);

                // Set the margins for the stamp and get the height/width of the stamp image
                $marge_right = 10;
                $marge_bottom = 10;
                $sx = imagesx($stamp);
                $sy = imagesy($stamp);

                // Copy the stamp image onto our photo using the margin offsets and the photo 
                // width to calculate positioning of the stamp. 
                imagecopy($im, $stamp, imagesx($im) - $sx - $marge_right, imagesy($im) - $sy - $marge_bottom, 0, 0, imagesx($stamp), imagesy($stamp));

                // Output and free memory
                header('Content-type: image/png');
                imagepng($im);
                imagedestroy($im);
	}	
}