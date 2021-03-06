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

<?php if ($this->session->flashdata('error') !== false) { ?>
<div class="row">
	<div class="col-md-12">
		<div class="alert alert-danger" role="alert"><?php echo $this->session->flashdata('error'); ?></div>
	</div>
</div>
<?php } ?>

<div class="row">
	<div class="col-md-8">
		<div class="row">
			<div class="col-md-3 col-sm-3">
				<div class="statistics-box">
					<div class="statistics-icon">
						<i class="fa fa-newspaper-o fa-2x"></i>
					</div>
					<a class="statistics-info" href="<?php echo site_url('admin/orders/schedules?option_s=order60h'); ?>">
						<span class="number"><?php echo $count_60h; ?></span><span>New Order</span>
					</a>
				</div>
			</div>
			<div class="col-md-3 col-sm-3">
				<div class="statistics-box">
					<div class="statistics-icon">
						<i class="fa fa-shopping-bag fa-2x"></i>
					</div>
					<a class="statistics-info" href="<?php echo site_url('admin/orders/schedules?option_s=today'); ?>">
						<span class="number"><?php echo $count_today;?></span><span>Order today</span>
					</a>
				</div>
			</div>

			<div class="col-md-3 col-sm-3">
				<div class="statistics-box">
					<div class="statistics-icon">
						<i class="fa fa-shopping-cart fa-2x"></i>
					</div>
					<a class="statistics-info" href="<?php echo site_url('admin/orders/schedules'); ?>">
						<span class="number"><?php echo $count_orders;?></span><span>Order schedule</span>
					</a>
				</div>
			</div>

			<div class="col-md-3 col-sm-3">
				<div class="statistics-box">
					<div class="statistics-icon">
						<i class="fa fa-tag fa-2x"></i>
					</div>
					<a class="statistics-info" href="<?php echo site_url('admin/orders/schedules?option_s=online60h'); ?>">
						<span class="number"><?php echo $online_60h;?></span><span>Order online</span>
					</a>
				</div>
			</div>
		</div>
		
		<div class="control-panel-box">
			<div class="control-panel-title">
				<span><?php echo lang('dashboard_control_panel')?></span>
			</div>
                    
                        <div class="col-md-3 col-sm-3">
				<div class="statistics-box">
					<div class="statistics-icon">
						<i class="fa fa-shopping-cart fa-2x"></i>
					</div>
					<a class="statistics-info" href="<?php echo site_url('admin/orders/schedules?option_s=online60h'); ?>">
						<span class="number"><?php echo $online_60h;?></span><span>Order online</span>
					</a>
				</div>
			</div>
                        <div class="col-md-3 col-sm-3">
				<div class="statistics-box">
					<div class="statistics-icon">
						<i class="fa fa-industry fa-2x"></i>
					</div>
					<a class="statistics-info" href="<?php echo site_url('admin/orders/schedules?option_s=garments'); ?>">
						<span class="number"><?php echo $garments;?></span><span>Garments</span>
					</a>
				</div>
			</div>
<!--			<div class="row">
				<div class="col-lg-2 col-md-3 col-sm-2">
					<a class="control-panel-icon" href="<?php echo site_url('admin/users'); ?>">
						<i class="fa fa-users fa-4x"></i><span><?php echo lang('dashboard_users')?></span>
					</a>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-2">
					<a class="control-panel-icon" href="<?php echo site_url('admin/art'); ?>">
						<i class="fa fa-picture-o fa-4x"></i><span><?php echo lang('dashboard_arts')?></span>
					</a>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-2">
					<a class="control-panel-icon" href="<?php echo site_url('admin/products'); ?>">
						<i class="clip-t-shirt fa-4x"></i><span><?php echo lang('dashboard_products')?></span>
					</a>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-2">
					<a class="control-panel-icon" href="<?php echo site_url('admin/products/edit'); ?>">
						<i class="fa fa-plus-square fa-4x"></i><span><?php echo lang('dashboard_add_product')?></span>
					</a>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-2">
					<a class="control-panel-icon" href="<?php echo site_url('admin/orders'); ?>">
						<i class="fa fa-shopping-cart fa-4x"></i><span><?php echo lang('dashboard_orders')?></span>
					</a>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-2">
					<a class="control-panel-icon" href="<?php echo site_url('admin/settings'); ?>">
						<i class="fa fa-gear fa-4x"></i><span><?php echo lang('dashboard_settings')?></span>
					</a>
				</div>
			</div>-->
		</div>
	</div>
	<div class="col-md-4">
		<div class="shop-info">
			<h3>Teevision Printing</h3>
			<span>Online solution for printing</span><br/>
			<span>Website: </span> <a target="_blank" href="http://teevisionprinting.com">http://teevisionprinting.com</a><br/>
			<span>Email: </span> <a href="mailto:info@teevisionprinting.com">info@teevisionprinting.com</a>
		</div>
	</div>
</div>