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
                    $attribute = array('class' => 'form-horizontal', 'id' => 'form-orders');		
                    echo form_open(site_url('admin/artwork/save'), $attribute);
            ?>
            <div class="panel-body" id="panelbody">
                
                <div class="row">
                    
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
                          
                        <div class="col-md-6 pruduct-quote-front">
                            <h5><b>Front</b></h5>
                            <div class="col-md-6">
                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                    <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 172px; height: 90px;">
                                        <img data-src="holder.js/172x90?auto=yes&text=You have not selected any artwork for the front." alt="front_image" class="img-responsive">
                                    </div>
                                    <div>
                                        <span class="btn btn-default btn-file"><span class="fileinput-new">Select image front</span> <span class="fileinput-exists">Change</span> 
                                            <input class="upload-act" type="file" id="files-upload-front" placeholder="Choose banner image" onchange="upload_f('front')"/>
                                        </span> 
                                        <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput" onclick="return remove_f('front')">Remove</a> 
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group product-fields selectbox">
                                    <label for="fields">Color</label>
                                    <div class="dg-poduct-fields ">
                                        <select class="form-control text-center" id="print-front-num" name="print-front-num">
                                            <option value="0" selected>0</option>
                                            <!--<option value="<?php echo $print_front ?>" selected><?php echo $print_front ?></option>-->                                                
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <br class="clear"> 
                        </div>
                        <div class="col-md-6 pruduct-quote-back">
                            <h5><b>Front</b></h5>
                            <div class="col-md-6">
                                <div class="fileinput fileinput-exists" data-provides="fileinput">
                                    <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 172px; height: 90px;">
                                        <img data-src="holder.js/172x90?http://tshirt.local/media/assets/uploaded/2016/07/20-113_thumb.jpg" src="http://tshirt.local/media/assets/uploaded/2016/07/20-113_thumb.jpg" alt="back_image" class="img-responsive">
                                    </div>
                                    <div>
                                        <span class="btn btn-default btn-file"><span class="fileinput-new">Select image front</span> <span class="fileinput-exists">Change</span> 
                                            <input class="upload-act" type="file" id="files-upload-front" placeholder="Choose banner image" onchange="upload_f('back')"/>
                                        </span> 
                                        <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput" onclick="return remove_f('back')">Remove</a> 
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group product-fields selectbox">
                                    <label for="fields">Color</label>
                                    <div class="dg-poduct-fields ">
                                        <select class="form-control text-center" id="print-front-num" name="print-front-num">
                                            <option value="0" selected>0</option>
                                            <!--<option value="<?php echo $print_front ?>" selected><?php echo $print_front ?></option>-->                                                
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <br class="clear"> 
                        </div>
                        <input type="hidden" id="design-image-front" name="design[images][front]" value="">
                        <input type="hidden" id="design-image-back" name="design[images][back]" value="">
                    </div>
                    <div class="col-md-5">
                    </div>
                </div>	
            </div>
            <?php echo form_close(); ?>  
        </div>
    <?php } ?>
</div>
<script type="text/javascript">
    var uploadSize = [];
        uploadSize['max']  = '10';
        uploadSize['min']  = '0';
        //if(typeof Holder !== 'undefined') Holder.run();
        var baseURL	= '<?php echo base_url(); ?>';
</script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/artwork.js'; ?>"></script>
