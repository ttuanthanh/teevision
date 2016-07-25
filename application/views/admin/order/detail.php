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
<style>
    .bg-colors {
        width: 20px;
        height: 20px;
        display: inline-block;
        border: 1px solid #ccc;
        outline: 1px solid #337AB7;
    }
    .top-align td{ vertical-align: top!important; }
</style>
<?php if (count($order)) { ?>

<div id="order_detail_body">
    <div class="row info-table">		
                <table id="sample-table-1" class="table table-bordered table-hover">
                            <thead>
                                    <tr>
                                            <th class="center">Order</th>
                                            <th class="center">Order Date</th>
                                            <th class="center">Name</th>
                                            <th class="center">#</th>
                                            <th class="center">C?</th>
                                            <th class="center">Apparel Order</th>
                                            <th class="center">Ship Date</th>
                                            <th class="center">Due Date</th>
                                            <th class="center">Artwork</th>
                                            <th class="center">Proof</th>
                                            <th class="center">Tracking Number</th>
                                            <th class="center">Balance</th>
                                    </tr>
                            </thead>
                            <tbody>
                                
                                    <tr>
                                        <td class="center">    
                                        <a href="<?php echo site_url('admin/orders/detail/'.$order->id); ?>"><?php echo $order->order_number; ?></a>
                                    </td>
                                    <td class="center"> 
                                      <?php echo $order->created_on; ?>
                                    </td>
                                    <td class="center">   
                                        <?php echo $order->name; ?>
                                    </td>
                                    <td class="center">
                                       12
                                    </td>
                                    <td class="center"> 
                                        <?php if( $order->custom_file=='')
                                                echo '<a><i class="fa fa-check-square-o" style="font-size: 20px;"></i></a>'; ?>
                                    </td>
                                    <td class="center"> 
                                        <?php if( $order->apparel != '') {?>
                                        <a href="<?php echo site_url('admin/orders/garment/'.$order->id); ?>" class="btn btn-success btn-xs tooltips action" type="button" data-original-title="Click to change" data-placement="top" >Yes</a>
                                        <?php } else {?>
                                            <a href="<?php echo site_url('admin/orders/garment/'.$order->id); ?>" class="btn btn-danger btn-xs tooltips action " type="button" data-original-title="Click to change" data-placement="top" >No</a>
                                        <?php } ?>
                                    </td>
                                    <td class="center">      
                                        <?php 
                                        $newDate = DateTime::createFromFormat('Y-m-d H:i:s', $order->ship_date);
                                        echo $newDate->format('M').' '.$newDate->format('d'); 
                                        ?>
                                    </td>
                                    <td class="center">
                                        May 30
                                    </td>
                                    <td class="center">     
                                        <?php
                                            $design_option   = json_decode($order->design_option);
                                            $design_images  = isset($design_option->design_images) ? $design_option->design_images : '';
                                            //var_dump($design_images);
                                            if ( isset($design_images->front) || isset($design_images->back))
                                                echo '<a><i class="fa fa-check-square-o" style="font-size: 20px;"></i></a>';
                                        ?>
                                    </td>
                                    <td class="center">     
                                        <?php if( $order->proof_approved != 0) {?>
                                            <a href="<?php echo site_url('admin/orders/proof_approved/'.$order->id); ?>" class="btn btn-success btn-xs tooltips action" type="button" data-original-title="Click to approve" data-placement="top" rel="unpublish">Yes</a>
                                        <?php } else {?>
                                            <a href="<?php echo site_url('admin/orders/proof_approved/'.$order->id); ?>" class="btn btn-danger btn-xs tooltips action " type="button" data-original-title="Click to approve" data-placement="top" rel="publish">No</a>
                                        <?php } ?>
                                    </td>
                                    <td class="center">  
                                        <b>#1221433</b>
                                    </td>
                                    <td class="center">    
                                        <?php if( $order->balance != 0) {?>
                                            <a href="<?php echo site_url('admin/orders/balance/'.$order->id); ?>" class="btn btn-success btn-xs tooltips action" type="button" data-original-title="Click to change" data-placement="top" rel="unpublish">Yes</a>
                                        <?php } else {?>
                                            <a href="<?php echo site_url('admin/orders/balance/'.$order->id); ?>" class="btn btn-danger btn-xs tooltips action " type="button" data-original-title="Click to change" data-placement="top" rel="publish">No</a>
                                        <?php } ?>
                                    </td>
                                    </tr>
                            </tbody>
                    </table>
    </div> 
    <?php foreach($items as $product){?>
        <div class="panel panel-default">
            <div class="panel-heading">
                    <i class="fa fa-external-link-square icon-external-link-sign"></i>
                    Art Information
            </div>
            <?php
                    $design_option   = json_decode($product->design_option);
                    $colors = $design_option->colors;
            ?>
            <div class="panel-body" id="panelbody">
                <div class="row">
                    <div class="col-md-5">
                        <?php
                            $desi = $this->order_m->getDesign($product->id);
                            if(isset($desi->vectors)){ 
                                $vectors = json_decode($desi->vectors, true);
                                if(is_array($vectors))foreach($vectors as $key=>$vector){
                                    if(count($vector) != 0){ ?>
                                        <div class="col-md-6">
                                            <img src="<?php echo base_url(str_replace('front', $key, $desi->image));?>" width="200">
                                        </div>
                                    <?php   
                                    }
                                    
                                }
                            }
                            else 
                            {
                                    //$design_option   = json_decode($order->design_option);
                                    $design_images  = isset($design_option->design_images) ? $design_option->design_images : '';
                                    echo '<div class="col-md-6">'
                                        .   '<img src="'.$design_images->$key .'" width="200">'
                                        .'</div>';
                                }
                        ?>
                        
                        <br clear="all">
                        <div  class="col-md-12 button-preview">
                            <a class="btn btn-info active btn-block fancybox fancybox.iframe" href="<?php echo site_url().'admin/orders/view/'.$product->id;?>" >Preview Artwork</a>
                            <!--<button type="button" class="btn btn-info active btn-block"></button>-->
                        </div>
                        <div class="col-md-12 button-preview">
                            <button type="button" class="btn btn-info active btn-block">Download Artwork</button>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <p><b>Apparel Style: <?php echo $product->product_name; ?></b></p>
                        <p><b>Apparel color: <?php echo $colors->color_name  ?></b>
                        <span class="bg-colors" style="background-color:#<?php echo $colors->color_hex  ?>"></span>
                        </p>
                        <div>
                            <?php
                            if($product->attributes != '' && $product->attributes != '"[]"')
                            {
                                    $size = json_decode(json_decode($product->attributes), true);
                                    $sizename = '';
                                    $sizenum = '';
                                    if (count($size) > 0)
                                    {
                                            foreach($size as $option) { ?>
                                                    <p>
<!--                                                        <strong><?php echo $option['name']; ?>: </strong><br>-->
                                                            <?php 
                                                                    if (is_string($option['value'])) echo $option['value'];
                                                                    elseif (is_array($option['value']) && count($option['value']))
                                                                    {
                                                                            foreach($option['value'] as $v=>$value)
                                                                            {
                                                                                    if ($option['type'] == 'textlist'){
                                                                                        $sizename .= '<td>'.$v.'</td>';
                                                                                        $sizenum .= '<td>'.$value.'</td>';
                                                                                    }
                                                                                    else
                                                                                            echo $value.'; ';
                                                                            }
                                                                    }
                                                            ?>
                                                    </p>
                                            <?php } ?>
                                    <table id="sample-table-1" class="table table-bordered table-hover">
                                        <thead>
                                                <tr>
                                                    <?php echo $sizename ?>
                                                </tr>
                                        </thead>
                                        <tbody>
                                                <tr>
                                                    <?php echo $sizenum ?>
                                                </tr>
                                        </tbody>
                                    </table>            
                            <?php                
                                    }
                            } 
                            ?>
                            <table id="sample-table-1" class="table table-bordered table-hover">
                                <thead>
                                        <tr>
                                                
                                        </tr>
                                </thead>
                                <tbody>
                                        <tr>
                                              
                                        </tr>
                                </tbody>
                            </table>
                        </div>
                        <div>       
                            <div class="col-md-1"></div>
                            <div class="col-md-10">
                                <div class="col-md-6 button-preview">
                                    <a href="" type="button" class="btn btn-info active btn-block">ArtWork
                                        <?php if( $order->custom_file=='')
                                                echo '<i class="fa fa-check-square-o" style="font-size: 20px;"></i>'; 
                                                else echo '<i class="fa fa-square-o" style="font-size: 20px;"></i>';
                                        
                                        ?>
                                    </a>
                                </div>
                                <div class="col-md-6 button-preview">
                                    <a href="<?php echo site_url('admin/orders/garment/'.$order->id); ?>" type="button" class="btn btn-info active btn-block">Garments                                    
                                    <?php if( $order->apparel!='')
                                                echo '<i class="fa fa-check-square-o" style="font-size: 20px;"></i>'; 
                                                else echo '<i class="fa fa-square-o" style="font-size: 20px;"></i>';
                                        
                                        ?>
                                    </a>
                                </div>
                                <div class="col-md-6 button-preview">
                                    <a href="" type="button" class="btn btn-info active btn-block">Customs names/numbers
                                    
                                    <?php
                                        $design_option   = json_decode($order->design_option);
                                        $design_images  = isset($design_option->design_images) ? $design_option->design_images : '';
                                        //var_dump($design_images);
                                        if ( isset($design_images->front) || isset($design_images->back))
                                            echo '<i class="fa fa-check-square-o" style="font-size: 20px;"></i>';
                                        else echo '<i class="fa fa-square-o" style="font-size: 20px;"></i>';
                                    ?>
                                    </a>
                                </div>
                                <?php //var_dump($order); ?>
                                <div class="col-md-6 button-preview">
                                    <a href="<?php echo site_url('admin/orders/balance/'.$order->id); ?>" type="button" class="btn btn-info active btn-block">Balance
                                    <?php if( $order->balance!=0)
                                                echo '<i class="fa fa-check-square-o" style="font-size: 20px;"></i>'; 
                                                else echo '<i class="fa fa-square-o" style="font-size: 20px;"></i>';
                                        
                                    ?>
                                    </a>
                                </div>
                            </div>  
                            <div class="col-md-2"></div>
                        </div>                    
                    </div>
                </div>	
            </div>

        </div>
    <?php } ?>
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
                            <td>Tran Tuan Thanh</td>
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
        jQuery('document').ready(function(){
		jQuery('.tooltips').tooltip();
		jQuery('.fancybox').fancybox();
	});
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