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

//echo '<pre>'; print_r($design); exit;
$design		= $product->design;
$colors 	= count($design->color_hex);
?>

<div class="color-swatches" id="product-colors">

	<?php 
        //var_dump($index);
	for($i=0; $i<$colors; $i++ ){
		if ($i === $index) $active = 'active';
		else $active = '';
	?>
	 <a href="javascript:void(0);" class="color-swatch color-sm <?php echo $active; ?>" 
	 	data-toggle="tooltip" data-placement="top" style="background-color:#<?php echo $design->color_hex[$i]; ?>" 
	 	title="<?php echo $design->color_title[$i]; ?>"
		></a>
	
	<?php } ?>
	<input type="hidden" value="<?php echo $index; ?>" name="colors" id="colors" class="product_color_active">
        <input type="hidden" value="<?php echo $design->color_hex[$index] ?>" name="color-name" id="color-name">
        <input type="hidden" value="<?php echo ( isset($design->color_hex[$index]) && ($design->color_hex[$index] == 'ffffff' || $design->color_hex[$index] == 'FFFFFF')) ? 0 : 1 ?>" name="is-color" id="is-color">
</div>