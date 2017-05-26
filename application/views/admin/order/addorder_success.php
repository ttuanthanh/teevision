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
<div class="modal-header">
	<h4 class="modal-title">Finished</h4>
	<span class="help-block"></span>
</div>

	<div class="modal-body">
            <div class="row">
                <h1>Order edit successful</h1>       
                <p>Close this screen to refresh page</p>
                
            </div>
	</div>
<div class="modal-footer">
	<button type="button" class="btn btn-default" onclick="parent.jQuery.fancybox.close();"><?php echo lang('close');?></button>
        <?php
        if(isset($status) && $status == "new"){
        ?>
        <a href="/admin/orders/detail/<?php echo $orderid ?>" target="_parent" class="btn btn-default">To order detail</a>
        <input value="<?php echo base_url('/admin/orders/detail/'.$orderid) ?>" id="url" type="hidden">
        <?php
        }
        ?>
</div>
<script type="text/javascript">

    jQuery('document').ready(function(){
        parent.$.fancybox.close();
        window.top.location.href = "http://google.com";
    });
</script>
<!--<a href="http://www.domain.com/page/" target="_parent"> Close and go to page</a>-->