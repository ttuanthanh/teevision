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
<script src="<?php echo base_url('assets/js/jssor.slider-23.0.0.mini.js');?>"></script>
<link href="<?php echo base_url('assets/plugins/bxSlider/jquery.bxslider.css');?>" rel="stylesheet" />
<script src="<?php echo base_url('assets/plugins/bxSlider/jquery.bxslider.js');?>"></script>
<!--<link rel="stylesheet" type="text/css" href="/assets/plugins/CustomFileInputs/css/normalize.css" />-->
<!--<link rel="stylesheet" type="text/css" href="/assets/plugins/CustomFileInputs/css/demo.css" />-->
<link rel="stylesheet" type="text/css" href="/assets/plugins/CustomFileInputs/css/component.css" />
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
                                <?php $proof = isset($proofs[$i]) ? $proofs[$i] : array(); ?>
                                Proof <span class="text-color<?php echo (isset($proof->is_approved) && $proof->is_approved ==1) ? 1 : 0 ?>"><?php echo (isset($proof->is_approved) && $proof->is_approved ==1) ? '(Approved)' : '(Not Approved)'?> </span>
                            </div>
                            <p style="margin: 10px 20px 0; font-weight: bold">Add Proof: </p>
                            <div class="col-md-6 col-md-offset-1 r-border">
                                <?php
                                $attribute = array('class' => 'form-horizontal', 'id' => 'form-proof-'.$product->id, 'enctype'=>'multipart/form-data');		
                                echo form_open(site_url('admin/proof/save'), $attribute);
                                
                                //var_dump($proofs);
                                ?>
<!--                                <div class="fileinput <?php echo (isset($proof->proof_file) && $proof->proof_file != '') ? 'fileinput-exists' : 'fileinput-new' ?> " data-provides="fileinput">
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
                                    <input type="hidden" id="design-image-front<?php echo $product->id; ?>" name="proof_file" value="<?php echo isset($proof->proof_file) ? $proof->proof_file : '' ?>">
                                    <input type="hidden" id="order_id" name="order_id" value="<?php echo $order->id; ?>">
                                    <input type="hidden" id="item_id" name="item_id" value="<?php echo $product->id; ?>">
                                    <input type="hidden" id="proof_id" name="proof_id" value="<?php echo isset($proof->id) ? $proof->id : ''; ?>">

                                </div>-->
                                <div class="slider col-md-9">
                                    <ul class="bxslider">
                                        <?php
                                        if(!isset($product->artworkImage) || $product->artworkImage == "")
                                            echo '<img src="/assets/images/photo.png" />';
                                        else
                                            foreach($product->artworkImage as $image){ ?>
                                                <li>
                                                    <img src="<?php echo $image->url; ?>" />
                                                    <div style="text-align: right;">
                                                        <a target="_blank" href="<?php echo $image->url; ?>" class="fa fa-download" style="margin-right: 30px;padding-left: 10px "> download</a>
                                                        <a class="fa fa-remove" href="/admin/proof/deleteImage/<?php echo $image->id; ?>" style="margin-right: 30px;padding-left: 10px "> remove</a>
                                                    </div>

                                                </li>
                                            <?php
                                            }
                                        ?>

                                    </ul>
                                </div>
                                <div class="row-content clearfix">                                
                                    <br/><br/>
                                    <input type="file" name="file[]" id="file_<?php echo $product->id ?>" class="inputfile inputfile-1" data-multiple-caption="{count} files selected" multiple />
                                    <label for="file_<?php echo $product->id ?>"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17"><path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/></svg> 
                                        <span>Select Upload file &hellip;</span>
                                    </label>
                                    <div style="font-size: 10px; font-style: italic; font-weight: bold">*Can upload multi image</div>
                                    <hr/>
                                    <br />
                                    <p><b>Order description</b></p>
                                    <textarea name="order_des" rows="3" style="width:100%; margin-bottom: 10px" placeholder="Enter order description"><?php 
                                        if(isset($proof->order_des)) echo $proof->order_des;
                                    ?></textarea>
                                    <br />
                                    <div class="row-content clearfix text-right" style="margin: 30 auto;">
                                        <br/><br/>
                                        <button type="submit" class="btn btn-primary" style="width: 70%;">Save</button>
                                    </div>                            
                                    <input type="hidden" id="design-image-front<?php echo $product->id ?>" name="front_file" value="<?php echo isset($artwork->front_file) ? $artwork->front_file : '' ?>">
                                    <input type="hidden" id="design-image-back<?php echo $product->id ?>" name="back_file" value="<?php echo isset($artwork->back_file) ? $artwork->back_file : '' ?>">
                                    <input type="hidden" id="order_id" name="order_id" value="<?php echo $order->id; ?>">
                                    <input type="hidden" id="item_id" name="item_id" value="<?php echo $product->id; ?>">
                                    <input type="hidden" id="proof_id" name="proof_id" value="<?php echo isset($proof->id) ? $proof->id : ''; ?>">
                                    <br clear="all"/>
                                </div>
                                
                                <hr>
                                
                                <?php echo form_close(); ?>
                            </div>
                            <div class="col-md-5 text-center">
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
                                <hr />
                                <h4 class="text-left">Ready to print?</h4>
                                <?php    
                                if(isset($proof->id)){ 
                                    //var_dump($proof);
                                    $attribute = array('class' => 'form-horizontal', 'id' => 'form-proof-'.$product->id);		
                                    echo form_open(site_url('admin/proof/approve/'.$proof->id), $attribute);
                                    $classtxt = 'btn-success';
                                    $bttxt = 'Approve Proof';
                                    $statustxt = 'Removed';
                                    if($proof->is_approved){
                                        $classtxt = 'btn-warning';$bttxt = 'Remove Proof';$statustxt='Approved';                                        
                                    }
                                ?>
                                <button type="submit" class="btn <?php echo $classtxt; ?> "><?php echo $bttxt; ?></button>
                                <input type="hidden" value="<?php echo $proof->is_approved ?>" name="approved">
                                <input type="hidden" value="<?php echo $order->id; ?>" name="order_id">
                                <hr>
                                <div class="font-bold border2 text-color<?php echo $proof->is_approved; ?>">
                                    <?php if(isset($proof->approvedt)){ 
                                        $newDate = DateTime::createFromFormat('Y-m-d H:i:s', $proof->approvedt);
                                    ?>
                                        <h4 class="text-left padding-left20"><?php echo $statustxt; ?>:</h4>
                                        <h4 class="text-center">Date: <?php echo $newDate->format('m-d-Y') ?></h4>
                                        <h4 class="text-center">Time: <?php echo $newDate->format('H:i'); ?></h4>
                                    <?php } ?>   
                                </div>
                                <?php  
                                echo form_close();
                                }
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
        uploadSize['max']  = <?php echo $max_size; ?>;
        uploadSize['min']  = '0';
        //if(typeof Holder !== 'undefined') Holder.run();
        var baseURL	= '<?php echo base_url(); ?>';
        
    $(document).ready(function(){
        $('.bxslider').bxSlider();
        
    }); 
        
        
        
        
</script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/artwork.js'; ?>"></script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/comment.js'; ?>"></script>
<script src="/assets/plugins/CustomFileInputs/js/custom-file-input.js"></script>