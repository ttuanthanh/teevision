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
<link href="<?php echo base_url('assets/plugins/jasny-bootstrap/css/jasny-bootstrap.min.css'); ?>" rel="stylesheet"/>
<script src="<?php echo base_url('assets/plugins/jasny-bootstrap/js/jasny-bootstrap.min.js');?>"></script>
<script src="<?php echo base_url('assets/plugins/holder/holder.min.js');?>"></script>
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


<?php //var_dump($items); exit(); ?>
<div class="row info-table">
        <div class="col-md-3 col-md-offset-9 button-preview" style="margin-bottom: 10px; padding-right: 0">
               
                
            </div>
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
                                            <th class="center">Print Ready</th>
                                            <th class="center">Paid</th>
                                    </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $newda = new DateTime($order->ship_date);
                                    $credate = new DateTime($order->created_on);
                                    $shipDate = $newda->format('Y-m-d');//DateTime::createFromFormat('Y-m-d', $order->ship_date);
                                    $today = date("Y-m-d");
                                ?>
                                    <tr class="<?php 
                                        if ($order->status == 'completed') echo 'o-complete';
                                        else if ($shipDate <= $today) echo 'duedate';
                                        ?>">
                                        <td class="center">    
                                        <a href="<?php echo site_url('admin/orders/detail/'.$order->id); ?>"><?php echo $order->order_number; ?></a>
                                    </td>
                                    <td class="center"> 
                                     <?php echo $credate->format('m-d-Y (H:i)'); ?>
                                    </td>
                                    <td class="center">   
                                        <?php echo $order->name; ?>
                                    </td>
                                    <td class="center">
                                       <?php echo $order->total_qty; ?>
                                    </td>
                                    <td class="center"> 
                                        <?php if( $order->custom_file==1)
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
                                        if(isset($order->shipdate))                                        
                                            $newDate = DateTime::createFromFormat('Y-m-d', $order->shipdate);                                        
                                        else
                                            $newDate = DateTime::createFromFormat('Y-m-d H:i:s', $order->ship_date);
                                        //echo $newDate->format('m').'-'.$newDate->format('d'); 
                                        if( $order->ship_approved != 1) {?>
                                            <a href="<?php echo site_url('admin/orders/shipdate/'.$order->id); ?>" class="btn btn-danger btn-xs tooltips action " type="button" data-original-title="Click to change" data-placement="top" ><?php echo $newDate->format('m').'-'.$newDate->format('d') ?></a>
                                        <?php } else {?>
                                            <a href="<?php echo site_url('admin/orders/shipdate/'.$order->id); ?>" class="btn btn-success btn-xs tooltips action" type="button" data-original-title="Click to change" data-placement="top" ><?php echo $newDate->format('m').'-'.$newDate->format('d') ?></a>   
                                        <?php } ?>
                                    </td>
                                    <td class="center">
                                        <?php 
                                        $newDate = DateTime::createFromFormat('Y-m-d H:i:s', $order->ship_date);
                                        echo $newDate->format('m').'-'.$newDate->format('d'); 
                                        ?>
                                    </td>
                                    <td class="center">     
                                        <?php if( $order->artwork != '') {?>
                                        <a href="<?php echo site_url('admin/orders/artwork/'.$order->id); ?>" class="btn btn-success btn-xs tooltips action" type="button" data-original-title="Click to change" data-placement="top" >Yes</a>
                                        <?php } else {?>
                                            <a href="<?php echo site_url('admin/orders/artwork/'.$order->id); ?>" class="btn btn-danger btn-xs tooltips action " type="button" data-original-title="Click to change" data-placement="top" >No</a>
                                        <?php } ?>
                                    </td>
                                    <td class="center">     
                                        <?php if( $order->proof_approved != 0) {?>
                                            <a href="<?php echo site_url('admin/orders/proof/'.$order->id); ?>" class="btn btn-success btn-xs tooltips action" type="button" data-original-title="Click to approve" data-placement="top" rel="unpublish">Yes</a>
                                        <?php } else {?>
                                            <a href="<?php echo site_url('admin/orders/proof/'.$order->id); ?>" class="btn btn-danger btn-xs tooltips action " type="button" data-original-title="Click to approve" data-placement="top" rel="publish">No</a>
                                        <?php } ?>
                                    </td>
                                    <td class="center">  
                                        <?php
                                            if ($order->tracking_num == '')
                                                echo '<input id="tracking-num" type="text" style="width: 110px">';
                                            else
                                                echo '#'.$order->tracking_num;
                                        ?>
                                                
                                        
                                    </td>
                                    <td class="center">    
                                        <?php 
                                            if ($order->apparel > 0 && ($order->ship_approved+$order->artwork+$order->proof_approved) == 3)                                            
                                                echo '<a href="'.site_url('admin/orders/orderPrint/'.$order->id).'" class="btn btn-success btn-xs tooltips action" type="button" data-original-title="Click to change" data-placement="top" rel="unpublish">Print</a>';
                                            else
                                                echo '<a href="javascript:void(0)" class="btn btn-danger btn-xs tooltips action" type="button" data-original-title="Click to change" data-placement="top" rel="unpublish">Print</a>';
                                        ?>
                                    </td>
                                    <td class="center"> 
                                        <?php 
                                            if ($order->balance == 1)                                            
                                                 echo '<img src="'.site_url('assets/images/paid.png').'" height="25px">';
                                            ?>
                                        
                                    </td>
                                    </tr>
                            </tbody>
                    </table>
        <div class="text-center">
            <a target="_blank" href="<?php echo site_url('admin/orders/printorder/'.$order->id) ?>" class="btn btn-success" style="width: 200px">PRINT ORDER</a>
        </div>
    <br clear="all">
    </div>
<div class="">
    <?php foreach($items as $product){?>
        <div class="panel panel-default">
            <div class="panel-heading">
                    <i class="fa fa-external-link-square icon-external-link-sign"></i>
                    Art Information
            </div>
            <?php
                    $design_option   = json_decode($product->design_option);
                    $colors = $design_option->colors;
                    $proof = $product->proof;
                    //var_dump($proof);
                    $attribute = array('class' => 'form-horizontal', 'id' => 'form-artwork-'.$product->id);		
                    echo form_open(site_url('admin/artwork/save'), $attribute);
            ?>
            <div class="panel-body" id="panelbody">
                
                <div class="row">
                    <div class="row-content">   
                        <div class="col-md-6">
                            <div class="art-ordernum text-left">PROOF: <?php echo $order->order_number ?></div><br>
                            <div class="bold">
                                <img class="img-responsive" src="<?php echo isset($proof->proof_file) ? site_url($proof->proof_file) : ''; ?>">
                            </div>
                        </div>
                        <div class="col-md-6">
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
                            

                        </div>
                        
                    </div>
                    
                    <div class="row-content clearfix text-right" style="margin-right: 20px">
                        
                    </div>
                </div>	
            </div>
            <?php echo form_close(); ?>  
        </div>
    <?php } ?>
    
    <?php
        echo $comment;
    ?>
        
    </div>
</div>
<script type="text/javascript">
    var uploadSize = [];
        uploadSize['max']  = '10';
        uploadSize['min']  = '0';
        //if(typeof Holder !== 'undefined') Holder.run();
        var baseURL	= '<?php echo base_url(); ?>';
        
    $( "#show-teams" ).click(function() {
        $( '#tb-teams' ).toggleClass( "hide" );
      });    
        
        
        
        
</script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/artwork.js'; ?>"></script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/comment.js'; ?>"></script>
