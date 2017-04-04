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
<script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_SlideoTransitions = [
              [{b:5500,d:3000,o:-1,r:240,e:{r:2}}],
              [{b:-1,d:1,o:-1,c:{x:51.0,t:-51.0}},{b:0,d:1000,o:1,c:{x:-51.0,t:51.0},e:{o:7,c:{x:7,t:7}}}],
              [{b:-1,d:1,o:-1,sX:9,sY:9},{b:1000,d:1000,o:1,sX:-9,sY:-9,e:{sX:2,sY:2}}],
              [{b:-1,d:1,o:-1,r:-180,sX:9,sY:9},{b:2000,d:1000,o:1,r:180,sX:-9,sY:-9,e:{r:2,sX:2,sY:2}}],
              [{b:-1,d:1,o:-1},{b:3000,d:2000,y:180,o:1,e:{y:16}}],
              [{b:-1,d:1,o:-1,r:-150},{b:7500,d:1600,o:1,r:150,e:{r:3}}],
              [{b:10000,d:2000,x:-379,e:{x:7}}],
              [{b:10000,d:2000,x:-379,e:{x:7}}],
              [{b:-1,d:1,o:-1,r:288,sX:9,sY:9},{b:9100,d:900,x:-1400,y:-660,o:1,r:-288,sX:-9,sY:-9,e:{r:6}},{b:10000,d:1600,x:-200,o:-1,e:{x:16}}]
            ];

            var jssor_1_options = {
              $AutoPlay: 1,
              $SlideDuration: 800,
              $SlideEasing: $Jease$.$OutQuint,
              $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_1_SlideoTransitions
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth - 50;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*responsive code end*/
        });
    </script>
    <style>
        /* jssor slider bullet navigator skin 05 css */
        /*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
        .jssorb05 {
            position: absolute;
        }
        .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
            position: absolute;
            /* size of bullet elment */
            width: 16px;
            height: 16px;
            background: url('<?php echo base_url("assets/images/sjon/b05.png");?>') no-repeat;
            overflow: hidden;
            cursor: pointer;
        }
        .jssorb05 div { background-position: -7px -7px; }
        .jssorb05 div:hover, .jssorb05 .av:hover { background-position: -37px -7px; }
        .jssorb05 .av { background-position: -67px -7px; }
        .jssorb05 .dn, .jssorb05 .dn:hover { background-position: -97px -7px; }

        /* jssor slider arrow navigator skin 22 css */
        /*
        .jssora22l                  (normal)
        .jssora22r                  (normal)
        .jssora22l:hover            (normal mouseover)
        .jssora22r:hover            (normal mouseover)
        .jssora22l.jssora22ldn      (mousedown)
        .jssora22r.jssora22rdn      (mousedown)
        */
        .jssora22l, .jssora22r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 58px;
            cursor: pointer;
            background: url('<?php echo base_url("assets/images/sjon/a22.png");?>') center center no-repeat;
            overflow: hidden;
        }
        .jssora22l { background-position: -10px -31px; }
        .jssora22r { background-position: -70px -31px; }
        .jssora22l:hover { background-position: -130px -31px; }
        .jssora22r:hover { background-position: -190px -31px; }
        .jssora22l.jssora22ldn { background-position: -250px -31px; }
        .jssora22r.jssora22rdn { background-position: -310px -31px; }
    </style>
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
    .comment-content{ max-height: 200px; height: 200px}
    .artwork_ct{ max-width: 1280px; margin: 0 auto;}
</style>


