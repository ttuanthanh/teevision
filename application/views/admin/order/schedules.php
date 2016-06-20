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
<script type="text/javascript">
    jQuery(document).on('click change', 'input[name="check_all"]', function() {
        var checkboxes = $(this).closest('table').find(':checkbox').not($(this));
        if ($(this).prop('checked')) {
            checkboxes.prop('checked', true);
        } else {
            checkboxes.prop('checked', false);
        }
    });
</script>

<div class="row">
<?php if($this->session->flashdata('msg') != ''){?> 
	<div class="col-md-12">
		<div class="alert alert-success">
			<button class="close" data-dismiss="alert"> × </button>
			<i class="fa fa-check-circle"></i>
			<?php echo $this->session->flashdata('msg');?>
		</div>
	</div>
<?php }?>
<?php if($this->session->flashdata('error') != ''){?> 
	<div class="col-md-12">
		<div class="alert alert-danger">
			<button class="close" data-dismiss="alert"> × </button>
			<i class="fa fa-times-circle"></i>
			<?php echo $this->session->flashdata('error');?>
		</div>
	</div>
<?php }?>
</div>
<div class="panel panel-default">
	<div class="panel-heading">
		<i class="fa fa-external-link-square icon-external-link-sign"></i>
		<?php echo lang('orders_admin_orders_title'); ?>           
	</div>
	<?php
	$attribute = array('class' => 'form-orders', 'id' => 'form-orders');		
	echo form_open(site_url('admin/orders'), $attribute);
	?>
	<div class="panel-body" id="panelbody">
		<div class="row">
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-2">
						<?php $option_s = array(''=>  lang('all'), '5'=>5, '10'=>10, '15'=>15, '20'=>20, '25'=>25, '100'=>100); ?>
						<?php echo form_dropdown('per_page', $option_s, $per_page, 'class="form-control" id="per_page"'); ?>
					</div>
					<div class="col-md-4">
						<?php 
							$search = array('name' => 'search', 'id' => 'search', 'class' => 'form-control datepicker', 'placeholder' => lang('orders_admin_search_place'), 'autocomplete'=>'off', 'value'=>$search);
							echo form_input($search);
						?>
					</div>					
					<div class="col-md-2">
						<button type="submit" class="btn btn-primary"><?php echo lang('search');?></button>
					</div>
				</div>
			</div>
			
			<div class="col-md-6">
				<p style="text-align:right;">
					<a id="btn-delete" class="btn btn-bricky tooltips" title="<?php echo lang('delete'); ?>" href="javascript:void(0);" > 
						<i class="fa fa-trash-o"></i>
					</a>
				</p>
			</div>
		</div>
		<table id="sample-table-1" class="table table-bordered table-hover">
			<thead>
				<tr>
                                        <th class="center"></th>
					<th class="center">Order</th>
					<th class="center">Order Date</th>
					<th class="center">Name</th>
					<th class="center">#</th>
					<th class="center">C?</th>
					<th class="center">Apparel Order</th>
					<th class="center">Ship Date</th>
                                        <th class="center">Due Date</th>
                                        <th class="center">Artwork</th>
                                        <th class="center">Proof</th>
                                        <th class="center">Tracking Number</th>
                                        <th class="center">Balance</th>
				</tr>
			</thead>
			<tbody>
                            <?php //var_dump($orders[0]); ?>
                            <?php foreach($orders as $order) { ?>
				<tr>
                                    <td class="center">    
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCr6Vm-aDHk3qstdsbedE0QNc55b02tjYb6rM2TvlJ6uv13KHD" width="20" height="20"/>
                                    </td>
                                    <td class="center">    
                                        <a href="<?php echo site_url('admin/orders/detail/'.$order->id); ?>"><?php echo $order->order_number; ?></a>
                                    </td>
                                    <td class="center"> 
                                      <?php echo $order->created_on; ?>
                                    </td>
                                    <td class="center">   
                                        <?php echo $order->name; ?>
                                    </td>
                                    <td class="center">
                                       12
                                    </td>
                                    <td class="center"> 
                                        <?php if( $order->custom_file=='')
                                                echo '<a><i class="fa fa-check-square-o" style="font-size: 20px;"></i></a>'; ?>
                                    </td>
                                    <td class="center"> 
                                        <?php if( $order->apparel != '') {?>
                                            <a class="btn btn-success btn-xs tooltips action" type="button" data-original-title="Click to change" data-placement="top" rel="unpublish" data-id="1704" data-flag="1">Yes</a>
                                        <?php } else {?>
                                            <a class="btn btn-danger btn-xs tooltips action " type="button" data-original-title="Click to change" data-placement="top" rel="publish" data-id="2649" data-flag="0">No</a>
                                        <?php } ?>
                                    </td>
                                    <td class="center">      
                                        <?php 
                                        $newDate = DateTime::createFromFormat('Y-m-d H:i:s', $order->ship_date);
                                        echo $newDate->format('M').' '.$newDate->format('d'); 
                                        ?>
                                    </td>
                                    <td class="center">
                                        May 30
                                    </td>
                                    <td class="center">     
                                        <?php
                                            $design_option   = json_decode($order->design_option);
                                            $design_images  = isset($design_option->design_images) ? $design_option->design_images : '';
                                            //var_dump($design_images);
                                            if ( isset($design_images->front) || isset($design_images->back))
                                                echo '<a><i class="fa fa-check-square-o" style="font-size: 20px;"></i></a>';
                                        ?>
                                    </td>
                                    <td class="center">     
                                        <?php if( $order->proof_approved != 0) {?>
                                            <a class="btn btn-success btn-xs tooltips action" type="button" data-original-title="Click to approve" data-placement="top" rel="unpublish" data-id="1704" data-flag="1">Yes</a>
                                        <?php } else {?>
                                            <a class="btn btn-danger btn-xs tooltips action " type="button" data-original-title="Click to approve" data-placement="top" rel="publish" data-id="2649" data-flag="0">No</a>
                                        <?php } ?>
                                    </td>
                                    <td class="center">  
                                        <b>#1221433</b>
                                    </td>
                                    <td class="center">    
                                        Yes
                                    </td>
				</tr>				
			<?php } ?>
			</tbody>
		</table>
		<div class="pull-right">
			<?php echo $links; ?>
		</div>
	</div>
	<?php echo form_close(); ?>        
</div>   

<script type="text/javascript">
	jQuery('.pagination').css('margin', '0px');
	jQuery('.tooltips').tooltip();
	
	if(jQuery('#option_s').val() == 'date')
	{
		jQuery('.datepicker').datepicker({
			setDate: '2015-02-07',
			dateFormat: 'yy-mm-dd'
		});		
	}
		
	jQuery('#option_s').change(function(){
		var check = jQuery(this).val();
		if(check == 'date')
		{
			jQuery('.datepicker').datepicker();
			jQuery('.datepicker').datepicker("option", "dateFormat", "yy-mm-dd");
		}else
		{
			jQuery('.datepicker').datepicker('destroy');
		}
	});
	
	jQuery('#btn-delete').click(function(){
		if(jQuery('.checkb').is(':checked')){
			var cf = confirm("<?php echo lang('orders_admin_confirm_delete');?>");
			if(cf)
				jQuery('#form-orders').attr('action', '<?php echo site_url('admin/orders/delete');?>').submit();
		}else{
			alert('<?php echo lang('orders_admin_error_not_checbox_msg');?>');
		}
	});
	
	jQuery('#per_page').change(function(){
		jQuery('#form-orders').submit();
	});
	
</script>