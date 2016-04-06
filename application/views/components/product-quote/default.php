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


?>

<?php if (count($product)) { ?>	
        <script type="text/javascript">
            var uploadSize = [];
		uploadSize['max']  = '10';
		uploadSize['min']  = '0';
		//if(typeof Holder !== 'undefined') Holder.run();
           
	</script>
	<link href="<?php echo base_url('assets/css/product-quote.css'); ?>" rel="stylesheet"/>
	<link href="<?php echo base_url('assets/plugins/jasny-bootstrap/css/jasny-bootstrap.min.css'); ?>" rel="stylesheet"/>
	<script src="<?php echo base_url('assets/plugins/easyzoom/js/jquery.elevatezoom.js'); ?>"></script>
	
	<script src="<?php echo base_url('assets/plugins/jasny-bootstrap/js/jasny-bootstrap.min.js');?>"></script>
	<script src="<?php echo base_url('assets/plugins/holder/holder.min.js');?>"></script>
        
	
	<div class="row">
		<form name="checkout" id="check-out" class="product-after-quote checkout" action="/cart/addToCart" method="post">
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
                    <li><a href="<?php echo $link ?>"><?php echo strtoupper($product->title); ?></a></li>
                    <li>AFTER QUOTE</li>
                </ol>
                <div class="page-header pro-detail-title no-border font-bold">
                        <h2>
                                <?php echo $product->title; ?>

                                
                        </h2>
                </div>
		<!-- product image -->
		<div class="col-md-4"  id="product-image-area">
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
		
		<!-- product info -->
		<div class="col-md-8">
						
			<!-- rating -->
                        
                        <p class="font-bold">Selected color: 
                            <?php if (isset($color_active)) { ?>
                                <span class=""><?php echo  ucfirst ($color_title); ?></span>
                            <?php } else echo 'none'; ?>
                        </p>
            <!-- product design -->
			<?php if (isset($product->design)) { ?>
			<div class="form-group">
				<?php $this->load->view('components/product-quote/color_list_quote', array('index'=>$index, 'product'=>$product)); ?>
			</div>
			<?php } ?>
			
		</div>
		<div class="col-md-6">
                        <!-- product attribute -->
                                <?php if (isset($product->attributes)) { ?>
                                <div class="form-group form-attributes">
                                        <?php echo $product->attributes; ?>
                                </div>
                                <?php } ?>			
                </div>
		</div>
		<div class="row">
			
			<div class="col-md-12 clearfix">
                            <h4><b>Have Artwork? Add Files Here:</b></h4>
                            <h5><b>Notice:</b> <i>Adobe Illustrator, Photoshop, PDF, PNG, JPEG is preferred.</i></h5>
                            <div class="col-md-5 pruduct-quote-front">
                                <h5><b>Front</b></h5>
                                <div class="col-md-6">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 172px; height: 90px;">
                                            <img data-src="holder.js/172x90?auto=yes&text=You have not selected any artwork for the front." alt="front_image" class="img-responsive">
                                        </div>
                                        <div>
                                            <span class="btn btn-default btn-file"><span class="fileinput-new">Select image front</span> <span class="fileinput-exists">Change</span> 
                                                <input type="file" id="files-upload" name="banner" placeholder="Choose banner image" onchange="upload_f()"/>
                                            </span> 
                                            <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a> 
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group product-fields selectbox">
                                        <label for="fields">Color</label>
                                        <div class="dg-poduct-fields ">
                                            <select class="form-control text-center" id="print-front-num">
                                                <option value="<?php echo $print_front ?>" selected><?php echo $print_front ?></option>                                                
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <br class="clear">
                                <div class="">
                                    <span class="font-bold">Describe Your Design Idea (Front)  </span>
                                    <textarea rows="6" class="form-control"></textarea>
                                </div>
                            </div>	
                            <div class="col-md-5 col-md-offset-1 pruduct-quote-back">
                                <h5><b>Back</b></h5>
                                <div class="col-md-6">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 172px; height: 90px;">
                                            <img data-src="holder.js/172x90?auto=yes&text=You have not selected any artwork for the back" alt="back_image" class="img-responsive">
                                        </div>
                                        <div>
                                            <span class="btn btn-default btn-file"><span class="fileinput-new">Select image back</span> <span class="fileinput-exists">Change</span> 
                                                <input type="file" id="" name="banner" placeholder="Choose banner image"/>
                                            </span> 
                                            <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a> 
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group product-fields selectbox">
                                        <label for="fields">Color</label>
                                        <div class="dg-poduct-fields ">
                                            <select class="form-control text-center" id="print-back-num">
                                                <option value="<?php echo $print_back ?>" selected><?php echo $print_back ?></option> 
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <br class="clear">
                                <div class="">
                                    <span class="font-bold">Describe Your Design Idea (Back) </span>
                                    <textarea rows="6" class="form-control"></textarea>
                                </div>
                            </div>
			</div>
                    
			<div class="col-md-12 clearfix">
				<h4><b>Don't Have Artwork? <a href="javascript:;" data-toggle="modal" data-target="#myModal" style="color:#e00000">Click Here</a> to Request An Artist.</b></h4>
<!--				<div class="form-group">
                                    <textarea class="form-control" rows="" cols="" style="height: 150px" placeholder="Describe Your Design Idea"></textarea>
                                </div>-->
                                <!-- Modal -->
                                <div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                                    <div class="modal-dialog modal-lg" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Don't Have Artwork? Request An Artist</h4>
                                                <span>Describe Your Design Idea</span>
                                            </div>
                                            <div class="modal-body clearfix">
                                                
                                                <div class="col-md-12">
                                                    <h4 class="margin-bottom-0">Request a Proof</h4>
                                                    <p class="text-italic">Orders will not print until customer approves the proofs.</p>
                                                    <div class="row">
                                                        <div class="col-md-6">Full name<input class="form-control"></div>
                                                        <div class="col-md-6">Email<input class="form-control"></div>                                                        
                                                    </div>
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-6">Company<input class="form-control"></div>
                                                        <div class="col-md-6">Phone number<input class="form-control"></div>                                                        
                                                    </div>
                                                    <button type="button" class="btn btn-primary btn-product">Submit</button>   
                                                </div>  
                                                                                           
                                            </div>
                                        </div>
                                    </div>
                                </div>
			</div>
			
			<div class="clearfix margin-top-30">
				<div class="col-md-3 price">
					<h4><b>Unit Price:</b><span> $<?php echo $price_unit ?></span></h4>
					<h4><b>Total:</b> <span class="total"> $<?php echo $price_total ?></span></h4>
                                        <input name="total_price" value="<?php echo $price_unit ?>" type="hidden" >
                                        <input name="unit-price-full" value="<?php echo $unit_price_full ?>" type="hidden" >
				</div>
				<div class="col-md-9">
					<p><i>* All Inclusive Pricing, no Other Fees</i> </p>
					<p><i>* Free 10 Day Shipping. Need it sooner? Call us: <a tel="(267) 538-5331" style="color:red">(267) 538-5331</a> </i></p>
					<p><i>* You will receive a proof to review, edit, or approve within 24 hours. An approval is required before we start printing.</i></p>
				</div>
			</div>
			<div class="clearfix">
				<div class="col-md-3">
					<div class=" form-group clearfix">
                                            <input type="hidden" value="<?php echo $product->id; ?>" id="product_id" name="product_id">
                                            <button id="btn-checkout" type="submit" class="btn btn-primary btn-product pull-left" style="">Checkout</button>
                                            
					</div>
				</div>
			</div>
		</div>
		
		</form>
	</div>
	<!-- RELATED PRODUCTS -->
	<div class="row">
		<?php $this->load->view('components/product-quote/sample', array('index'=>$index, 'products'=>$products, 'product_m'=>$product_m)); ?>
	</div>
<script src="<?php echo base_url('assets/js/after_quote.js');?>"></script>
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
var baseURL	= '<?php echo base_url(); ?>';

</script>	

<?php } else { ?>
<div class="row">
	<!-- product not found -->
	<h3><?php echo lang('data_not_found'); ?></h3>
	<p><?php echo lang('categories_default_product_not_found_desc'); ?></p>
</div>
<?php } ?>