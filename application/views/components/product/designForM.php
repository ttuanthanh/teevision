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
//var_dump($design);
?>

<div class="color-swatches" id="product-colors">

	<?php 
        //var_dump($index);
	for($i=0; $i<$colors; $i++ ){
		if ($i === $index) $active = 'active';
		else $active = '';
	?>
	 <a href="javascript:void(0);" class="color-swatch color-sm <?php echo ($index == '') ? 'color-hover-change': ''?>  <?php echo $active; ?>" 
	 	data-toggle="tooltip" data-placement="top" style="background-color:#<?php echo $design->color_hex[$i]; ?>" 
	 	title="<?php echo $design->color_title[$i]; ?>"
	 	data-index="<?=$i?>"
                data-color-hex="<?php echo $design->color_hex[$i]; ?>"
                data-color-name="<?php echo $design->color_title[$i]; ?>"
                data-iscolor="<?php echo ($design->color_hex[$i] == 'ffffff' || $design->color_hex[$i] == 'FFFFFF') ? 0 : 1 ?>"
		data-url-image="/api/imagechangecolor/<?=$product->id?>/front/<?=$i?>"
		data-element-load="#product-image-area"></a>
	
	<?php } ?>
	<input type="hidden" value="<?php echo $i; ?>" name="colors" id="colors" class="product_color_active">
        <input type="hidden" value="" name="is-color" id="is-color">
</div>