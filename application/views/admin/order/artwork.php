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
    <?php foreach($items as $product){?>
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
                    $attribute = array('class' => 'form-horizontal', 'id' => 'form-artwork-'.$product->id);		
                    echo form_open(site_url('admin/artwork/save'), $attribute);
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
                            <div class="bold">
                                <?php 
                                    if(isset($artwork->id)){
                                        $newDate = DateTime::createFromFormat('Y-m-d H:i:s', $artwork->modidt);
                                ?>
                                    <h4>Updated:</h4>
                                    <h4 class="text-center">Date: <?php echo $newDate->format('m-d-Y') ?></h4>
                                    <h4 class="text-center">Time: <?php echo $newDate->format('H:i'); ?></h4>
                                    <?php } ?>
                            </div>
                        </div>
                    </div>
                    <div class="row-content clearfix">
                         
                        <div class="col-md-6 pruduct-quote-front">
                            <h5><b>Front</b></h5>
                            <div class="container-fluid clearfix">
                                <div class="col-md-5">
                                    <div class="form-group product-fields selectbox" style="margin-left: 0;">
                                        <label for="fields">Color</label>
                                        <div class="dg-poduct-fields ">
                                            <select class="form-control text-center" id="print-front-num" name="front_color">
                                                <?php
                                                    for ($i = 0; $i < 7; $i ++){
                                                        if ($artwork->front_color == $i) $sel = 'selected'; else $sel = '';
                                                        echo '<option value="'.$i.'" '.$sel.'>'.$i.'</option>';
                                                    }
                                                ?>

                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="container-fluid clearfix">
                                <div class="col-md-8">
                                    <?php //var_dump($artwork->front_file) ?>
                                    <div class="fileinput <?php echo (isset($artwork->front_file) && $artwork->front_file != '') ? 'fileinput-exists' : 'fileinput-new' ?> " data-provides="fileinput">
                                        <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 172px; height: 90px;">
                                            <?php 
                                             $ext = @pathinfo(site_url($artwork->front_file), PATHINFO_EXTENSION);
                                             $isimage = true;
                                             if (in_array($ext, array('psd','pdf','ai')));
                                                $isimage = FALSE;
                                            ?>
                                            <img <?php echo isset($artwork->front_file) ? 'src="/'.$artwork->front_file.'"' : '' ?> data-src="holder.js/172x90?auto=yes&text=<?php echo (isset($artwork->front_file) && !$isimage) ?  'Uploaded file not image. Please download to view!' : 'You have not selected any artwork for the front.' ?>" alt="front_image" class="img-responsive">
                                        </div>
                                        <div>
                                            <span class="btn btn-default btn-file"><span class="fileinput-new">Select image front</span> <span class="fileinput-exists">Change</span> 
                                                <input class="upload-act" type="file" id="files-upload-front<?php echo $product->id ?>" placeholder="Choose banner image" onchange="upload_f('front<?php echo $product->id ?>')"/>
                                            </span> 
                                            <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput" onclick="remove_f('front<?php echo $product->id ?>')">Remove</a> 
                                            <a href="<?php echo isset($artwork->front_file) ? site_url().$artwork->front_file : '' ?>" target="_blank" class="btn btn-default fileinput-exists"  >Download</a> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                            <br class="clear"> 
                        </div>
                        <div class="col-md-6 pruduct-quote-back">
                            <h5><b>Back</b></h5>
                            <div class="container-fluid clearfix">
                                <div class="col-md-5">
                                    <div class="form-group product-fields selectbox" style="margin-left: 0;">
                                        <label for="fields">Color</label>
                                        <div class="dg-poduct-fields ">
                                            <select class="form-control text-center" id="print-back-num" name="back_color">
                                                <?php
                                                    for ($i = 0; $i < 7; $i ++){
                                                        if ($artwork->back_color == $i) $sel = 'selected'; else $sel = '';
                                                        echo '<option value="'.$i.'" '.$sel.'>'.$i.'</option>';
                                                    }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="container-fluid clearfix">
                                <div class="col-md-8">
                                    <div class="fileinput <?php echo (isset($artwork->back_file) && $artwork->back_file != '') ? 'fileinput-exists' : 'fileinput-new' ?> " data-provides="fileinput">
                                        <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 172px; height: 90px;">
                                            <?php 
                                             $ext = @pathinfo(site_url($artwork->back_file), PATHINFO_EXTENSION);
                                             $isimage = true;
                                             if (in_array($ext, array('psd','pdf','ai')));
                                                $isimage = FALSE;
                                            ?>
                                            <img <?php echo isset($artwork->back_file) ? 'src="/'.$artwork->back_file.'"' : '' ?> data-src="holder.js/172x90?auto=yes&text=<?php echo (isset($artwork->back_file) && !$isimage) ? 'Uploaded file not image. Please download to view!' : 'You have not selected any artwork for the front.'  ?>" alt="back_image" class="img-responsive">
                                        </div>
                                        <div>
                                            <span class="btn btn-default btn-file"><span class="fileinput-new">Select image front</span> <span class="fileinput-exists">Change</span> 
                                                <input class="upload-act" type="file" id="files-upload-back<?php echo $product->id ?>" placeholder="Choose banner image" onchange="upload_f('back<?php echo $product->id ?>')"/>
                                            </span> 
                                            <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput" onclick="remove_f('back<?php echo $product->id ?>')">Remove</a> 
                                            <a href="<?php echo isset($artwork->back_file) ? site_url().$artwork->back_file : '' ?>" target="_blank" class="btn btn-default fileinput-exists"  >Download</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <br class="clear"> 
                        </div>
                        <input type="hidden" id="design-image-front<?php echo $product->id ?>" name="front_file" value="<?php echo isset($artwork->front_file) ? $artwork->front_file : '' ?>">
                        <input type="hidden" id="design-image-back<?php echo $product->id ?>" name="back_file" value="<?php echo isset($artwork->back_file) ? $artwork->back_file : '' ?>">
                        <input type="hidden" id="order_id" name="order_id" value="<?php echo $order->id; ?>">
                        <input type="hidden" id="item_id" name="item_id" value="<?php echo $product->id; ?>">
                        <input type="hidden" id="artwork_id" name="artwork_id" value="<?php echo isset($artwork->id) ? $artwork->id : ''; ?>">
                    </div>
                    <div class="row-content clearfix">
                        <div class="col-md-8">
                            <p><b>Order description</b></p>
                            <textarea name="order_des" rows="3" cols="100%" placeholder="Enter order description"><?php 
                                    if(isset($artwork->order_des)) echo $artwork->order_des;
                                ?></textarea>
                        </div>
                        
                    </div>
                    <div class="row-content clearfix text-right" style="margin-right: 20px">
                        <button type="submit" class="btn btn-primary">Save</button>
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
        
        
        
        
        
        
</script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/artwork.js'; ?>"></script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/comment.js'; ?>"></script>
