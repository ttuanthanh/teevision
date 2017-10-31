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
<script type="text/javascript" src="<?php echo site_url().'assets/js/sort_tb/jquery.tablesorter.js'; ?>"></script>
<link rel="stylesheet" type="text/css" href="<?php echo site_url().'assets/js/sort_tb/style.css'; ?>" media="screen" />
<style>
    .color_code_box {

	width:100%;

        border:1px solid #ccccff;

	background:white;

	padding:5px 0px;

	margin:15px 0px;

}

.color_code_box h6 {

	font-size:18px;

	float:left;

	width:80px;

	padding:29px 15px 0px 22px;

	font-weight:normal;

}
.color_code_box span { font-size:14px; width: 130px; height: 90px}

.cl1 { background:white; border:1px solid black; padding:28px 0px; text-align:center; width:100px; float:left;}

.cl2 { background:#D8E4EA; margin:0 7px;padding:37px 0px; text-align:center; width:80px; float:left;}

.cl3-4 { display:block; float:left; width:120px; height:100px; font-size:12px;}

.cl3 { display:block; float:left; width:100px; height: 42px!important; background:#E53225; width:100%; text-align:center; margin-bottom: 5px;}

.cl4 { display:block; float:left; width:100px; background:#062F47; padding:5px 0px; color:white; width:100%; text-align:center; margin:2px 0px;} 

.cl5 { background:#FF9012; padding:30px 0px; text-align:center; width:90px; float:left; margin:0px 4px;}

.cl6 { background:#FEE300; padding:30px 0px; text-align:center; width:105px; float:left;}

.cl7 { background:white  url(/assets/images//icon/mark-red.png) 10px 26px no-repeat; background-size: 40px 40px; padding:28px 10px 0px 60px; text-align:center; width:150px!important; height:40px; float:left;}

.c22 { background:white  url(/assets/images//icon/mark-red.png) 10px 26px no-repeat; background-size: 40px 40px; padding:28px 10px 0px 60px; text-align:center; width:150px!important; height:40px; float:left;}

.cl7-2 { background:white  url(/assets/images//icon/mark-yellow.png) 10px 26px no-repeat; background-size: 40px 40px; padding:28px 4px 0px 60px; text-align:center; width:150px!important; height:40px; float:left;}

.cl8 { background:#8BDC65; padding:10px 0px;; text-align:center; width:115px; height: 42px!important; float:left;}

.cl9{ position:absolute;}
.art-bt-orange{
    background-color: #cc6600;
    color: white;
}

.art-bt-green{
    background-color: #009900;
    color: white;
}
/assets/images//icon/mark-yellow.png
</style>
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
        var url;
        jQuery('.upload-pp').fancybox({ 
            beforeClose: function() {
                var $iframe = $('.fancybox-iframe');
                url = $('input', $iframe.contents()).val();
                //alert(url);
            },
            afterClose: function() {
                location.reload();
            }
        });
        jQuery(".tablesorter").tablesorter({sortList: [[7,1]]} ); 
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
<?php //var_dump($items); ?>
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
<div class="panel panel-default schedule-box">
        
	<div class="panel-heading">
		<i class="fa fa-external-link-square icon-external-link-sign"></i>
		<?php echo lang('orders_admin_orders_title'); ?>           
	</div>
	<?php
	$attribute = array('class' => 'form-orders', 'id' => 'form-orders');		
	echo form_open(site_url('admin/orders/schedules'), $attribute);
	?>

    <br clear="all"/>
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
                                    
				</p>
			</div>
		</div>
		<table id="sample-table-1" class="table sch-tb tablesorter">
			<thead>
                            <tr class="hd-tb-border">
                                        <th class="center">#</th>
					<th class="center">Due Date</th>
					<th class="center">Order</th>
					<th class="center">Name</th>
					<th class="center">Type</th>
					<th class="center">Upload</th>
					<th class="center">Download</th>
					
				</tr>
			</thead>
			<tbody>
                            <?php //var_dump($orders[0]); ?>
                            <?php foreach($items as $item) { 
                                    
                                    
                                ?>
                            <tr class="">
                                    <td class="center">    
                                        <?php 
                                            if($item->art_iscomment == 1)
                                                echo '<img src="/assets/images//icon/mark-yellow.png" width="25" />';
                                        ?>
                                        
                                    </td>
                                    <td class="center <?php echo ($item->art_rush == 1) ? 'red-color' : '' ?>">    
                                        <?php  $credate = new DateTime($item->art_date); echo $credate->format('D, M j');  
                                                echo ($item->art_rush == 1) ? '<br />RUSH' : ''
                                        
                                        ?>
                                    </td>
                                    <td class="center"> 
                                        <?php echo $item->order_number ?>
                                    </td>
                                    <td class="center">   
                                        <?php 
                                        $address = json_decode($item->address);
                                        echo $address->{'First Name'}.' '.$address->{'Last Name'} ?>
                                    </td>
                                    <td class="center <?php
                                        if($item->art_isupload == 1 || $item->art_iscomment == 1) 
                                            echo 'art-bt-green'; 
                                        elseif($item->art_comment == '')
                                            echo 'art-bt-orange'; ?>">    
                                        <?php echo $item->art_type ?>
                                    </td>
                                    <td class="center"> 
                                        <a class="upload-pp fancybox fancybox.iframe" href="/admin/artworkschedule/upload/<?php echo $item->artwork_id; ?>/<?php echo $item->id; ?>">upload</a>
                                    </td>
                                    <td class="center">   
                                        <a class="upload-pp fancybox fancybox.iframe" href="/admin/artworkschedule/download/<?php echo $item->artwork_id; ?>">download</a>
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