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
	<h4 class="modal-title">Select deposit price</h4>
	<span class="help-block"></span>
</div>

	<div class="modal-body">
            <div class="row">
                <form action="/admin/orders/changedeposit" method="post">
                <table id="sample-table-1" class="table table-bordered">
                
                   
                    <tr>
                        <td>
                            <strong>Deposit</strong>
                        </td>
                        <td>
                            $<input type="text" name="deposit" >
                        </td>
                    </tr>
                  
                </table>
                <div class="text-right">
                    <input type="hidden" name="orderid" value="<?php echo $orderid; ?>" >
                    <input class="btn btn-success float-right" type="submit" value="Submit" >
                </div>
                </form>
            </div>
	</div>
<div class="modal-footer">
	<button type="button" class="btn btn-default" onclick="parent.jQuery.fancybox.close();"><?php echo lang('close');?></button>
</div>
<script type="text/javascript">

</script>