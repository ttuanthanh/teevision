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
	<h4 class="modal-title">Edit shipping information</h4>
</div>
        
	<div class="modal-body">
		<div class="row">
                    <?php
                    $attribute = array('class' => 'form-horizontal', 'id' => 'form-editaddress');
                    echo form_open(site_url('admin/orders/newAddress/'.$order), $attribute);
                    ?>
                    <table class="table table-reflow">
                        <tbody>
                            <?php if ($address !== false) { $i =0;?>										
                                <?php foreach ($address as $key => $value) { ?>
                                <tr class="row">
                                        <th>
                                            <?php echo $key; ?>:
                                            <input type="hidden" value="<?php echo $key; ?>" name="data[<?php echo $i++; ?>]" >
                                        </th>
                                        <td>
                                            <?php //echo $value; ?>
                                            <input type="text" value="<?php echo $value; ?>" name="data[<?php echo $i++; ?>]" >
                                        </td>
                                </tr>
                                <?php } ?>
                            <?php } ?>
                                <tr class="row text-right">
                                    <td colspan="2">
                                        <button class="btn btn-success">Save</button>
                                        <button type="button" class="btn btn-default" onclick="parent.jQuery.fancybox.close();"><?php echo lang('close');?></button>
                                    </td>
                                </tr>
                        </tbody>
                    </table>
                    <input type="hidden" name="order_id" value="<?php echo $order ?>" >
                    <?php echo form_close();?>
                </div>
	</div>
<div class="modal-footer">
	
</div>
<script type="text/javascript">
function downloadPNG(url)
{
	$('body').css('opacity', '0.2');
	$.ajax({
		url: url + '.svg',
		 dataType: "text",
	}).done(function(svg) {
		if ($('#output-download').length == 0)
			$('body').append('<div id="output-download" style="position: fixed;left: -999px;">'+svg+'</div>');
		else
			$('#output-download').html(svg);
				
		setTimeout(function(){
			var image = new Image();
			image.src = 'data:image/svg+xml;base64,' + window.btoa($('#output-download').html());
			var canvas = document.createElement('canvas');
			canvas.width = image.width;
			canvas.height = image.height;
			var context = canvas.getContext('2d');			
			//context.drawSvg(svg, 0, 0);
			context.drawImage(image, 0, 0);

			var a = document.createElement('a');
			a.download = "print.png";
			a.href = canvas.toDataURL('image/png');
			document.body.appendChild(a);
			a.click();
			$('body').css('opacity', 1);
		}, 2000);
	});
}
</script>