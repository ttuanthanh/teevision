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
		Garment           
	</div>
	<?php
	$attribute = array('class' => 'form-horizontal', 'id' => 'form-orders');		
	echo form_open(site_url('admin/garment/save'), $attribute);
	?>
	<div class="panel-body" id="panelbody">
		<div class="row">			
                        <div class="col-sm-6">

                                <div class="form-group">
                                        <label class="control-label col-md-3">Order<span class="symbol"></span></label>
                                        <div class="col-md-8">                                            
                                            <input class="form-control" type="text" placeholder="order" value="<?php echo $order->order_number; ?>" name="gar[order_number]" readonly="readonly">
                                            <input value="<?php echo $order->id; ?>" name="gar[order_id]" type="hidden">
                                        </div>
                                </div>

                                <div class="form-group">
                                        <label class="control-label col-md-3">Distributor<span class="symbol"></span></label>
                                        <div class="col-md-8">
                                            <?php //var_dump($garment); ?>
                                            <input class="form-control" type="text"  placeholder="" value="" name="gar[distributor]">
                                                
                                        </div>
                                </div>

                                <div class="form-group">
                                        <label class="control-label col-md-3">Invoice #<span class="symbol"></span></label>
                                        <div class="col-md-8">
                                            <input class="form-control" type="text"  data-type="text" placeholder="" value="" name="gar[invoice]">
                                        </div>
                                </div>
                            
                                <div class="form-group">
                                        <label class="control-label col-md-3">Date ordered<span class="symbol"></span></label>
                                        <div class="col-md-8">
                                            <input class="form-control" type="date"  data-type="" placeholder="" value="" name="gar[date_order]">
                                        </div>
                                </div>

                                
                        </div>
                        <div class="col-sm-6">

                                <div class="form-group">
                                        <label class="control-label col-md-3">ETA<span class="symbol"></span></label>
                                        <div class="col-md-8">                                            
                                            <input class="form-control" type="date" placeholder="order" value="" name="gar[eta]">
                                        </div>
                                </div>

                                <div class="form-group">
                                        <label class="control-label col-md-3">Tracking number<span class="symbol"></span></label>
                                        <div class="col-md-8">
                                                <input class="form-control" type="text"  placeholder="" value="" name="gar[tracking_number]">
                                                
                                        </div>
                                </div>

                                <div class="form-group">
                                        <label class="control-label col-md-3">Cost<span class="symbol"></span></label>
                                        <div class="col-md-8">
                                            <input class="form-control" type="text"  data-type="number" placeholder="" value="" name="gar[cost]">
                                        </div>
                                </div>
                            
                                <div class="form-group">
                                        <label class="control-label col-md-3">MISC. FEES<span class="symbol"></span></label>
                                        <div class="col-md-8">
                                            <input class="form-control" type="text"  data-type="" placeholder="" value="" name="gar[misc_fees]">
                                        </div>
                                </div>

                                
                        </div>
                        
			
			
		</div>
                <div class="col-sm-12">
                        <p class="pull-right">
                                <button type="submit" class="btn btn-primary" >Add new</button>                                
                                <a href="<?php echo site_url('admin/orders/schedules')?>" class="btn btn-danger" ><?php echo lang('cancel'); ?></a>
                        </p>
                </div>
                <?php //var_dump($garments); ?>
		<table id="sample-table-1" class="table table-bordered table-hover">
			<thead>
				<tr>
                                        
					<th class="center">Order</th>
					<th class="center">Distributor</th>
					<th class="center">Invoice #</th>
					<th class="center">Date ordered</th>
					<th class="center">ETA</th>
					<th class="center">Tracking nuber</th>
					<th class="center">Cost</th>
                                        <th class="center">MISC.FEES</th>
                                        <th class="center"></th>
				</tr>
			</thead>
			<tbody>
                            <?php //var_dump($orders); ?>
                            <?php
                                $cost = 0;
                                foreach($garments as $gar) { ?>
				<tr>
                                    <td class="center">    
                                        <a href="<?php echo site_url('admin/orders/detail/'.$gar->order_id); ?>"><?php echo $gar->order_number; ?></a>
                                    </td>
                                    <td class="center"> 
                                      <?php echo $gar->distributor; ?>
                                    </td>
                                    <td class="center">   
                                         <?php echo $gar->invoice; ?>
                                    </td>
                                    <td class="center">
                                        <?php echo $gar->date_order; ?>
                                    </td>
                                    <td class="center"> 
                                        <?php echo $gar->eta; ?>
                                    </td>
                                    <td class="center">  
                                        <?php echo $gar->tracking_number; ?>
                                    </td>
                                    <td class="center">      
                                        <?php echo $gar->cost; $cost += $gar->cost;?>
                                    </td>
                                    <td class="center">
                                        <?php echo $gar->misc_fees; ?>
                                    </td>
                                    <td class="center">
                                        <a href="<?php echo site_url('admin/garment/delete/'.$gar->id) ?>" class="btn btn-danger" >
                                            <i class="fa fa-trash-o"></i>
                                        </a>
                                    </td>
				</tr>				
			<?php } ?>
                                <tr style="font-weight: bold; font-size: 16px;">
                                    <td colspan="6" class="text-right">Total cost</td>
                                    <td colspan="3" class="bold"><?php echo $cost; ?></td>
                                </tr>
			</tbody>
		</table>
		<div class="pull-right">
			<?php //echo $links; ?>
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