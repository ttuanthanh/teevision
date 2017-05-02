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

	if(count($products))
	{
		echo $css;
		$options = json_decode($m_product->options);
		//echo '<pre>';
		//print_r($products);
		echo'<div class="contain-btn-inform row mobile"><div class="col-xs-6 inform-btn-mobile mobile"><a href="/design" class="col-xs-12 btn btn-warning inform-link"><span>Start Design</span></a></div>';
		echo'<div class="col-xs-6 inform-btn-mobile mobile"><a href="/page/21-contact-us" class="col-xs-12 btn btn-warning inform-link"><span>Contact Us</span></a></div></div>';
		if(isset($options->show_title) && $options->show_title == 'yes')
			echo '<h2 class="text-center tee-title">'.$m_product->title.'</h2>';
			
		echo '<div class="box-product row">';
		foreach($products as $product)
		{
			if(isset($options->cols))
				$cols = 12/$options->cols;
			else
				$cols = 12;
			if(isset($options->cols) && $options->cols == 3)
			{
				$col_ms = 6;
				$col_xs = 12;
			}else if(isset($options->cols) && $options->cols == 4)
			{
				$col_ms = 4;
				$col_xs = 6;
			}else if(isset($options->cols) && $options->cols == 6)
			{
				$col_ms = 3;
				$col_xs = 4;
			}else
			{
				$col_ms = 12;
				$col_xs = 12;
			}
			
			echo '<div class="col-md-'.$cols.' col-ms-'.$col_ms.' col-xs-'.$col_xs.'">';
		
			echo 	'<div class="thumbnail layout-product edit-thumb">';
                        echo 		'<div class="caption text-center"><a href="'.site_url().'product/'.$product->id.'-'.$product->slug.'"><h4>'.strtoupper($product->title).'</h4></a></div>';		
			echo 		'<a href="'.site_url().'product/'.$product->id.'-'.$product->slug.'">';
			echo 			'<img class="img-responsive" src="'.base_url($product->image).'" alt=""/>';
			echo 		'</a>';		

			echo 	'</div>';
			
			echo '</div>';
		}
		echo '</div>';
	}
?>

