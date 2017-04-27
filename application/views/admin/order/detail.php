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
    .float-right{
        float: right;
    }
    .red{color: red;}
    .due_show{
        display: none;
    }
</style>
<div class="row">
<?php if($this->session->flashdata('msg') != ''){?> 
	<div class="col-md-12">
		<div class="alert alert-success">
			<button class="close" data-dismiss="alert"> × </button>
			<i class="fa fa-check-circle"></i>
			<?php echo $this->session->flashdata('msg');?>
		</div>
	</div>
<?php }?>
<?php if($this->session->flashdata('error') != ''){?> 
	<div class="col-md-12">
		<div class="alert alert-danger">
			<button class="close" data-dismiss="alert"> × </button>
			<i class="fa fa-times-circle"></i>
			<?php echo $this->session->flashdata('error');?>
		</div>
	</div>
<?php }?>
</div>
<?php if (count($order)) { ?>
<?php  //var_dump($order); ?>
<div id="order_detail_body">
    <div class="row info-table">
        <div class="col-md-3 col-md-offset-9 button-preview" style="margin-bottom: 10px; padding-right: 0">
                <?php
                    if ($order->status != 'completed'){
                    ?>
                    <button onclick="changeStatus()" type="button" class="btn btn-warning active btn-block">Complete order</button>
                    <?php
                    }
                ?>
                
            </div>
                
                    <?php
                        $this->load->helper('product');
                        $help = new helperProduct();
                        echo $help->product_detail_helper($order);
                    ?>
            
    </div> 
    <br />
    <div class="col-md-7">
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
                    <div class="col-md-4">
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
                            ?>
                                <br clear="all">
                                <div  class="col-md-12 button-preview">
                                    <a class="btn btn-info active btn-block fancybox fancybox.iframe" href="<?php echo site_url().'admin/orders/view/'.$product->id;?>" >Preview Artwork</a>
                                    <!--<button type="button" class="btn btn-info active btn-block"></button>-->
                                </div>
                                <div class="col-md-12 button-preview">
                                    <button type="button" class="btn btn-info active btn-block">Download Artwork</button>
                                </div>
                            <?php
                            }
                            else 
                            {
                                    //$design_option   = json_decode($order->design_option);
                                    $design_images  = isset($design_option->design_images) ? $design_option->design_images : '';
                                    //var_dump($design_images);
                                    if($design_images != ''){
                                          echo '<div class="col-md-6">'
                                        .   '<img src="'.$design_images->front .'" width="200">'
                                        .'</div>';
                                    }
                                  
                            }
                            //var_dump($product);
                            if ($product->proof_file != '')
                                echo '<img width="100%" src="/'.$product->proof_file.'" />';
                        ?>
                                
                        
                    </div>
                    <div class="col-md-8">
                        <p><b>Apparel Style: <?php echo $product->product_name; ?></b></p>
                        <p><b>Apparel color: <?php echo $colors->color_name  ?></b>
                        <span class="bg-colors" style="background-color:#<?php echo $colors->color_hex  ?>"></span>
                        </p>
                        <div>
                            
                            <?php
                            $sizename = '';
                            $sizenum = '';
                            if($product->size != ''){
                                $psize = json_decode($product->size);
                                $value = $psize->value;
                                foreach($psize->name as $key=>$name){
                                    $sizename .= '<td>'.$name.'</td>';
                                    $sizenum .= '<td>'.$value[$key].'</td>';
                                }
                                ?>
                                
                            <?php
                            }
                            else if($product->attributes != '' && $product->attributes != '"[]"')
                            {
                                    $size = json_decode(json_decode($product->attributes), true);
                                    //var_dump($size);
                                    
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
                                            
                            <?php                
                                    }
                            } 
                            ?>
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
                            <a href="/admin/orders/editSize/<?php echo $product->id; ?>" class="btn btn-success  fancybox.iframe size-info">Edit size</a>
                        </div>
                        <div>
                            <?php
                            $designs =  $this->order_m->getDesign($product->id);
                            $design = @json_decode(json_decode($designs->teams));
                            if(is_object($design)){
                                //var_dump($design);
                                $num = $design->number; 
                                $sizes = $design->size; 
                            ?>
                            <button class="btn btn-success" type="button" id="show-teams" >Show teams list</button>
                            <br>
                            <table class="table table-bordered hide" id="tb-teams">
                                <tr>
                                    <th>Name</th>
                                    <th>Number</th>
                                    <th>Size</th>
                                </tr>
                                <?php

                                    foreach ($design->name as $key=>$value){
                                ?>   
                                <tr>
                                    <td><?php echo $value ?></td>
                                    <td><?php          
                                        //var_dump($num);
                                        echo $num->$key; 
                                        ?></td>
                                    <td><?php                                             
                                        $size = explode('::', $sizes->$key); 
                                        echo $size[0]; 
                                        ?></td>                                        
                                </tr>
                                <?php
                                    }
                                ?>


                            </table>       
                        <?php } ?>
                        </div>
                        <div style="display: none;">       
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
                                    <a href="<?php echo site_url('admin/orders/orderPrint/'.$order->id); ?>" type="button" class="btn btn-info active btn-block">Balance
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
    </div>
    <div class="col-md-5">
         <?php
            echo $comment;
        ?>
    </div>
    <br clear="all"/>
    <div class="panel panel-default col-md-5 no-padding">
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
                <div class="text-center">
                    <a href="<?php echo site_url('admin/orders/edit_shipping/'.$order->id); ?>" class="btn btn-success fancybox.iframe ship-info" >Edit Information</a>
                </div>
                
            </div>
        </div>
    </div>
    
    <div class="col-md-7 no-padding-right">  
        <div class="row">
            <div class="col-md-12">
                <a href="/admin/orders/listproduct/<?php echo $order->id; ?>" onclick="" type="button" class="btn btn-success float-right add-items fancybox.iframe"><i class="fa fa-plus" aria-hidden="true"></i>Add</a>
                    <table id="table_order_detail" class="table table-bordered table-hover">
                            <thead>
                                    <tr>
                                            <!--<th class="center" ><?php echo lang('orders_admin_view_design_title'); ?></th>-->
                                        <th class="center" colspan="2" ><?php echo lang('name'); ?></th>					
                                            <th class="center" ><?php echo lang('orders_admin_product_price_title'); ?></th>
                                            <th class="center" ><?php echo lang('orders_admin_product_qty_title'); ?></th>
                                            <th class="center" ><?php echo lang('total'); ?></th>
                                            
                                    </tr>
                            </thead>
                            <tbody>					
                                    <?php 
                                            $total = 0;
                                            $count = 1;
                                            $shipping_price = $order->shipping_price;
                                            $payment_price = 0.0;
                                    ?>
                                    <?php foreach($items as $product){
//                                            var_dump($product);
                                        ?>
                                            <tr class="top-align">
                                                    <!--<td class="center"><a class="fancybox fancybox.iframe" href="<?php echo site_url().'admin/orders/view/'.$product->id;?>" ><?php echo lang('view');?></a></td>-->
                                                <td colspan="2">
                                                            
                                                                <strong><?php echo $product->product_name; ?></strong>
                                                                <a href="/admin/orders/listprice/<?php echo $product->id; ?>" onclick="" class="float-right edit-price fancybox.iframe red"><i class="fa fa-edit" aria-hidden="true"></i></a>
                                                                <br/>
                                                                <small style="color:black">
                                                                    (<?php                                                                     
                                                                    echo date('D, M j H:i A', strtotime($product->created_on));
                                                                    ?>)</small>
                                                            
                                                    </td>
                                                    <td class="right"><?php echo $setting->currency_symbol.number_format($product->product_price, 2);?><a href="/admin/orders/listprice/<?php echo $product->id; ?>" onclick="" class="float-right edit-price fancybox.iframe red"><i class="fa fa-edit" aria-hidden="true"></i></a></td>
                                                    <td class="right"><?php echo $product->quantity;?><a href="/admin/orders/listprice/<?php echo $product->id; ?>" onclick="" class="float-right edit-price fancybox.iframe red"><i class="fa fa-edit" aria-hidden="true"></i></a></td>
                                                    <?php $total_row = $product->quantity*($product->product_price+$product->price_print+$product->price_clipart)+$product->price_attributes;?>
                                                    <td class="right">
                                                        <?php echo $setting->currency_symbol.number_format($total_row, 2);
                                                        if(count($items)>1){
                                                        ?>                                                        
                                                        &nbsp;&nbsp;&nbsp;
                                                        <a title="Remove" style="color: red" onclick='return confirm("Are you sure delete this item!")' href="/admin/orders/deleteitem/<?php echo $order->id.'/'.$product->id ?>"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                        <?php } ?>
                                                    </td>
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
                                                            <br><small><?php echo lang('orders_admin_shipping_method'); ?>: <a href="<?php echo site_url('admin/settings/shipping'); ?>"><strong><?php echo $shipping->title; ?></strong></a>
                                                                </small>
                                                            &nbsp;&nbsp;<a href="/admin/orders/listShipping/<?php echo $order->id; ?>" onclick="" class="float-right edit-payment fancybox.iframe red"><i class="fa fa-edit" aria-hidden="true"></i></a>
                                                            <br><small><?php echo date("D, M j", strtotime("$shipping->ship_day weekdays", strtotime($order->created_on))); ?></small>
                                                            
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
                                                            &nbsp;&nbsp;<a href="/admin/orders/listPayment/<?php echo $order->id; ?>" onclick="" class="float-right edit-payment fancybox.iframe red"><i class="fa fa-edit" aria-hidden="true"></i></a>
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
                                                    <?php } 
                                                          if (!count($discount) && $order->discount != 0) {?>
                                                            <br><small>Discount add by Admin</small>								
                                                    <?php }?>
                                                            &nbsp;&nbsp;<a href="/admin/orders/listDiscount/<?php echo $order->id; ?>" onclick="" class="float-right edit-payment fancybox.iframe red"><i class="fa fa-edit" aria-hidden="true"></i></a>
                                            </td>
                                            <td class="right"><?php echo $setting->currency_symbol.number_format($order->discount, 2) ;?></td>
                                    </tr>

                                    <!-- total -->
                                    <tr>
                                            <?php $total = $total + $shipping_price - $order->discount; ?>
                                        <td colspan="4" class="right"><strong><?php echo lang('orders_admin_total_title');?></strong></td>
                                            <td class="right" colspan="4"><strong><?php echo $setting->currency_symbol.number_format($total, 2);?><strong></td>
                                    </tr>
                                    
                                    <!-- deposit -->
                                    <tr>
                                            <td colspan="4" class="right">
                                                    Deposit
                                                    &nbsp;&nbsp;<a href="/admin/orders/listDeposit/<?php echo $order->id; ?>" onclick="" class="float-right edit-payment fancybox.iframe red"><i class="fa fa-edit" aria-hidden="true"></i></a>
                                                            
                                            </td>
                                            <td class="right"><?php echo $setting->currency_symbol.number_format($order->deposit, 2) ;?></td>
                                    </tr>
                                    
                                    <!-- Balance -->
                                    <tr>
                                            <?php $total = $total - $order->deposit; ?>
                                        <td colspan="4" class="right"><strong>BALANCE</strong></td>
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
                            <label class="col-sm-5 text-right"><?php echo lang('name'); ?>:</label>
                            <span class="col-sm-7 text-left">
                                    <a href="<?php site_url('admin/users/edit/'.$order->user_id); ?>" title="<?php echo $order->name; ?>">
                                            <strong><?php echo $order->name; ?></strong>
                                    </a>
                            </span>
                    </div>

                    <div class="row">
                            <label class="col-sm-5 text-right"><?php echo lang('username'); ?>:</label>
                            <span class="col-sm-7 text-left">
                                    <a href="<?php site_url('admin/users/edit/'.$order->user_id); ?>" title="<?php echo $order->username; ?>">
                                            <strong><?php echo $order->username; ?></strong>
                                    </a>
                            </span>
                    </div>

                    <div class="row">
                            <label class="col-sm-5 text-right"><?php echo lang('email'); ?>:</label>
                            <span class="col-sm-7 text-left"><?php echo $order->email; ?></span>
                    </div>
            </div>
        </div>
    </div>    
    <div class="col-md-6 no-padding-right">
       
    </div>
    <br clear="all">
</div>
<?php } ?>
<script type="text/javascript">	
        jQuery('document').ready(function(){
		jQuery('.tooltips').tooltip();
		jQuery('.fancybox').fancybox();
                jQuery('.add-items, .edit-payment').fancybox({
                    afterClose: function() {
                        location.reload();
                    }
                });
                jQuery('.ship-info, .edit-price, .size-info').fancybox({ 
                    afterClose: function() {
                            location.reload();
                        },
                        width : 400,
                        height: 400
                });
	});
        function load(){
            alert('Test');
        }
	function reload() 
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
        
    function changeStatus(){
        var track = jQuery('#tracking-num').val();    
        window.location.replace("<?php echo site_url('admin/orders/changeStatusOrder/'.$order->id.'/completed'); ?>/"+track);
    }
    $(".toggle-due").click(function() {
        $( "#due-form" ).toggleClass( "due_show" );
     });
    $( "#show-teams" ).click(function() {
        $( '#tb-teams' ).toggleClass( "hide" );
      }); 
	
</script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/comment.js'; ?>"></script>