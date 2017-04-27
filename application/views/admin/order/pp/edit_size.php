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
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/plugins/bootstrap/css/bootstrap.min.css'); ?>"/>
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/admin/css/view_design.css'); ?>"/>
<script src="<?php echo base_url('assets/js/jquery.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/js/canvg.js'); ?>"></script>
<style>
    .input_size{max-width: 100px; margin-top: 10px;}
    .input_fields_wrap{ padding: 0 50px;}
    .div_btadd{margin-top: 10px;}
</style>
<div class="modal-header">
	<h4 class="modal-title">Edit size</h4>
	<span class="help-block"></span>
</div>
    <div class="modal-body">
        <div class="row">
            <form action="/admin/orders/changeSize" method="post">
                <div class="input_fields_wrap">  
                    <p>Please add size name and quality</p>
                    <?php 
                    if(isset($size->value)){
                        $value = $size->value;
                        foreach ($size->name as $key=>$name){
                            $rm = $key > 0 ? '<a href="#" class="remove_field">Remove</a>' : '';
                            echo '<div>'
                                 .  '<input class="input_size" type="text" placeholder="Size" name="size[name][]" value="'.$name.'"> '
                                 .  ' <input class="input_size" type="text" placeholder="Quantity" name="size[value][]" value="'.$value[$key].'"> '.$rm
                                 .'</div>';
                        }                    
                    }
                    else{
                        echo '<div><input class="input_size" type="text" placeholder="Size" name="size[name][]"> <input class="input_size" type="text" placeholder="Quantity" name="size[value][]"></div>';
                    }
                    ?>
                    <!--</div>-->
                    
                </div>
                <div style="text-align: center" class="div_btadd">
                    <a class="btn btn-default add_field_button">
                        Add more
                    </a>
                </div>
                
                <div class="text-right">
                    <input type="hidden" name="order_id" value="<?php echo $order_id; ?>" >
                    <input type="hidden" name="item_id" value="<?php echo $item_id; ?>" >
                    <input class="btn btn-success float-right" type="submit" value="Submit" >
                </div>
            </form>
        </div>
    </div>
<div class="modal-footer">
	<button type="button" class="btn btn-default" onclick="parent.jQuery.fancybox.close();"><?php echo lang('close');?></button>
</div>
<script type="text/javascript">
$(document).ready(function() {
    var max_fields      = 10; //maximum input boxes allowed
    var wrapper         = $(".input_fields_wrap"); //Fields wrapper
    var add_button      = $(".add_field_button"); //Add button ID
    
    var x = 1; //initlal text box count
    $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
        if(x < max_fields){ //max input box allowed
            x++; //text box increment
            $(wrapper).append('<div><input class="input_size" type="text" placeholder="Size" name="size[name][]"/> <input class="input_size" type="text" placeholder="Quantity" name="size[value][]"> <a href="#" class="remove_field">Remove</a></div>'); //add input box
        }
    });
    
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
    })
});
</script>