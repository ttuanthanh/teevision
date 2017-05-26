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
    .due_show{
        display: none;
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

<div id="order_detail_body">
    <div class="row info-table">
        <div class="col-md-3 col-md-offset-9 button-preview" style="margin-bottom: 10px; padding-right: 0">
               
                
            </div>
                <?php
                        $this->load->helper('product');
                        $help = new helperProduct();
                        echo $help->product_detail_helper($order);
                    ?>
            
    </div> 
    <?php
        $newda = new DateTime($order->ship_date);
        $credate = new DateTime($order->created_on);
        $shipDate = $newda->format('Y-m-d');//DateTime::createFromFormat('Y-m-d', $order->ship_date);
        $today = date("Y-m-d");
    ?>
        
    <div class="panel panel-default col-md-4 no-padding">
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
    <div class="col-md-8 no-padding-right">  
        
        
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-external-link-square icon-external-link-sign"></i>
                Change Ship date
            </div>
            <div class="panel-body" id="panelbody">
<!--                <div class="ship-date clearfix">
                    <div class="col-md-5 text-center">Original date<br> <?php echo date("m-d", strtotime("$order->ship_day weekdays", strtotime($order->created_on))) ?></div>
                    <div class="col-md-2 text-center"><i class="fa fa-arrow-right"></i></div>
                    <div class="col-md-5 text-center">Changed to<br> 
                        <?php 
                                                                    
                        if( isset($shipdate->ship_date) ) 
                        {
                            $newDate = DateTime::createFromFormat('Y-m-d', $shipdate->ship_date);
                            echo $newDate->format('m').'-'.$newDate->format('d');
                            //echo date("m-d", strtotime("$shipdate->ship_day weekdays", strtotime($order->created_on)));
                        }
                        ?>
                    </div>
                </div>
                <hr>
                <div>
                    <?php 
                        $attribute = array('class' => 'form-horizontal', 'id' => 'form-shipdate');	
                        $ship_id = isset($shipdate->id) ? $shipdate->id : '';
                        echo form_open(site_url('admin/shipdate/save/'.$ship_id), $attribute);
                    ?>
                    <div class="col-md-4 text-right">Change to</div>
                    <div class="col-md-4"><input class="form-control" type="date" name="ship_date"></div>
                    <div class="col-md-4">
                        <button type="submit" class="btn btn-default">Save</button>
                        <input class="form-control" type="hidden" name="order_id" value="<?php echo $order->id; ?>">
                    </div>
                    <?php echo form_close();?>
                </div>-->
                <div class="col-md-6 ship-date">
                    <p>Order date: <?php echo $credate->format('D, M j Y H:i:s');?></p>
                    <p>Shipping: <?php echo $shipping->title; ?></p>
                    <p>Date require: <?php echo $shipping->ship_day; ?> business days</p>
                </div>
                <div class="col-md-6 ship-date">
                    <?php 
                        $attribute = array('class' => 'form-horizontal', 'id' => 'form-shipdate');	
                        $ship_id = isset($shipdate->id) ? $shipdate->id : '';
                        echo form_open(site_url('admin/shipdate/save/'.$ship_id), $attribute);
                    ?>
                    Change to<br/>
                    <input class="" width="200" type="date" name="ship_date">                    
                    <button type="submit" class="btn btn-default">Save</button>
                    <input class="form-control" type="hidden" name="order_id" value="<?php echo $order->id; ?>">
                    
                    <?php echo form_close();?>
                </div>
                
            </div>
        </div>
        
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-external-link-square icon-external-link-sign"></i>
                Approve Ship date
            </div>
            <div class="panel-body" id="panelbody">
                <?php    
                if(isset($shipdate->id)){ 
                    //var_dump($proof);
                    $attribute = array('class' => 'form-horizontal', 'id' => 'form-shipdate-app');		
                    echo form_open(site_url('admin/shipdate/approve/'.$shipdate->id), $attribute);
                    $classtxt = 'btn-success';
                    $bttxt = 'Approve Ship date';
                    $statustxt = 'Removed';
                    if($shipdate->is_approved){
                        $classtxt = 'btn-warning';$bttxt = 'Remove Ship date';$statustxt='Approved';                                        
                    }
                ?>
                <div class="col-md-5">
                    
                    <button type="submit" class="btn <?php echo $classtxt; ?> "><?php echo $bttxt; ?></button>
                    <input type="hidden" value="<?php echo $shipdate->is_approved ?>" name="approved">
                    <input type="hidden" value="<?php echo $order->id; ?>" name="order_id">
                </div>
                <div class="col-md-7">
                    <div class="font-bold border2 text-color<?php echo $shipdate->is_approved; ?>">
                    <?php if(isset($shipdate->approvedt)){ 
                        $newDate = DateTime::createFromFormat('Y-m-d H:i:s', $shipdate->approvedt);
                    ?>
                        <h4 class="text-left padding-left20"><?php echo $statustxt; ?>:</h4>
                        <h4 class="text-center">Date: <?php echo $newDate->format('m-d-Y') ?></h4>
                        <h4 class="text-center">Time: <?php echo $newDate->format('H:i'); ?></h4>
                    <?php } ?>   
                </div>
                </div>
                
                
                
                <hr>
                
                <?php  
                echo form_close();
                }
                ?>
                
            </div>
        </div>
    </div>
    <br clear="all">   
       
    
        <?php
            echo $comment;
        ?>
    
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
        
    function changeStatus(){
        var track = jQuery('#tracking-num').val();    
        window.location.replace("<?php echo site_url('admin/orders/changeStatusOrder/'.$order->id.'/completed'); ?>/"+track);
    }
    
</script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/comment.js'; ?>"></script>