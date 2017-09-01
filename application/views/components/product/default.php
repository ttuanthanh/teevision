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
$link 		= site_url('product/'. $product->slug);
$cateee = $product_m->getProductCateOrderParent($product->id);
$design		= $product->design;
$colors 	= count($design->color_hex);
?>

<?php if (count($product)) { ?>	
	<script src="<?php echo base_url('assets/plugins/easyzoom/js/jquery.elevatezoom.js'); ?>"></script>
	<div class="row">
                <!-- breadcrumb -->
                <ol class="breadcrumb e-beadcrum">
                    <li><a href="<?php echo site_url('/'); ?>">HOME TEEVISON</a></li>
                <?php 
                    foreach ($cateee as $cat){
                        $cat_q = $categories_m->getCategory('product', $cat->cate_id);
                        echo '<li><a href="'.site_url('categories/'.$cat_q->id.'-'.$cat_q->slug).'">'.strtoupper($cat_q->title).'</a></li>';
                    }
                ?>
                    <li><?php echo strtoupper($product->title); ?></li>
                </ol>
                <div class="page-header pro-detail-title no-border font-bold">
                        <h2 class="tshirt-name">
                                <?php echo $product->title; ?>

                                <?php if (isset($color_active)) { ?>
                                <small><?php echo $color_active; ?></small>
                                <?php } ?>
                        </h2>
                        <h3 class="tit-short-des"><?php echo $product->short_description ?></h3>
                        <h4 class="tit-pri-sta">Starting at <?php echo $currency->currency_symbol .''. $product->price; ?> | <?php echo $colors ?> color</h4>
                </div>
		<!-- product image -->
                <div class="col-md-5">
                    <div id="product-image-area">
                            <?php
                            if ($color_load === true)
                            {
                                    $this->load->view('components/product/image_design', array('index'=>$index, 'product'=>$product));
                            }
                            else
                            {
                                    $this->load->view('components/product/image', array('product'=>$product));
                            }
                            ?>			
                    </div>

                    <!-- SKU -->
    <!--			<p><?php echo lang('sku'); ?>: <strong><?php echo $product->sku; ?></strong></p>-->

                    
                </div>
		
		<!-- product info -->
		<div class="col-md-7">
						
			<!-- rating -->
                        
            <p class="font-bold">Preview available colors: <span id="color_sel_name"></span></p>
             <!-- product design -->
			<?php if (isset($product->design)) { ?>
			<div class="form-group">
				<?php $this->load->view('components/product/design', array('index'=>$index, 'product'=>$product)); ?>
			</div>
			<?php } ?>
                        <?php if (isset($product->design) && $product->design->front != '') { ?>
                            <a class="btn btn-primary btn-product btn-godesign" title="Click to custom this product" href="<?php echo site_url('design-online/index/'.$product->id.'-'.$product->slug); ?>"> START DESIGN HERE</a>
                        <?php } ?>
                        
                        <br><br>
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
                                <select class="form-control text-center width-200" id="print-front-num" onchange="getQuote()">
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
                                <select class="form-control text-center width-200" id="print-back-num" onchange="getQuote()">
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
                            <div class="col-md-8 text-center">
                                <p class="ship-free margin-0"><span class="cl-blue">Free Shipping </span>by <?php echo date("D, M j", strtotime("10 weekdays")); ?> Guaranteed </p>
                                <p class="ship-rush"><span class="cl-pink">Need it sooner?  </span> Upgrade to rush shipping at Check out </p>
                            </div>
                            <div class="col-md-4 text-right">
                                <p class="price-unit  margin-0">Unit price: <span id="unit-price-value" class="cl-pink"></span></p>
                                <p class="price-total cl-blue">Total price: <span id="total-price-value"></span></p>
                            </div>
                            <br clear="all">
                            <hr style="margin-top: 0">
                        </div>
			<!-- form -->
			<div class="form-group clearfix row">
				<form name="addtocart" class="addtocart" action="" method="post">
                                        <input type="hidden" value="<?php echo $product->id; ?>" id="product_id">
					<!--<button type="button" class="btn btn-primary pull-left"><i class="fa fa-shopping-cart"></i> Add To Cart</button>-->
					
                                        
					
                                        <!--<p class="btn btn-primary pull-left btn-order margin-right20 hidden-box" title="Click to get quote" href="<?php echo site_url('product/after-quote/'.$product->id.'-'.$product->slug); ?>">START ORDER</p>-->
                                        <div class="col-md-6 text-left"><p class="btn btn-primary btn-quote btn-product width100o" id="btn-getquote" title="Click to get quote"> GET QUOTE</p></div>
                                        <div class="col-md-6 text-right"><p class="btn btn-primary btn-order btn-product hidden-box width100o" title="Click to get quote" >START ORDER</p></div>
				</form>
			</div>
			
			<!-- share -->
			<!-- <hr class="clearfix">-->
			
			<div class="form-group clearfix text-right">
                                <p class="font-bold">Share This product:</p>
				<a  target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=<?php echo $link; ?>" class="btn btn-primary btn-circle btn-facebook" title="Facebook"><i class="fa fa-facebook"></i></a>
				<a  target="_blank" href="https://twitter.com/home?status=<?php echo $link; ?>" class="btn btn-primary btn-circle btn-twitter" title="twitter"><i class="fa fa-twitter"></i></a>
				<a  target="_blank" href="https://plus.google.com/share?url=<?php echo $link; ?>" class="btn btn-primary btn-circle btn-google" title="google"><i class="fa fa-google-plus"></i></a>
				<a  target="_blank" href="https://pinterest.com/pin/create/button/?url=<?php echo $link; ?>&amp;media=<?php echo $product->image; ?>&amp;description=<?php echo $product->short_description; ?>" class="btn btn-primary btn-circle btn-pinterest" title="pinterest"><i class="fa fa-pinterest"></i></a>
			</div>
                        
                        <form id="submit-quote" action="<?php echo site_url('product/after-quote/'.$product->id.'-'.$product->slug); ?>" method="post">
                            <input type="hidden" name="f-price" id="f-price">                            
                        </form>
			
		</div>
                <br clear="all">
                <div class="col-md-10 col-md-offset-1">
<!--                    <p class="font-bold under_s">Page description</p>-->
                    <div class="form-group">
                            <?php echo $product->page_description;                             ?>
                    </div>
                </div>
                <br clear="all">
                <div class="col-md-6 col-md-offset-1">
                    <!-- product short description -->
                   
                    <p class="font-bold under_s">Product detail</p>
                    <div class="form-group">
                            <?php echo $product->description;                             ?>
                    </div>

                    <!-- product price -->
<!--                    <div class="form-group">
                            <p class="price">
                                    <?php echo lang('price'); ?>: 
                                    <?php if($price != $product->price) { ?>
                                    <span class="price-old text-muted">
                                            <del><small><?php echo $currency->currency_symbol .''. $product->price; ?></small></del>
                                    </span>
                                    <?php } ?>

                                    <span class="price-new text-danger">
                                            <strong><?php echo $currency->currency_symbol .''. $price; ?></strong>
                                    </span>
                            </p>
                    </div>-->
                </div>
                <div class="col-md-4">
                    <p class="font-bold under_s">Size chart</p>
                    <?php echo $product->size;  ?>
                </div>
	</div>
	
	<!-- RELATED PRODUCTS -->
	<div class="row">
		<?php //$this->load->view('components/product/related', array('index'=>$index, 'products'=>$products, 'product_m'=>$product_m)); ?>
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