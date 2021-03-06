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
<link rel="stylesheet" href="<?php echo base_url('assets/plugins/dynatree/src/skin-vista/ui.dynatree.css'); ?>">
<link href="<?php echo base_url('assets/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css'); ?>" rel="stylesheet" type="text/css"/>
<link href="<?php echo base_url('assets/plugins/bootstrap-modal/css/bootstrap-modal.css'); ?>" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<?php echo base_url('assets/plugins/select2/select2.css'); ?>">
<link rel="stylesheet" href="<?php echo base_url('assets/plugins/jQuery-Tags-Input/jquery.tagsinput.css'); ?>">

<script src="<?php echo base_url('assets/plugins/jQuery-Tags-Input/jquery.tagsinput.js'); ?>"></script>
<script src="<?php echo base_url('assets/plugins/dynatree/src/jquery.dynatree.js'); ?>"></script>
<script src="<?php echo base_url('assets/plugins/bootstrap-modal/js/bootstrap-modal.js'); ?>"></script>
<script src="<?php echo base_url('assets/plugins/bootstrap-modal/js/bootstrap-modalmanager.js'); ?>"></script>
<script src="<?php echo base_url('assets/js/ui-modals.js'); ?>"></script>
<script src="<?php echo base_url('assets/plugins/select2/select2.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/plugins/tinymce/tinymce.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/plugins/validate/validate.js'); ?>"></script>
<script>
	var base_url = '<?php echo site_url(); ?>';	
	var url_assets = '<?php echo base_url('assets/js/'); ?>';	
	jQuery(document).ready(function() {				
		dgUI.category.tree('#tree6', 'clipart');
		dgUI.category.modalTree('#ajax-sub-tree-modal .modal-body');
		dgUI.category.lang.msg = '<?php echo lang('category_msg'); ?>';
		dgUI.category.lang.msga = '<?php echo lang('category_msga'); ?>';
		dgUI.category.lang.add_info = '<?php echo lang('category_add_info'); ?>';
		dgUI.category.lang.title = '<?php echo lang('title'); ?>';
		dgUI.category.lang.add_title = '<?php echo lang('add_title'); ?>';
		dgUI.category.lang.slug = '<?php echo lang('slug'); ?>';
		dgUI.category.lang.add_slug = '<?php echo lang('add_slug'); ?>';
		dgUI.category.lang.description = '<?php echo lang('description'); ?>';
		dgUI.category.lang.add_description = '<?php echo lang('add_description'); ?>';
		dgUI.category.lang.confirm_delete = '<?php echo lang('confirm_delete'); ?>';
		dgUI.category.ini();
		dgUI.art.ini();

		jQuery(".search-select").select2({
            placeholder: "<?php echo lang('art_select_a_state_place'); ?>",
            allowClear: true
        });
		jQuery("#clipart-rows").on("click",".box-image", function() {
			var checkBoxes = jQuery(this).closest(".box-art").find(".box-publish .checkb");
			checkBoxes.prop("checked", !checkBoxes.prop("checked"));
		});
		jQuery('input.tags').tagsInput({width: 'auto'});
	});
</script>
<!-- show error -->
<div class="row message">

	<?php if ( $this->session->flashdata('error') == true ) { ?>
	<div class="col-md-12">
		<div class="alert alert-danger" role="alert">
		<?php echo $this->session->flashdata('error'); ?>
		</div>
	</div>
	<?php } ?>
	
	<?php if ( $this->session->flashdata('success') == true ) { ?>
	<div class="col-md-12">
		<div class="alert alert-success" role="alert">
		<?php echo $this->session->flashdata('success'); ?>
		</div>
	</div>
	<?php } ?>
	
</div>


