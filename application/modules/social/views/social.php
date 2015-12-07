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


	echo $css;
	echo '<div class="module-social float-right">';
	$content = json_decode($social->content);
	echo '<ul class="social">';
	foreach($content as $key=>$value)
	{
		if(isset($value->publish) && $value->publish == 'yes')
		{
			if(isset($value->icon) && isset($value->link) && strlen($value->link) > 8)
				echo '<li><a href="'.$value->link.'"><img style="max-width: 32px; max-height: 32px;" src="'.base_url($value->icon).'" alt="'.$key.'" /></a></li>';
			else if(isset($value->icon))
				echo '<li><a href="#"><img style="max-width: 32px; max-height: 32px;" src="'.base_url($value->icon).'" alt="'.$key.'" /></a></li>';
		}
	}
	echo '</ul>';
        echo '<br clear="all">';
	echo '</div>';
        echo '<br clear="all">';
?>