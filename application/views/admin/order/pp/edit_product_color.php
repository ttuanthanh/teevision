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
    .float-right{
        float: right;
    }

</style>
<div class="modal-header">
	<h4 class="modal-title">Change color of shirt</h4>
	<span class="help-block"></span>
</div>

	<div class="modal-body">
            <div class="row">
                <form action="/admin/customorders/orderproductcolor/<?php echo $itemId;?>" method="post">                
                    <input type="hidden" name="itemId" value="<?php echo $itemId; ?>" >
                    <label for="hex">Hex (without #)</label>
                    <input class="form-control" type="text" id="hex" name="hex" value="" >
                    <label for="name">Color name</label>
                    <input class="form-control" type="text" id="name" name="name" value="" >
                    <br />
                    <input class="btn btn-success float-right" type="submit" value="Submit" onclick="return validate()">
                </form>
                <?php
                /*
                foreach ($colors as $color){
                ?>
                    <div class="col-sm-4 " >
                        <div class="color-content" data-title="<?php echo $color->title?>" data-hex="<?php echo $color->hex?>">
                            <?php echo $color->title; ?>
                            <span class="tooltips" style="margin: 5px auto; display: block; height: 25px; width: 50px; background: #<?php echo $color->hex; ?>; border: 1px solid #CCCCCC;" data-original-title="#<?php echo $color->hex; ?>"></span>
                        </div>
                        
                    </div>
                <?php }
                 */ ?>
                 
                
            </div>
	</div>
<div class="modal-footer">               
                
	<button type="button" class="btn btn-default" onclick="parent.jQuery.fancybox.close();"><?php echo lang('close');?></button>
        
</div>
<script type="text/javascript">
    $(function () {
        $('.color-content').click(function (e) {
            e.preventDefault();
            $('.color-content').not(this).removeClass('clicked');    
            $(this).toggleClass('clicked');
            $('#hex').val($(this).data('hex'));
            $('#name').val($(this).data('title'));
        });
    });

    function validate()
    {
        if( $('#hex').val() == "")
        {
            alert('Please select color');
            return false
        }
        return true; 
    }
</script>