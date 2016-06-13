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
<link rel="stylesheet" type="text/css" href="<?php echo site_url().'assets/plugins/jquery-fancybox/jquery.fancybox.css'; ?>" media="screen" />
<script type="text/javascript" src="<?php echo site_url().'assets/plugins/jquery-fancybox/jquery.fancybox.js'; ?>"></script>
<style>
    .info-table{
        margin-left: 2px;
        margin-right: 3px;
    }
    .button-preview{
        margin-top: 10px;
    }
    .no-padding-right{
        padding-right: 0px;
    }
</style>
<?php if (count($order)) { ?>

<div id="order_detail_body">
    <div class="row info-table">		
                <table id="sample-table-1" class="table table-bordered table-hover">
                            <thead>
                                    <tr>
                                            <th class="center">Number</th>
                                            <th class="center">Name</th>
                                            <th class="center">Order Date</th>
                                            <th class="center">Ship date</th>
                                            <th class="center">Due Date</th>
                                            <th class="center">Garments</th>
                                            <th class="center">Artwork</th>
                                            <th class="center">C?</th>
                                            <th class="center">Tracking Number</th>
                                            <th class="center">Balance</th>
                                    </tr>
                            </thead>
                            <tbody>
                                <?php if(count($order)) { ?>
                                    <tr>
                                        <td class="center">    
                                            <a href="<?php echo site_url('admin/orders/detail/'.$order->id); ?>"><?php echo $order->order_number; ?></a>
                                        </td>                                    
                                        <td class="center">   
                                            <?php echo $order->name; ?>
                                        </td>
                                        <td class="center"> 
                                          <?php echo $order->created_on; ?>
                                        </td>
                                        <td class="center">      
                                            May 26
                                        </td>
                                        <td class="center">
                                            May 30
                                        </td>
                                        <td class="center">     
                                            Yes
                                        </td>
                                        <td class="center">     
                                            Yes
                                        </td>
                                        <td class="center">      
                                            No
                                        </td>
                                        <td class="center">  
                                            <input value="" />
                                        </td>
                                        <td class="center">    
                                            Yes
                                        </td>
                                    </tr>				
                            <?php } ?>
                            </tbody>
                    </table>
    </div> 
    <div class="panel panel-default">
	<div class="panel-heading">
		<i class="fa fa-external-link-square icon-external-link-sign"></i>
		Art Information
	</div>
	<div class="panel-body" id="panelbody">
            <div class="row">
                <div class="col-md-5">
                    <div class="col-md-6">
                        <img src="" width="170" height="220">
                    </div>
                    <div class="col-md-6">
                         <img src="" width="170" height="220">
                    </div>
                    <br clear="all">
                    <div  class="col-md-12 button-preview">
                        <button type="button" class="btn btn-info active btn-block">Preview Artwork</button>
                    </div>
                    <div class="col-md-12 button-preview">
                        <button type="button" class="btn btn-info active btn-block">Download Artwork</button>
                    </div>
                </div>
                <div class="col-md-7">
                    <p><b>Apparel Style: gi gi do</b></p>
                    <p><b>Apparel Style: gi gi do</b></p>
                    <div>
                        <table id="sample-table-1" class="table table-bordered table-hover">
                            <thead>
                                    <tr>
                                            <th class="center">S</th>
                                            <th class="center">M</th>
                                            <th class="center">L</th>
                                            <th class="center">XL</th>
                                            <th class="center">XXL</th>
                                            <th class="center">XXXL</th>
                                    </tr>
                            </thead>
                            <tbody>
                                    <tr>
                                        <td class="center">    
                                            0
                                        </td>                                    
                                        <td class="center">   
                                           12
                                        </td>
                                        <td class="center"> 
                                          1
                                        </td>
                                        <td class="center">      
                                           5
                                        </td>
                                        <td class="center">
                                           6 
                                        </td>    
                                        <td class="center">
                                           6 
                                        </td>   
                                    </tr>
                            </tbody>
                    </table>
                    </div>
                    <div>       
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <div class="col-md-6 button-preview">
                                <button type="button" class="btn btn-info active btn-block">Default button 1</button>
                            </div>
                            <div class="col-md-6 button-preview">
                                <button type="button" class="btn btn-info active btn-block">Default button 2</button>
                            </div>
                            <div class="col-md-6 button-preview">
                                <button type="button" class="btn btn-info active btn-block">Default button 3</button>
                            </div>
                            <div class="col-md-6 button-preview">
                                <button type="button" class="btn btn-info active btn-block">Default button 4</button>
                            </div>
                        </div>  
                        <div class="col-md-2"></div>
                    </div>                    
                </div>
            </div>	
        </div>
	
    </div>
    <div class="panel panel-default col-md-6 no-padding">
	<div class="panel-heading">
		<i class="fa fa-external-link-square icon-external-link-sign"></i>
		Shipping Information
	</div>
	<div class="panel-body" id="panelbody">
            <div class="row">
                <table class="table table-reflow">
                    <tbody>
                        <?php if ($address !== false) { ?>										
                            <?php foreach ($address as $key => $value) { ?>
                            <tr class="row">
                                    <th><?php echo $key; ?>:</th>
                                    <td><?php echo $value; ?></td>
                            </tr>
                            <?php } ?>
                        <?php } ?>
                    </tbody>
                  </table>
            </div>
        </div>
    </div>
    <div class="col-md-6 no-padding-right">  
        <div class="row">
            <div class="col-md-12">
                    <table id="table_order_detail" class="table table-bordered table-hover">
                            <thead>
                                    <tr>
                                            <th class="center" style="width: 7%;"><?php echo lang('orders_admin_view_design_title'); ?></th>
                                            <th class="center" style="width: 18%;"><?php echo lang('name'); ?></th>					
                                            <th class="center" style="width: 7%;"><?php echo lang('orders_admin_product_price_title'); ?></th>
                                            <th class="center" style="width: 7%;"><?php echo lang('orders_admin_product_qty_title'); ?></th>
                                            <th class="center"  style="width: 10%;"><?php echo lang('total'); ?></th>
                                    </tr>
                            </thead>
                            <tbody>					
                                    <?php 
                                            $total = 0;
                                            $count = 1;
                                            $shipping_price = $order->shipping_price;
                                            $payment_price = 0.0;
                                    ?>
                                    <?php foreach($items as $product){?>
                                            <tr class="top-align">
                                                    <td class="center"><a class="fancybox fancybox.iframe" href="<?php echo site_url().'admin/orders/view/'.$product->id;?>" ><?php echo lang('view');?></a></td>
                                                    <td>
                                                            <a href="<?php echo site_url('admin/products/edit/'.$product->product_id); ?>" title="<?php echo $product->product_name; ?>">
                                                                    <strong><?php echo $product->product_name; ?></strong>
                                                            </a>
                                                    </td>
                                                    <td class="right"><?php echo $setting->currency_symbol.number_format($product->product_price, 2);?></td>
                                                    <td class="right"><?php echo $product->quantity;?></td>
                                                    <?php $total_row = $product->quantity*($product->product_price+$product->price_print+$product->price_clipart)+$product->price_attributes;?>
                                                    <td class="right"><?php echo $setting->currency_symbol.number_format($total_row, 2);?></td>
                                            </tr>
                                            <?php 
                                                    $total = $total+$total_row;
                                                    $count++;
                                            ?>
                                    <?php } ?>
                                    <!-- shipping -->
                                    <tr>
                                            <td colspan="4" class="right">
                                                    <?php echo lang('orders_admin_shipment_fee_title');?>

                                                    <?php if (count($shipping)) { ?>								
                                                            <br><small><?php echo lang('orders_admin_shipping_method'); ?>: <a href="<?php echo site_url('admin/settings/shipping'); ?>"><strong><?php echo $shipping->title; ?></strong></a></small>
                                                            <br><small><?php echo $shipping->description; ?></small>
                                                    <?php } ?>

                                            </td>
                                            <td class="right"><?php echo $setting->currency_symbol.number_format($shipping_price, 2);?></td>
                                    </tr>

                                    <!-- payment -->
                                    <tr>
                                            <td colspan="4" class="right">
                                                    <?php echo lang('orders_admin_payment_fee_title');?>

                                                    <?php if (count($payment)) { ?>								
                                                            <br><small><?php echo lang('orders_admin_payment_method'); ?>: <a href="<?php echo site_url('admin/settings/payment'); ?>"><strong><?php echo $payment->title; ?></strong></a></small>
                                                            <br><small><?php echo $payment->description; ?></small>
                                                    <?php } ?>
                                            </td>
                                            <td class="right"><?php echo $setting->currency_symbol.number_format($payment_price, 2) ;?></td>
                                    </tr>

                                    <!-- discount -->
                                    <tr>
                                            <td colspan="4" class="right">
                                                    <?php echo lang('orders_admin_discount');?>

                                                    <?php if (count($discount)) { ?>								
                                                            <br><small><?php echo $discount->name; ?>: <a href="<?php echo site_url('admin/coupon/edit/'.$discount->id); ?>"><strong><?php echo $discount->code; ?></strong></a></small>								
                                                    <?php } ?>
                                            </td>
                                            <td class="right"><?php echo $setting->currency_symbol.number_format($order->discount, 2) ;?></td>
                                    </tr>

                                    <!-- total -->
                                    <tr>
                                            <?php $total = $total + $shipping_price - $order->discount; ?>
                                            <td colspan="4" class="right"><?php echo lang('orders_admin_total_title');?></td>
                                            <td class="right" colspan="4"><strong><?php echo $setting->currency_symbol.number_format($total, 2);?><strong></td>
                                    </tr>
                            </tbody>
                    </table>
            </div>
        </div>
    </div>
    <br clear="all">   
    <div class="col-md-6 no-padding">
        <div class="panel panel-default">
            <div class="panel-heading">
                    <i class="fa fa-external-link-square icon-external-link-sign"></i>
                    Billing Detail
            </div>
            <div class="panel-body" id="panelbody">
                <div class="row">
                    <table class="table table-reflow">
                        <tbody>
                          <tr>     
                            <th>Client Name:</th>
                            <td>Tran Thi My Trang</td>
                          </tr>
                          <tr>
                            <th>Shipping Adress:</th>
                            <td>793/35/15 Tran Xuan Soan, P.Tan quy q.7</td>
                          </tr>
                          <tr>
                           <th>Telephone:</th>
                            <td>263261973027</td>
                          </tr>
                        </tbody>
                      </table>
                </div>
            </div>
        </div>
    </div>    
    <div class="col-md-6 no-padding-right">
        <div class="panel panel-default">
            <div class="panel-heading">
                    <i class="fa fa-external-link-square icon-external-link-sign"></i>
                    Comment
            </div>
            <div class="panel-body" id="panelbody">
                <div class="row">

                </div>
            </div>
        </div>
    </div>
    <br clear="all">
</div>
<?php } ?>
<script type="text/javascript">	
	function load() 
	{
        jQuery('#order_detail_body').block({
            overlayCSS: {
                backgroundColor: '#fff'
            },
            message: '<img src="<?php echo base_url('assets/images/loading.gif');?>" /> <?php echo lang('load_text'); ?>',
            css: {
                border: 'none',
                color: '#333',
                background: 'none'
            }
        });
    }
	
</script>