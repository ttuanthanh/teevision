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
<div class="col-md-12">
	<?php if(count($products) > 0) echo '<h3>'.lang('product_related').'</h3>'; ?>
</div>

<div class="category-products clearfix">
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
		<div class="col-xs-6 col-sm-4 col-md-3 text-center form-group">
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