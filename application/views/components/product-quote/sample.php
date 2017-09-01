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
<link href="<?php echo base_url('assets/plugins/slick/slick.css'); ?>" rel="stylesheet"/>
<link href="<?php echo base_url('assets/plugins/slick/slick-theme.css'); ?>" rel="stylesheet"/>
<script src="<?php echo base_url('assets/plugins/slick/slick.min.js'); ?>"></script>
<div class="col-md-12">
	<?php if(count($products) > 0) echo '<h3>'.lang('product_quote_sample').'</h3>'; ?>
</div>
<div class="slider multiple-items category-products products-quote-sample clearfix">
<?php
	// product new (10 days)
	$days_new 	= 10;
	$now 			= strtotime('now');

	foreach($products as $product)
	{
		$currency			= $product_m->getCurrency($product->currency_id);
		$product->currency	= $currency;
						
		// check product new	
		$create 		= strtotime($product->created);	
		$days			= round(($now - $create)/(60*60*24));
		
		// check sale
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
?>
	
		<div class="col-xs-4 col-sm-3 col-md-2 text-center form-group">
			<div class="thumbnail layout-product">
				 <!-- product image -->
				 <a href="<?php echo site_url('product/'.$product->slug); ?>" title="<?php echo $product->title; ?>">
				<?php if ($product->image == '') { ?>
					<img src="<?php echo base_url('assets/images/default.png'); ?>" alt="<?php echo $product->title; ?>" class="img-responsive">
				<?php } else { ?>
					<img src="<?php echo base_url($product->image); ?>" alt="<?php echo $product->title; ?>" class="img-responsive">
				<?php } ?>
				</a>
			</div>
			<div class="caption text-left">
				<h5>
					<a href="<?php echo site_url('product/'.$product->slug); ?>" title="<?php echo $product->title; ?>"><?php echo $product->title; ?></a>
				</h5>
			</div>
		</div>
	<?php } ?>

</div>
<style>
/*.slick-arrow {top: 100%;}*/
.slick-prev:before, .slick-next:before {color: #d1d1d1;    font-size: 25px;}
.slick-dots { bottom: -20px;}
</style>
<script>
$(function(){
	$('.products-quote-sample').slick({
		lazyLoad:"ondemand",
	    infinite: true,
	    dots: true,
	    slidesToShow: 4,
	    slidesToScroll: 2,
            autoplay: true,
	    //prevArrow:".products-quote-sample .prev",
		//nextArrow:".products-quote-sample .next",
		slide:"div",
		infinite: true,
		cssEase: 'ease-in-out'
	});
		
});
</script>