<div class="row">
	<div class="col-md-12" style="display:none;">	
		<p><?php echo lang('art_you_can_go_to');?> <a href="http://store.9file.net" target="_blank"><strong><?php echo lang('art_you_my_store');?></strong></a>, <?php echo lang('art_you_search_art');?></p>
	</div>
	<!-- start: LIST CATEGORIES TREE -->
	<div class="col-md-3">		
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="clip-list"></i>
				<?php echo lang('menu_left_categories'); ?>
			</div>
			<div class="panel-body">
				<div class="row">
					<center>
						<a class="btn btn-primary btn-xs dgUI-category tooltips" rel="add" href="javascript:;" title="<?php echo lang('add'); ?>">
							<i class="glyphicon glyphicon-plus"></i>
							<?php echo lang('add'); ?>
						</a>						
						<a class="btn btn-bricky btn-xs dgUI-category tooltips" rel="remove" href="javascript:;" title="<?php echo lang('delete'); ?>">
							<i class="glyphicon glyphicon-trash"></i>
							<?php echo lang('delete'); ?>
						</a>
						<a class="btn btn-green btn-xs dgUI-category tooltips" rel="edit" href="javascript:;" title="<?php echo lang('edit'); ?>">
							<i class="glyphicon glyphicon-pencil"></i>
							<?php echo lang('edit'); ?>
						</a>					
					</center>
				</div>
				
				<div class="row">
					<div id="tree6">						
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end: LIST CATEGORIES TREE -->
	
	<form id="adminForm" name="adminForm" method="post" action="<?php echo site_url('admin/art'); ?>">
	<!-- start: LIST CLIPART -->
	<div class="col-md-9">		
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="clip-list"></i>			
				<?php echo $sub_title; ?>
			</div>
			<div class="panel-body">				
				<div class="row">
					<!-- search -->
					<div class="col-md-4 pull-left">
						<div class="row">
							<div class="col-md-8">
								<div class="form-group">							
									<input type="text" class="form-control" id="search" name="keyword" placeholder="<?php echo lang('art_search_place')?>" autocomplete="off" value="<?php echo $this->session->userdata('keyword'); ?>"/>
								</div>
							</div>	
							<div class="col-md-4">
								<button type="submit" class="btn btn-primary"><?php echo lang('search');?></button>
							</div>
							<input type="hidden" name="search" value="1"/>
						</div>
					</div>				
					
					<!-- begin tools -->
					<div class="col-md-4 text-right pull-right">
						<!-- add more clipart -->
						<!--
						<a href="javascript:void(0);" class="btn btn-primary" title="<?php echo lang('add_more'); ?>">
							<i class="fa fa-folder-open-o"></i>					
						</a>
						-->
						
						<a href="javascript:void(0);" rel="add" class="btn btn-primary dgUI-art tooltips" title="<?php echo lang('add'); ?>">
							<i class="glyphicon glyphicon-plus"></i>					
						</a>
						
						<a href="javascript:void(0);" class="btn btn-danger tooltips" onclick="submit('remove')" title="<?php echo lang('remove'); ?>">
							<i class="glyphicon glyphicon-trash"></i>					
						</a>											
					</div>
					<!-- end tools -->
				</div>
				<div class="clear-line"></div>
				<!-- load clipart -->
				<div class="row" id="clipart-rows">
					<?php
					if($arts)
					{
						foreach($arts as $art)
						{							
							$images = imageArt($art);
					?>
						<div class="col-sm-3 col-md-2 box-art">
							<a class="box-image" data-toggle="modal" href="javascript:void(0)" title="<?php echo $art->title; ?>">
								<img src="<?php echo $images->thumb; ?>" alt="" class="img-responsive">
							</a>
							<a class="box-edit" href="javascript:void(0);" onclick="UIModals.init('<?php echo site_url('admin/art/edit/'.$art->clipart_id.'/?cate_id='.$art->cate_id); ?>')" title="<?php lang('edit'); ?>">
								<i class="fa fa-pencil"></i>								
							</a>
							<span class="box-publish">
								<input type="checkbox" class="checkb" name="ids[]" value="<?php echo $art->clipart_id; ?>">
							</span>
							
							<?php if ($art->system == 1 && $art->system_id > 0 ){ ?>
								<span class="box-art-cart fa fa-plus" title="This art is added in store"></span>
							<?php } ?>
							<?php if ($art->add_price > 0 ){ ?>
								<div class="box-detail-price">$<?php echo $art->add_price; ?></div>
							<?php } ?>
						</div>
					<?php 
						}
					}
					?>
					
					<!-- begin pagination -->
					<div class="clear-line clear-line-head col-md-12"></div>
					<div id="arts-pagination" class="pull-right col-md-12 text-right">
						<?php echo $this->pagination->create_links(); ?>
					</div>
					<!-- end pagination -->
				</div>
			</div>
		</div>
	</div>
	<!-- end: LIST CLIPART -->
	</form>
	
</div>
<div id="ajax-modal" class="modal fade" tabindex="-1" style="display: none;"></div>
<div id="ajax-sub-tree-modal" class="modal fade" tabindex="-1" style="display: none;">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title"><?php echo lang('art_change_category'); ?></h4>
	</div>
	<div class="modal-body">
	</div>

	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal"><?php echo lang('close'); ?></button>
		<button type="button" class="btn btn-primary save-cate" onclick="dgUI.category.saveTreeCate()" data-dismiss="modal"><?php echo lang('save'); ?></button>
	</div>
</div>
<script type="text/javascript">

jQuery('.tooltips').tooltip();

function submit(typeMethod) {
	var ids = [];
	jQuery('.checkb').each(function () {
		if (jQuery(this).is(':checked')) {
//			if (ids.length == 0) ids = "[" + jQuery(this).val()+"]";
//			else ids = ids + ',' + jQuery(this).val();
			ids.push(jQuery(this).val());
		}
	});
	if (ids.length == 0) {
		alert('Please first make a selection from the list');
		return;
	}
	var url ='<?php echo site_url('admin/art'); ?>/' + typeMethod+'ajax';
//	jQuery('#adminForm').attr('action', url);
//	jQuery('#adminForm').submit();
	jQuery.ajax({
		type: "POST",
		url:url,
		data: {"ids": ids},
		async: false,
		success: function (kg) {
			if(kg == 1){
				html(typeMethod+ ' success');
				reloadItem();
			}else{
				html(typeMethod+ ' fail');
			}
		},error:function(message){
			html(typeMethod+ ' error');
		}
	});
	function html(message){
		jQuery('.row.message').html('<div class="col-md-12"><div class="alert alert-success" role="alert">'+ message+'</div></div>');
	}
	function reloadItem(){
		var cateId = jQuery('.dynatree-node.dynatree-active .dynatree-title').data('id');
		if(typeof cateId == undefined) cateId=0
		var page = $('#arts-pagination li.active a').text();
		var count = '';
		if(page!='') count = (page-1)*24;
		jQuery('#tree6 .dynatree-container').addClass('loading');
		jQuery.ajax({url: base_url + 'admin/art/index/ajax/' + cateId+'/'+count}).done(function( data ) {
			jQuery('#clipart-rows').html(data);
			jQuery('#tree6 .dynatree-container').removeClass('loading');
		});
	}
}
</script>
