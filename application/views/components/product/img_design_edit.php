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

?>

<!-- main image -->
<?php 
if ( !empty($product->design->front) && isset($product->design->front[$index]) && !empty($product->design->front[$index]) ) {
?>
<div class="main-image text-center">
	<a href="#" title="<?php echo $product->title; ?>">		
		<img src="<?php echo site_url('api/image/'.$product->id.'/front/'.$index.'.png'); ?>" alt="<?php echo $product->title; ?>" data-zoom-image="<?php echo site_url('api/image/'.$product->id.'/front/'.$index.'.png'); ?>" class="img-thumbnail img-responsive">		
	</a>
</div>
<?php } 

 else { ?>
<div class="main-image text-center">
     <a href="#" title="<?php echo $product->title; ?>">		
		<img src="<?php echo site_url('/media/assets/products/no-ima.jpg'); ?>" alt="<?php echo $product->title; ?>"  class="img-thumbnail img-responsive">		
	</a>
</div>
<?php }
?>