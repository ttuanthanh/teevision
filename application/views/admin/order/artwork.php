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
                    $attribute = array('class' => 'form-horizontal', 'id' => 'form-artwork-'.$product->id, 'enctype'=>'multipart/form-data');		
                    echo form_open(site_url('admin/artwork/save'), $attribute);
            ?>
            <div class="panel-body" id="panelbody">
                
                <div class="row">
                    <div class="row-content">    
                        <div class="col-md-7">
                            
                            <div class="slider col-md-8">
                                <ul class="bxslider">
                                    <li><img <?php echo isset($artwork->front_file) ? 'src="/'.$artwork->front_file.'"' : '' ?> /></li>
                                    <li><img <?php echo isset($artwork->back_file) ? 'src="/'.$artwork->back_file.'"' : '' ?> /></li>
                                    
                                </ul>
                            </div>
                            <div class="row-content clearfix col-md-4">
                                <label class="btn btn-primary">
                                    <input class="upload-act btn btn-primary" type="file" id="file" name="file[]" placeholder="Choose banner image" multiple />
                                    Custom Upload
                                </label>                                
                                <button class="btn btn-primary" id="file" name="" value="download" />Download</button>
                                <button class="btn btn-dark-grey" id="file" name="" value="download" />Remove</button>
                                <input type="hidden" id="design-image-front<?php echo $product->id ?>" name="front_file" value="<?php echo isset($artwork->front_file) ? $artwork->front_file : '' ?>">
                                <input type="hidden" id="design-image-back<?php echo $product->id ?>" name="back_file" value="<?php echo isset($artwork->back_file) ? $artwork->back_file : '' ?>">
                                <input type="hidden" id="order_id" name="order_id" value="<?php echo $order->id; ?>">
                                <input type="hidden" id="item_id" name="item_id" value="<?php echo $product->id; ?>">
                                <input type="hidden" id="artwork_id" name="artwork_id" value="<?php echo isset($artwork->id) ? $artwork->id : ''; ?>">
                                <br clear="all"/>
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
    $(document).ready(function(){
        $('.bxslider').bxSlider();
    });    
        
        
        
        
        
</script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/artwork.js'; ?>"></script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/comment.js'; ?>"></script>
