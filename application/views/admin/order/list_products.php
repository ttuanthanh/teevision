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
	<h4 class="modal-title">Select product</h4>
	<span class="help-block"></span>
</div>

	<div class="modal-body">
            <div class="row">
                
                <?php
                foreach ($products as $product){?>
                <a href="/admin/orders/addorder/<?php echo $product->id ?>/<?php echo $orderid ?>"><?php echo $product->title ?></a>
                <br />
                <?php
                }
//                var_dump($products)
                ?>
            </div>
	</div>
<div class="modal-footer">
        <a href="/admin/orders/addorderdefault/<?php echo $orderid ?>" class="btn btn-default">Add custom product</a>
	<button type="button" class="btn btn-default" onclick="parent.jQuery.fancybox.close();"><?php echo lang('close');?></button>
</div>
<script type="text/javascript">

</script>