<?php //var_dump($items); exit(); ?>
<div class="artwork_ct">
    
    <?php foreach($items as $product){
     //var_dump($product);
        ?>
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
                            <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:1300px;height:700px;overflow:hidden;visibility:hidden;">
                                <!-- Loading Screen -->
                                <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
                                    <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                    <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                                </div>
                                <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1300px;height:700px;overflow:hidden;">

                                    <div>
                                        <img data-u="image" <?php echo isset($artwork->front_file) ? 'src="/'.$artwork->front_file.'"' : '' ?> />
                                    </div>
                                    <div>
                                        <img data-u="image" <?php echo isset($artwork->front_file) ? 'src="/'.$artwork->back_file.'"' : '' ?> />
                                    </div>
                                </div>
                                <!-- Bullet Navigator -->
                                <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
                                    <!-- bullet navigator item prototype -->
                                    <div data-u="prototype" style="width:16px;height:16px;"></div>
                                </div>
                                <!-- Arrow Navigator -->
                                <span data-u="arrowleft" class="jssora22l" style="top:0px;left:12px;width:40px;height:58px;" data-autocenter="2"></span>
                                <span data-u="arrowright" class="jssora22r" style="top:0px;right:12px;width:40px;height:58px;" data-autocenter="2"></span>
                            </div>
                            <div class="row-content clearfix">
                         
                                <div class="col-md-6 pruduct-quote-front">
                                    <h5><b>Front</b></h5>
                                    <div class="container-fluid clearfix">
                                        <div class="col-md-5">
                                            <div class="form-group product-fields selectbox" style="margin-left: 0;">
                                                <div class="dg-poduct-fields ">
                                                    <select class="form-control text-center" id="print-front-num" name="front_color">
                                                        <?php
                                                            for ($i = 0; $i < 7; $i ++){
                                                                if ($artwork->front_color == $i) $sel = 'selected'; else $sel = '';
                                                                echo '<option value="'.$i.'" '.$sel.'>'.$i.' colors</option>';
                                                            }
                                                        ?>

                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="container-fluid clearfix">
                                        <div class="">
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
                                                <div class="dg-poduct-fields ">
                                                    <select class="form-control text-center" id="print-back-num" name="back_color">
                                                        <?php
                                                            for ($i = 0; $i < 7; $i ++){
                                                                if ($artwork->back_color == $i) $sel = 'selected'; else $sel = '';
                                                                echo '<option value="'.$i.'" '.$sel.'>'.$i.' colors</option>';
                                                            }
                                                        ?>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="container-fluid clearfix">
                                        <div class="">
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
                                <div class="col-md-11">
                                    <table class="">
                                        <tr>
                                            <td class="text-right">Location: </td>
                                            <td style="width: 400px"><input class="form-control" id="artw_location" name="artw_location" value="<?php if(isset($artwork->artw_location)) echo $artwork->artw_location; ?>"></td>
                                        </tr>
                                        <tr>
                                            <td class="text-right">Color: </td>
                                            <td><input class="form-control" id="artw_color" name="artw_color" value="<?php if(isset($artwork->artw_color)) echo $artwork->artw_color; ?>"></td>
                                        </tr>
                                        <tr>
                                            <td class="text-right">Measurement: </td>
                                            <td><input class="form-control" name="artw_measurement" id="artw_measurement" value="<?php if(isset($artwork->artw_measurement)) echo $artwork->artw_measurement; ?>"></td>
                                        </tr>
                                        <tr>
                                            <td class="text-right">Comment: </td>
                                            <td>
                                                <textarea class="form-control" name="order_des" rows="3" cols="" placeholder="Enter order description"><?php 
                                                    if(isset($artwork->order_des)) echo $artwork->order_des;
                                                ?></textarea>
                                            </td>
                                        </tr>
                                    </table>
                                    
                                </div>

                            </div>
                            <div class="row-content clearfix text-right" style="margin-right: 20px">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>

                        </div>
                        <div class="col-md-5">
                            
                            <?php
                                echo $comment;
                                $address	= json_decode($order->address);
                            ?>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                        <i class="fa fa-external-link-square icon-external-link-sign"></i>
                                        P.O Number
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
                                    <p><b>Client name: <?php echo $address->{'First Name'}.' '.$address->{'Last Name'}; ?></b></p>
                                    <p><b>Client email : <?php echo $address->{'Email Address'}; ?></b></p>
                                    <p><b>Client phone: <?php echo $address->{'Telephone'}; ?></b></p>
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
                            </div>
    
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
                    
                </div>	
            </div>
            <?php echo form_close(); ?>  
        </div>
    <?php } ?>
    
    
        
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
