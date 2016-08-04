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
<div class="">
    <?php 
    $i = 0;
    foreach($items as $product){?>
        <div class="panel panel-default">
            <div class="panel-heading">
                    <i class="fa fa-external-link-square icon-external-link-sign"></i>
                    Art Information
            </div>
            <?php
                    $design_option   = json_decode($product->design_option);
                    $colors = $design_option->colors;
                    $artwork = $product->artwork;
                    //var_dump($artwork);
                    
            ?>
            <div class="panel-body" id="panelbody">
                
                <div class="row">
                    <div class="row-content">    
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

                            </div>

                        </div>
                        <div class="col-md-5">
                            
                            <div class="art-ordernum">Order: <?php echo $order->order_number ?></div>
                            <br><br>
                            <div class="row-content clearfix">                         
                                <div class="col-md-6 pruduct-quote-front">
                                    <h5><b>Front</b></h5>
                                    <div class="container-fluid clearfix">
                                        <div class="col-md-10 col-md-offset-1">
                                            <div class="form-group product-fields selectbox" style="margin-left: 0;">
                                                
                                                <div class="dg-poduct-fields ">
                                                    <select class="form-control text-center" id="print-front-num" name="front_color">
                                                        <?php
                                                            echo '<option value="'.$artwork->front_color.'" selected>'.$artwork->front_color.'</option>';                                                            
                                                        ?>

                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br class="clear"> 
                                </div>
                                <div class="col-md-6 pruduct-quote-back">
                                    <h5><b>Back</b></h5>
                                    <div class="container-fluid clearfix">
                                        <div class="col-md-10 col-md-offset-1">
                                            <div class="form-group product-fields selectbox" style="margin-left: 0;">
                                                
                                                <div class="dg-poduct-fields ">
                                                    <select class="form-control text-center" id="print-back-num" name="back_color">
                                                        <?php
                                                            echo '<option value="'.$artwork->back_color.'" selected>'.$artwork->back_color.'</option>';
                                                        ?>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>    
                                    <br class="clear"> 
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <br clear="both">
                    <div class="row-content clearfix" style="">
                        
                        <div class="panel panel-default">
                            <div class="panel-heading font-bold" >
                                Proof <span class="color">(Not Approved)</span>
                            </div>
                            <p style="margin: 10px 20px 0; font-weight: bold">Add Proof: </p>
                            <div class="col-md-6 col-md-offset-1 r-border">
                                <?php
                                $attribute = array('class' => 'form-horizontal', 'id' => 'form-proof-'.$product->id);		
                                echo form_open(site_url('admin/proof/save'), $attribute);
                                $proof = isset($proofs[$i]) ? $proofs[$i] : array();
                                //var_dump($proofs);
                                ?>
                                <div class="fileinput <?php echo (isset($proof->proof_file) && $proof->proof_file != '') ? 'fileinput-exists' : 'fileinput-new' ?> " data-provides="fileinput">
                                    <table>
                                        <tr>
                                            <td>
                                                <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 172px; height: 90px;">
                                                    <img <?php echo isset($proof->proof_file) ? 'src="/'.$proof->proof_file.'"' : '' ?> data-src="holder.js/172x90?auto=yes&text=You have not selected any Proof." alt="back_image" class="img-responsive">
                                                </div>
                                            </td>
                                            <td>
                                                <div style="margin-left: 20px">
                                                    <span class="btn btn-default btn-file"><span class="fileinput-new">Select proof</span> <span class="fileinput-exists">Change</span> 
                                                        <input class="upload-act" type="file" id="files-upload-front<?php echo $product->id; ?>" placeholder="Choose proof file" onchange="upload_f('front<?php echo $product->id; ?>')"/>
                                                    </span> 
                                                    <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput" onclick="remove_f('front<?php echo $product->id; ?>')">Remove</a> 
                                                    <a href="<?php echo isset($proof->proof_file) ? site_url().$proof->proof_file : '' ?>" target="_blank" class="btn btn-default fileinput-exists"  >Download</a>
                                                </div>
                                            </td>
                                        </tr>

                                    </table>
                                    <input type="hidden" id="design-image-front<?php echo $product->id; ?>" name="proof_file" value="<?php echo isset($artwork->front_file) ? $artwork->front_file : '' ?>">
                                    <input type="hidden" id="order_id" name="order_id" value="<?php echo $order->id; ?>">
                                    <input type="hidden" id="item_id" name="item_id" value="<?php echo $product->id; ?>">
                                    <input type="hidden" id="proof_id" name="proof_id" value="<?php echo isset($proof->id) ? $proof->id : ''; ?>">

                                </div>
                                
                                <hr>
                                <div class="bold">
                                    <?php 
                                        if(isset($proof->id)){
                                            $newDate = DateTime::createFromFormat('Y-m-d H:i:s', $proof->proof_update);
                                    ?>
                                        <h4>Updated:</h4>
                                        <h4 class="text-center">Date: <?php echo $newDate->format('m-d-Y') ?></h4>
                                        <h4 class="text-center">Time: <?php echo $newDate->format('H:i'); ?></h4>
                                        <?php } ?>
                                </div>
                                <div class="clearfix text-right" style="margin-right: 20px">                        
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                                <?php echo form_close(); ?>
                            </div>
                            <div class="col-md-5 text-center">
                                
                                <h4>Ready to print?</h4>
                                <?php    
                                if(isset($proof->id)){ 
                                    $attribute = array('class' => 'form-horizontal', 'id' => 'form-proof-'.$product->id);		
                                    echo form_open(site_url('admin/proof/approve/'.$proof->id), $attribute);
                                ?>
                                <button type="submit" class="btn btn-success">Approve Proof</button>
                                <input type="hidden" value="<?php echo $proof->is_approved ?>" name="approved">
                                <input type="hidden" value="<?php echo $order->id; ?>" name="order_id">
                                <hr>
                                <div class="bold">
                                    <?php if(isset($proof->approvedt)){ 
                                        $newDate = DateTime::createFromFormat('Y-m-d H:i:s', $proof->approvedt);
                                    ?>
                                        <h4>Updated:</h4>
                                        <h4 class="text-center">Date: <?php echo $newDate->format('m-d-Y') ?></h4>
                                        <h4 class="text-center">Time: <?php echo $newDate->format('H:i'); ?></h4>
                                    <?php } ?>   
                                </div>
                                <?php } 
                                echo form_close();
                                ?>
                            </div>
                            <br clear="both">
                            <div class="col-md-12 clearfix text-right" style="min-height: 10px;">                        
                                
                            </div>
                            
                            
                        </div>
                        
                    </div>
                    
                </div>	
            </div>
             
        </div>
    <?php $i++; } ?>
    
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
        
        
        
        
        
        
</script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/artwork.js'; ?>"></script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/comment.js'; ?>"></script>
