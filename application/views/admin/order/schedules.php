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

<script type="text/javascript">
    jQuery(document).on('click change', 'input[name="check_all"]', function() {
        var checkboxes = $(this).closest('table').find(':checkbox').not($(this));
        if ($(this).prop('checked')) {
            checkboxes.prop('checked', true);
        } else {
            checkboxes.prop('checked', false);
        }
        
        
    });
    jQuery('document').ready(function(){
        jQuery('.add-new-order').fancybox({ 
            afterClose: function() {
                    location.reload();
                }
        });
    });
    function reload() 
    {
    jQuery('#order_detail_body').block({
        overlayCSS: {
            backgroundColor: '#fff'
        },
        message: '<img src="<?php echo base_url('assets/images/loading.gif');?>" /> <?php echo lang('load_text'); ?>',
        css: {
            border: 'none',
            color: '#333',
            background: 'none'
        }
    });
    }
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
	echo form_open(site_url('admin/orders/schedules'), $attribute);
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
					<div class="col-md-4">
						<?php 
							if(isset($myorders))
								$option_s = array('order_number' => lang('orders_admin_search_order_number'), 'date' => lang('orders_admin_search_date'));
							else
								$option_s = array('order_number' => lang('orders_admin_search_order_number'), 'customer' => lang('orders_admin_search_customer'), 'date' => lang('orders_admin_search_date'));
							echo form_dropdown('option_s', $option_s, $option, 'class="form-control" id="option_s"'); 
						?>
					</div>				
					<div class="col-md-2">
						<button type="submit" class="btn btn-primary"><?php echo lang('search');?></button>
					</div>
				</div>
			</div>
			
			<div class="col-md-6">
				<p style="text-align:right;">
					<a id="add-new-order" class="btn btn-success tooltips add-new-order fancybox fancybox.iframe" title="Add new order" href="/admin/orders/listproduct" > 
						<i class="fa fa-shopping-cart"></i> Add order
					</a>
				</p>
			</div>
		</div>
		<table id="sample-table-1" class="table table-bordered table-striped">
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
                                        <th class="center">Print Ready</th>
                                        <th class="center">Paid</th>
                                        <th class="center">Delete</th>
				</tr>
			</thead>
			<tbody>
                            <?php //var_dump($orders[0]); ?>
                            <?php foreach($orders as $order) { ?>
                            <?php $desi = $this->order_m->getDesign($order->id); ?>
                                <?php
                                    
                                    $credate = new DateTime($order->created_on);
                                    $today = date("Y-m-d");
                                    $tomorrow = date("Y-m-d",strtotime('tomorrow'));
                                    $yesterday = date("Y-m-d",strtotime('yesterday'));
                                    
                                    $completed_ond = new DateTime($order->completed_on);
                                    $completed_on = $completed_ond->format('Y-m-d');
                                    
                                    if(isset($order->duedate)){
                                        $duedated = new DateTime($order->duedate);
                                        $duedate = $duedated->format('Y-m-d');
                                    } 
                                    else
                                        $duedate = date("Y-m-d", strtotime("$order->ship_day weekdays", strtotime($order->created_on)));
                                    
                                    if(isset($order->shipdate))   
                                    {
                                        $shipDated = new DateTime($order->shipdate); //DateTime::createFromFormat('Y-m-d', $order->shipdate);   
                                        $shipDate = $shipDated->format('Y-m-d');
                                    } 
                                    else
                                        $shipDate = date("Y-m-d", strtotime("$order->ship_day weekdays", strtotime($order->created_on)));
                                        
                                        
                                    //var_dump($order);
                                    //var_dump($today);
                                    //var_dump($duedate);
                                ?>
                            <tr class="<?php 
                                        if ($order->status == 'completed') echo 'o-complete';
//                                        else if ($shipDate <= $today) echo 'duedate';                                         
                                        ?>">
                                    <td class="center">    
                                        <?php
                                           //echo $shipDate.'--'.$today.'---'.$duedate;
                                            if ($shipDate == $today)
                                                echo '<img src="/assets/images//icon/mark-red.png" width="20" height="20"/>';
                                            if ( $duedate == $tomorrow )
                                                echo '<img src="/assets/images//icon/mark-yellow.png" width="20" height="20"/>';
                                            if ( $yesterday == $completed_on )
                                                echo '<img src="/assets/images//icon/mark-green.png" width="20" height="20"/>';
                                            if ( $yesterday == $shipDate && $order->completed_on == '' )
                                                echo '<img src="/assets/images//icon/x-red.png" width="20" height="20"/>';
                                        ?>
                                        
                                    </td>
                                    <td class="center">    
                                        <a href="<?php echo site_url('admin/orders/detail/'.$order->id); ?>"><?php echo $order->order_number; ?></a>
                                    </td>
                                    <td class="center"> 
                                      <?php echo $credate->format('D, M j H:i:s'); ?>
                                    </td>
                                    <td class="center">   
                                        <?php echo $order->name; ?>
                                    </td>
                                    <td class="center">
                                       <?php echo $order->total_qty; ?>
                                    </td>
                                    <td class="center"> 
                                        <?php //var_dump($desi->teams) ?>
                                        <?php if( $order->custom_file==1)
                                                echo '<a><i class="fa fa-check-square-o" style="font-size: 20px;"></i></a>'; 

                                        ?>
                                    </td>
                                    <td class="center"> 
                                        <?php if( $order->apparel != '') {?>
                                        <a href="<?php echo site_url('admin/orders/garment/'.$order->id); ?>" class="btn btn-success btn-xs tooltips action" type="button" data-original-title="Click to change" data-placement="top" >Yes</a>
                                        <?php } else {?>
                                            <a href="<?php echo site_url('admin/orders/garment/'.$order->id); ?>" class="btn btn-danger btn-xs tooltips action " type="button" data-original-title="Click to change" data-placement="top" >No</a>
                                        <?php } ?>
                                    </td>
                                    <td class="center">      
                                        <?php 
                                        if(isset($order->shipdate))   
                                        {
                                            $newDate = DateTime::createFromFormat('Y-m-d', $order->shipdate);   
                                            $ddtext = $newDate->format('m').'-'.$newDate->format('d');
                                        } 
                                        else
                                            $ddtext = date("m-d", strtotime("$order->ship_day weekdays", strtotime($order->created_on)));
                                        //echo $newDate->format('m').'-'.$newDate->format('d'); 
                                        if( $order->ship_approved != 1) {?>
                                            <a href="<?php echo site_url('admin/orders/shipdate/'.$order->id); ?>" class="btn btn-danger btn-xs tooltips action " type="button" data-original-title="Click to change" data-placement="top" ><?php echo $ddtext ?></a>
                                        <?php } else {?>
                                            <a href="<?php echo site_url('admin/orders/shipdate/'.$order->id); ?>" class="btn btn-success btn-xs tooltips action" type="button" data-original-title="Click to change" data-placement="top" ><?php echo $ddtext ?></a>   
                                        <?php } ?>
                                    </td>
                                    <td class="center">
                                        <?php 
                                        //$newDate = DateTime::createFromFormat('Y-m-d H:i:s', $order->ship_date);
                                        //echo $newDate->format('m').'-'.$newDate->format('d'); 
                                        if(isset($order->duedate))   
                                        {
                                            $newDate = DateTime::createFromFormat('Y-m-d', $order->duedate);   
                                            $ddtext = $newDate->format('m').'-'.$newDate->format('d');
                                            echo $ddtext;
                                        } 
                                        else
                                            echo date("m-d", strtotime("$order->ship_day weekdays", strtotime($order->created_on)));
                                        ?>
                                    </td>
                                    <td class="center">     
                                        
                                        <?php if( $order->artwork != '') {?>
                                        <a href="<?php echo site_url('admin/orders/artwork/'.$order->id); ?>" class="btn btn-success btn-xs tooltips action" type="button" data-original-title="Click to change" data-placement="top" >Yes</a>
                                        <?php } else {?>
                                            <a href="<?php echo site_url('admin/orders/artwork/'.$order->id); ?>" class="btn btn-danger btn-xs tooltips action " type="button" data-original-title="Click to change" data-placement="top" >No</a>
                                        <?php } ?>
                                    </td>
                                    <td class="center">     
                                        <?php if( $order->proof_approved != 0) {?>
                                            <a href="<?php echo site_url('admin/orders/proof/'.$order->id); ?>" class="btn btn-success btn-xs tooltips action" type="button" data-original-title="Click to approve" data-placement="top" rel="unpublish">Yes</a>
                                        <?php } else {?>
                                            <a href="<?php echo site_url('admin/orders/proof/'.$order->id); ?>" class="btn btn-danger btn-xs tooltips action " type="button" data-original-title="Click to approve" data-placement="top" rel="publish">No</a>
                                        <?php } ?>
                                    </td>
                                    <td class="center">  
                                        <b>
                                            <?php
                                                echo isset($order->tracking_num) ? '#'.$order->tracking_num : '';
                                            ?>                                            
                                        </b>
                                    </td>
                                    <td class="center"> 
                                        <?php 
                                            if ($order->apparel > 0 && ($order->ship_approved+$order->artwork+$order->proof_approved) == 3)                                            
                                                echo '<a href="'.site_url('admin/orders/orderPrint/'.$order->id).'" class="btn btn-success btn-xs tooltips action" type="button" data-original-title="Click to change" data-placement="top" rel="unpublish">Print</a>';
                                            else
                                                echo '<a href="javascript:void(0)" class="btn btn-danger btn-xs tooltips action" type="button" data-original-title="Click to change" data-placement="top" rel="unpublish">Print</a>';
                                        ?>
                                        
                                    </td>
                                    <td class="center"> 
                                        <?php 
                                            if ($order->balance == 1)                                            
                                                 echo '<img src="'.site_url('assets/images/paid.png').'" height="25px">';
                                            ?>
                                        
                                    </td>
                                    <td class="center">
                                        <a class="remove btn btn-bricky tooltips" onclick="return confirm('<?php echo lang('orders_admin_confirm_delete');?>');" href="<?php echo site_url('admin/orders/delete/'.$order->id); ?>" data-original-title="<?php echo lang('remove');?>" data-placement="top">
							<i class="fa fa-trash-o"></i>
						</a>
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