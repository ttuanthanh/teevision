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
<script>(function(e,t,n){var r=e.querySelectorAll("html")[0];r.className=r.className.replace(/(^|\s)no-js(\s|$)/,"$1js$2")})(document,window,0);</script>

<?php //var_dump($items); exit(); ?>
<div class="artwork_ct">
    <div class="row info-table">
        <div class="col-md-3 col-md-offset-9 button-preview" style="margin-bottom: 10px; padding-right: 0">
               
                
            </div>
                <?php
                        $this->load->helper('product');
                        $help = new helperProduct();
                        echo $help->product_detail_helper($order);
                    ?>
            
    </div> 
    <?php foreach($items as $product){
//     var_dump($product);
        ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                    <i class="fa fa-external-link-square icon-external-link-sign"></i>
                    Art Information
            </div>
            
            <div class="panel-body" id="panelbody">
                
                <div class="row">
                    <div class="row-content">    
                    <?php
                        $design_option   = json_decode($product->design_option);
                        $colors = $design_option->colors;
                        $artwork = $product->artwork;
                        //var_dump($artwork);
                        $attribute = array('class' => 'form-horizontal', 'id' => 'form-artwork-'.$product->id, 'enctype'=>'multipart/form-data');		
                        echo form_open(site_url('admin/artwork/save'), $attribute);
                    ?>
                        <div class="col-md-6">
                            
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
                                                    <a target="_blank" href="<?php echo str_replace(array('_thumb.jpg', '_thumb.png'), '', $image->url); ?>" class="fa fa-download" style="margin-right: 30px;padding-left: 10px "> download</a>
                                                    <a class="fa fa-remove" href="/admin/artwork/deleteImage/<?php echo $image->id; ?>" style="margin-right: 30px;padding-left: 10px "> remove</a>
                                                </div>

                                            </li>
                                        <?php
                                        }
                                    ?>
                                    
                                </ul>
                            </div>
                            <div class="row-content clearfix col-md-3">                                
                                <br/><br/>
                                <input type="file" name="file[]" id="file_<?php echo $product->id ?>" class="inputfile inputfile-1" data-multiple-caption="{count} files selected"  onchange="javascript:this.form.submit();" multiple />
                                <label for="file_<?php echo $product->id ?>"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17"><path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/></svg> 
                                    <span>Upload&hellip;</span>
                                </label>
                                <div style="font-size: 10px; font-style: italic; font-weight: bold">*Can upload multi image</div>
				<div class="row-content clearfix text-right" style="margin: 30 auto;">
                                    <br/><br/>
                                    <button type="submit" class="btn btn-primary" style="width: 100%;">Save</button>
                                </div>                            
                                <input type="hidden" id="design-image-front<?php echo $product->id ?>" name="front_file" value="<?php echo isset($artwork->front_file) ? $artwork->front_file : '' ?>">
                                <input type="hidden" id="design-image-back<?php echo $product->id ?>" name="back_file" value="<?php echo isset($artwork->back_file) ? $artwork->back_file : '' ?>">
                                <input type="hidden" id="order_id" name="order_id" value="<?php echo $order->id; ?>">
                                <input type="hidden" id="item_id" name="item_id" value="<?php echo $product->id; ?>">
                                <input type="hidden" id="artwork_id" name="artwork_id" value="<?php echo isset($artwork->id) ? $artwork->id : ''; ?>">
                                <br clear="all"/>
                            </div>
                            <br clear="all"/>
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
                                        $address	= json_decode($order->address);
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
                            
                            

                        </div>
                        <?php echo form_close(); ?>  
                        <div class="col-md-6">
                            
                            <?php
                                echo $comment;
                            ?>
                            
                            <div class="panel panel-default">
                                
                                <div class="panel-heading">
                                        <i class="fa fa-external-link-square icon-external-link-sign"></i>
                                        Artwork schedule
                                </div>
                                
                                <div class="panel-body" id="panelbody">
                                    <div class="col-md-10 ship-date">
                                        <?php //var_dump($product->artworkSchedule); ?>
                                        <form class='form-horizontal' action="/admin/customorders/saveartworkschedule/<?php echo $order->id ?>" method="post">
                                            <div class="form-group">
                                                <label for="art_date">Due date</label>
                                                <input class="form-control" width="200" type="date" name="art_date" id="art_date" value="<?php echo isset($product->artworkSchedule->art_date) ?  $product->artworkSchedule->art_date : ''?>">
                                            </div>
                                            <div class="form-group">
                                                <label for="art_vector">Type</label>
                                                <select class="form-control" id="art_vector" name="art_type">
                                                    <option value="vector"  <?php echo (isset($product->artworkSchedule->art_type) && $product->artworkSchedule->art_type == "vector") ?  'selected' : ''?>>vector</option>
                                                    <option value="edit" <?php echo (isset($product->artworkSchedule->art_type) && $product->artworkSchedule->art_type == "edit") ?  'selected' : ''?>>edit</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="art_rush">
                                                    <input class="form-control" type="checkbox" name="art_rush" id="art_rush" <?php echo (isset($product->artworkSchedule->art_rush) && $product->artworkSchedule->art_rush == 1) ?  'checked' : ''?>>Rush</label>
                                            </div>
                                            <div class="form-group">
                                                <textArea placeholder="Enter your comment..." rows="4" class="form-control" id="art_comment" name="art_comment"><?php echo isset($product->artworkSchedule->art_comment) ?  $product->artworkSchedule->art_comment : ''?></textArea>
                                            </div>
                                            <?php $artwork = $product->artwork; ?>
                                            <input type="hidden" id="artwork_id" name="artwork_id" value="<?php echo isset($artwork->id) ? $artwork->id : ''; ?>">
                                            <input type="hidden" id="order_id" name="order_id" value="<?php echo $order->id; ?>">
                                            <input type="hidden" id="schedule_id" name="schedule_id" value="<?php echo isset($product->artworkSchedule->id) ? $product->artworkSchedule->id : ''; ?>">
                                            <button type="submit" class="btn btn-primary" onclick="return check_artwork(<?php echo isset($artwork->id) ? $artwork->id : ''; ?>)">Save</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!--
                            <div class="panel panel-default">
                                
                                <div class="panel-heading">
                                        <i class="fa fa-external-link-square icon-external-link-sign"></i>
                                        Edit artwork date
                                </div>
                                
                                <div class="panel-body" id="panelbody">
                                    <div class="col-md-10 ship-date">
                                        <form class='form-horizontal' action="/admin/customorders/changeartworkdate/<?php echo $order->id ?>" method="post">
                                        
                                            Change to<br/>
                                            <input class="" width="200" type="date" name="art_date">                    
                                            <button type="submit" class="btn btn-primary">Save</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                        <i class="fa fa-external-link-square icon-external-link-sign"></i>
                                        Approve artwork?
                                </div>
                               <div class="panel-body text-center" id="panelbody">
                                <?php    
                                if($order->artwork >= 1){ 
                                    //var_dump($order->artwork);
                                    $attribute = array('class' => 'form-horizontal', 'id' => 'form-proof-'.$product->id);		
                                    echo form_open(site_url('admin/artwork/approve'), $attribute);
                                    $classtxt = 'btn-success';
                                    $bttxt = 'Approve artwork';
                                    $statustxt = 'Removed';
                                    if($order->artwork == 2){
                                        $classtxt = 'btn-warning';$bttxt = 'Remove artwork approved';$statustxt='Approved';                                        
                                    }
                                ?>
                                <button type="submit" class="btn <?php echo $classtxt; ?> "><?php echo $bttxt; ?></button>
                                <input type="hidden" value="<?php echo $order->artwork ?>" name="approved">
                                <input type="hidden" value="<?php echo $order->id; ?>" name="order_id">
                                
                                <?php  
                                echo form_close();
                                }
                                ?>
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
                            <div class="art-ordernum">Artwork info</div>
                            <div class="row-content clearfix">
                                <br />
                                <div class="col-md-11 art_detail<?php echo $product->id; ?>">
                                <?php
                                $current = 0;
                                if (isset($artwork->order_des) && $artwork->order_des != ''){                                    
                                    $details = json_decode($artwork->order_des);
                                    foreach($details as $key=>$value){
                                        //var_dump($value);
                                    ?>
                                        <table class="tbde<?php echo $key?>">
                                            <tr>
                                                <td class="text-right">Location: </td>
                                                <td style="width: 400px"><input class="form-control" id="artw_location" name="d[<?php echo $key ?>][artw_location]" value="<?php  echo $value->artw_location ?>"></td>
                                            </tr>
                                            <tr>
                                                <td class="text-right">Color: </td>
                                                <td><input class="form-control" id="artw_color" name="d[<?php echo $key ?>][artw_color]" value="<?php echo $value->artw_color ?>"></td>
                                            </tr>
                                            <tr>
                                                <td class="text-right">Measurement: </td>
                                                <td><input class="form-control" name="d[<?php echo $key ?>][artw_measurement]" value="<?php echo $value->artw_measurement; ?>"></td>
                                            </tr>
                                            <tr>
                                                <td class="text-right">Comment: </td>
                                                <td>
                                                    <textarea class="form-control" name="d[<?php echo $key ?>][order_description]" rows="3" cols="" placeholder="Enter order description"><?php echo $value->order_description; ?></textarea>
                                                </td>
                                            </tr>
                                        </table>
                                    <?php 
                                    $current = $key;
                                    }
                                }else{
                                    ?>
                                    <table class="tbde0">
                                        <tr>
                                            <td class="text-right">Location: </td>
                                            <td style="width: 400px"><input class="form-control" id="artw_location" name="d[0][artw_location]" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="text-right">Color: </td>
                                            <td><input class="form-control" id="artw_color" name="d[0][artw_color]" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="text-right">Measurement: </td>
                                            <td><input class="form-control" name="d[0][artw_measurement]" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="text-right">Comment: </td>
                                            <td>
                                                <textarea class="form-control" name="d[0][order_description]" rows="3" cols="" placeholder="Enter order description"></textarea>
                                            </td>
                                        </tr>
                                    </table>
                                <?php }?>
                                </div>

                            </div>
                            
                            <div class="row-content clearfix text-right" style="margin-right: 20px">
                                
                                <button type="button" onclick="removedt(<?php echo $product->id; ?>)" class="btn btn-primary remove-detail<?php echo $product->id;?>" style="<?php if($current == 0 ) echo 'display: none'?>">remove</button>
                                <button type="button" onclick="addmore(<?php echo $product->id; ?>)" class="btn btn-primary">add more</button>
                            -->
                            </div>
                        </div>
                    </div>
                    
                </div>	
            </div>
            
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
    current = <?php echo $current; ?>;
    
    $(document).ready(function(){
        $('.bxslider').bxSlider();
        
    });    
      
    
    function addmore(container){
        current = $('.art_detail'+container+' table').length;
        //current++;
        tr = '<tr>'+
                '<td class="text-right">Location: </td>'+
                '<td style="width: 400px"><input class="form-control" name="d['+current+'][artw_location]" value=""></td>'+
            '</tr>'+
            '<tr>'+
                '<td class="text-right">Color: </td>'+
                '<td><input class="form-control"  name="d['+current+'][artw_color]" value=""></td>'+
            '</tr>'+
            '<tr>'+
                '<td class="text-right">Measurement: </td>'+
                '<td><input class="form-control" name="d['+current+'][artw_measurement]"  value=""></td>'+
            '</tr>'+
            '<tr>'+
                '<td class="text-right">Comment: </td>'+
                '<td>'+
                    '<textarea class="form-control" name="d['+current+'][order_description]" rows="3" cols="" placeholder="Enter order description"></textarea>'+
                '</td>'+
            '</tr>';
        html = '<br /><table class="tbde'+current+'">'+tr+'</table>';
        html +='';        
        $('.art_detail'+container).append(html);
        if(current > 0){
            $('.remove-detail'+container).show();
        }
    }
    
//    $(document).on("click", ".remove-detail",function(e){
//        $('.tbde'+current).remove();
//        current--;      
//        if(current == 0){
//            $('.remove-detail').hide();
//        }
//    });
    function removedt(container){
        current = $('.art_detail'+container+' table').length -1;        
        $('.art_detail'+container).find('.tbde'+(current--)).remove();              
        if(current == 0){
            $('.remove-detail'+container).hide();
        }
    }
        
    function check_artwork(artId='')
    {
        if(artId == '')
        {   
            alert('You should add image before copy to artwork schedule!');
            return false;
        }
        return true;
    }
        
        
</script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/artwork.js'; ?>"></script>
<script type="text/javascript" src="<?php echo site_url().'assets/admin/js/comment.js'; ?>"></script>
<script src="/assets/plugins/CustomFileInputs/js/custom-file-input.js"></script>
