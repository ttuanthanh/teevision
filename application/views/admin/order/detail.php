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
                        <button type="button" class="btn btn-success btn-lg btn-block">Preview Artwork</button>
                    </div>
                    <div class="col-md-12 button-preview">
                        <button type="button" class="btn btn-success btn-lg btn-block">Download Artwork</button>
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
                        <div class="col-md-3 button-preview">
                            <button type="button" class="btn btn-default">Default button</button>
                        </div>
                        <div class="col-md-9 button-preview">
                            <button type="button" class="btn btn-default">Default button</button>
                        </div>
                        <div class="col-md-3 button-preview">
                            <button type="button" class="btn btn-default">Default button</button>
                        </div>
                        <div class="col-md-9 button-preview">
                            <button type="button" class="btn btn-default">Default button</button>
                        </div>
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
                
            </div>
        </div>
    </div>
    <div class="col-md-6 no-padding-right">
        <div class="panel panel-default">
            <div class="panel-heading">
                    <i class="fa fa-external-link-square icon-external-link-sign"></i>
                    Billing Detail
            </div>
            <div class="panel-body" id="panelbody">
                <div class="row">

                </div>
            </div>
        </div>
    </div>
    <br clear="all">
   <div class="panel panel-default col-md-6 no-padding">
	<div class="panel-heading">
		<i class="fa fa-external-link-square icon-external-link-sign"></i>
		Information
	</div>
	<div class="panel-body" id="panelbody">
            <div class="row">
                
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