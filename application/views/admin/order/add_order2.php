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


// ech price
if ($product->sale_price > 0)
{
	$sale 	= true;
	$price 	= $product->sale_price;
}
else
{
	$sale = false;
	$price 	= $product->price;
}

$currency	= $product_m->getCurrency($product->currency_id);
$link 		= site_url('product/'.$product->id .'-'. $product->slug);
$cateee = $product_m->getProductCateOrderParent($product->id);
$design		= $product->design;
$colors 	= count($design->color_hex);
?>
<link type="text/css" href="http://tshirt.local/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="all">
<link type="text/css" href="http://tshirt.local/assets/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" media="all">
<link type="text/css" href="http://tshirt.local/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="all">
<link type="text/css" href="http://tshirt.local/assets/css/core.css" rel="stylesheet" media="all">
<script type="text/javascript" src="http://tshirt.local/assets/js/jquery.min.js"></script>
<script type="text/javascript" src="http://tshirt.local/assets/plugins/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="http://tshirt.local/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://tshirt.local/assets/js/core.js"></script>
<link rel="shortcut icon" href="http://tshirt.local/media/assets/icon.png">
<link href="http://fonts.googleapis.com/css?family=Oswald%7CPT+Sans%7COpen+Sans" rel="stylesheet" type="text/css">
<link type="text/css" href="http://tshirt.local/application/views/themes/default/css/template.css" rel="stylesheet" media="all">
<?php if (count($product)) { ?>	
	<script src="<?php echo base_url('assets/plugins/easyzoom/js/jquery.elevatezoom.js'); ?>"></script>
	<div class="col-sm-12">
                
                <div class="page-header pro-detail-title no-border font-bold">
                        <h2 class="tshirt-name">
                                <?php echo $product->title; ?>

                                <?php if (isset($color_active)) { ?>
                                <small><?php echo $color_active; ?></small>
                                <?php } ?>
                        </h2>
                </div>
		<!-- product image -->
                
		<form id="submit-quote" action="<?php echo site_url('cart/addToCart'); ?>" method="post">
		<!-- product info -->
		<div class="">
						
			<!-- rating -->
                        
                        <p class="font-bold">Available color</p>
                         <!-- product design -->
			<?php if (isset($product->design)) { ?>
			<div class="form-group">
				<?php $this->load->view('components/product/design', array('index'=>$index, 'product'=>$product)); ?>
			</div>
			<?php } ?>
                                               
                        <br>
			<!-- product attribute -->
			<?php if (isset($product->attributes)) { ?>
			<div class="form-group">
				<?php echo $product->attributes; ?>
			</div>
			<?php } ?>			
			<div class="form-group clearfix">
                            <div>
                                <p><b>Decoration</b></p>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <label class="font-nor" for="">Select Number of Front Colors: </label>
                                <select class="form-control text-center width-200" name="print-front" id="print-front-num" onchange="getQuote()">
                                    <option value="0" >==Select==</option>
                                    <option value="1" >1 color</option>
                                    <option value="2" >2 colors</option>
                                    <option value="3" >3 colors</option>
                                    <option value="4" >4 colors</option>
                                    <option value="5" >5 colors</option>
                                    <option value="6" >6 colors</option>
                                </select>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <label class="font-nor" for="">Select Number of Back Colors: </label>
                                <select class="form-control text-center width-200" name="print-back" id="print-back-num" onchange="getQuote()">
                                    <option value="0" >==Select==</option>
                                    <option value="1" >1 color</option>
                                    <option value="2" >2 colors</option>
                                    <option value="3" >3 colors</option>
                                    <option value="4" >4 colors</option>
                                    <option value="5" >5 colors</option>
                                    <option value="6" >6 colors</option>
                                </select>
                            </div>
                            
			</div>
                        <!-- Price detail -->
                        <div class="form-group price-calc hidden-box clearfix" id="price-detail">
                            <hr>
                            
                            <div class="text-center">
                                <p class="price-unit  margin-0">Unit price: <span id="unit-price-value" class="cl-pink"></span></p>
                                <p class="price-total cl-blue">Total price: <span id="total-price-value"></span></p>
                            </div>
                            <br clear="all">
                            <hr style="margin-top: 0">
                        </div>
			<!-- form -->
			<div class="form-group clearfix row">
				<!--<form name="addtocart" class="addtocart" action="" method="post">-->
                                        <input type="hidden" value="<?php echo $product->id; ?>" id="product_id" name="product_id">
					<!--<button type="button" class="btn btn-primary pull-left"><i class="fa fa-shopping-cart"></i> Add To Cart</button>-->
					
                                        
					
                                        <!--<p class="btn btn-primary pull-left btn-order margin-right20 hidden-box" title="Click to get quote" href="<?php echo site_url('product/after-quote/'.$product->id.'-'.$product->slug); ?>">START ORDER</p>-->
                                        <div class="col-md-6 text-left"><p class="btn btn-primary btn-quote btn-product width100o" id="btn-getquote" title="Click to get quote"> GET QUOTE</p></div>
                                        <div class="col-md-6 text-right"><p class="btn btn-primary btn-order btn-product width100o" title="Click to get quote" >START ORDER</p></div>
				<!--</form>-->
			</div>
			
			<!-- share -->
			<!-- <hr class="clearfix">-->
			
                        
                            <input type="hidden" id="quantity" name="quantity" value="">
                            <input type="hidden" name="f-price" id="f-price">                            
                        
			
		</div>
                </form>
                <br clear="all">
                
	</div>
	
	
	
<script type="text/javascript">
jQuery(function() {
	jQuery( ".list-number input.size-number" ).spinner({
		min: 0,
		max: 100,
	});
	jQuery('[data-toggle="tooltip"]').tooltip();
	jQuery(".main-image img").elevateZoom();
	jQuery('.main-gallery a').click(function(){
		jQuery('.main-image img').attr('src', jQuery(this).data('zoom-image'));
		jQuery('.main-image img').attr('data-zoom-image', jQuery(this).data('zoom-image'));
		var ez = jQuery('.main-image img').data('elevateZoom');	
		ez.swaptheimage(jQuery(this).data('zoom-image'), jQuery(this).data('zoom-image'));
	});
});
</script>	

<?php } else { ?>
<div class="row">
	<!-- product not found -->
	<h3><?php echo lang('data_not_found'); ?></h3>
	<p><?php echo lang('categories_default_product_not_found_desc'); ?></p>
</div>
<?php } ?>