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
                 <?php
                        $this->load->helper('product');
                        $help = new helperProduct();
                        echo $help->product_detail_helper($order);
                    ?>
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
    $(".toggle-due").click(function() {
        $( "#due-form" ).toggleClass( "due_show" );
     });    
        
        
        
</script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/artwork.js'; ?>"></script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/comment.js'; ?>"></script>
