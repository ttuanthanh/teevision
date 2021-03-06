<?php
/**
 * @author teevisionprinting - www.teevisionprinting.com
 * @date: 2015-01-10
 *
 * @copyright  Copyright (C) 2015 teevisionprinting.com. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE
 *
 */
if (!defined('BASEPATH')) exit('No direct script access allowed');

?>
<link href="<?php echo base_url('assets/css/colorpicker.css'); ?>" rel="stylesheet">
<link href="<?php echo base_url('assets/css/style.css'); ?>" rel="stylesheet">

<link href="<?php echo base_url('assets/css/reposive.css'); ?>" rel="stylesheet">
<link href="<?php echo base_url('assets/plugins/bootstrap/css/bootstrap-toggle.min.css'); ?>" rel="stylesheet">

<script src="<?php echo base_url('assets/js/add-ons.js'); ?>"></script>
<script src="<?php echo base_url('assets/js/jquery.ui.rotatable.js'); ?>"></script>
<script src="<?php echo base_url('assets/js/language.js'); ?>"></script>
<script src="<?php echo base_url('assets/js/colorpicker/colorpicker.js'); ?>"></script>
<script src="<?php echo base_url('assets/js/colorpicker/eye.js'); ?>"></script>
<script src="<?php echo base_url('assets/js/colorpicker/utils.js'); ?>"></script>
<script src="<?php echo base_url('assets/js/colorpicker/layout.js'); ?>"></script>

<script src="<?php echo base_url('assets/js/design.js'); ?>"></script>
<script src="<?php echo base_url('assets/js/main.js'); ?>"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/canvg.js'); ?>"></script>
<script src="<?php echo base_url('assets/js/validate.js'); ?>"></script>
<script src="<?php echo base_url('assets/plugins/bootstrap/js/bootstrap-toggle.min.js'); ?>"></script>

<script type="text/javascript">
    var baseURL = '<?php echo base_url(); ?>';
    var urlCase = '<?php echo base_url('image-tool/thumbs.php'); ?>';
    var loginError = '<?php echo $this->lang->line('login_error_msg');?>';
    var myAccount = '<?php echo $this->lang->line('my_account');?>';
    var logOut = '<?php echo $this->lang->line('logout');?>';
    var passError = '<?php echo $this->lang->line('change_pass_error_msg');?>';
    var passSuccess = '<?php echo $this->lang->line('change_pass_success_msg');?>';
    var registerError = '<?php echo $this->lang->line('ursername_or_email_exit_msg');?>';
    <?php if ( isset($user['id']) ) { ?>
    var user_id = <?php echo $user['id']; ?>;
    <?php }else{ ?>
    var user_id = 0;
    <?php } ?>
</script>

<div id="dg-wapper">
    <div id="dg-mask" class="loading"></div>
    <!--        <div id="dg-mask-dimiss" class="dg-mask-dimiss">
            <img src="<?php echo base_url('assets/images/coming-soon-dots.png'); ?>" class="img-responsive">
        </div>-->
    <!-- Begin main -->

    <div id="dg-designer">
        <div id="left-area" class="col-left row">
            <div id="dg-left" class="width-100">
                <div class="width-100 tab-left">
                    <ul class="menu-left" role="tablist">
                        <!-- product-->
                        <li role="presentation" class="active">

                            <a href="#dg-products" aria-controls="#dg-products" role="tab" data-toggle="tab"
                               class="view_change_products">
                                <i class="glyphicons t-shirt"></i>
                                <span><?php echo $lang['designer_menu_choose_product']; ?></span>
                            </a>
                        </li>
                        <!-- upload-->
                        <li role="presentation">
                            <a href="#dg-myclipart" aria-controls="#dg-myclipart" role="tab" data-toggle="tab">
                                <i class="glyphicons camera"></i>
                                <span> <?php echo $lang['designer_menu_upload_image']; ?></span>
                            </a>
                        </li>
                        <li role="presentation">
                            <a href="#tab-add_item_text" aria-controls="#tab-add_item_text" role="tab"
                               data-toggle="tab">
                                <i class="glyphicons text_bigger"></i><span><span> <?php echo $lang['designer_menu_add_text']; ?></span>
                            </a>
                        </li>

                        <li role="presentation">
                            <a href="#tab-add_item_team" role="tab" aria-controls="#tab-add_item_team"
                               data-toggle="tab">
                                <i class="glyphicons soccer_ball"></i>
                                <span> <?php echo $lang['designer_menu_name_number']; ?></span>
                            </a>
                        </li>
                        <li role="presentation">
                            <a href="#tab-add_item_clipart" class="cliparts" aria-controls="#tab-add_item_clipart"
                               title="" data-toggle="tab">
                                <i class="glyphicons picture"></i><span> <span> <?php echo $lang['designer_menu_add_art']; ?></span>
                            </a>
                        </li>

                        <!--
						<li>
							<a href="javascript:void(0)" title="" data-toggle="modal" data-target="#dg-designidea">
								<i class="glyphicons sun"></i> <?php echo $lang['designer_menu_design_idea']; ?></span>
							</a>
						</li>
						-->

                        <!-- <li>
                            <a href="javascript:void(0)" class="add_item_mydesign">
                                <i class="glyphicons user"></i> <span> <?php /*echo $lang['designer_menu_my_design']; */ ?></span>
                            </a>
                        </li>-->
                        <!--
						<li>
							<a href="javascript:void(0)" title="">
								<i class="glyphicons qrcode"></i> <span> <?php echo $lang['designer_menu_add_qrcode']; ?></span>
							</a>
						</li>
						-->
                    </ul>
                    <!-- Tab panes -->
                    <div class="main-tab tab-content">
                        <!-- Begin products -->
                        <div id="dg-products" role="tabpanel" class="tab-pane active col-md-12">
                                <div class="row nav-product">
                                <div class="col-xs-4 col-md-4 text-left change-view-mobile">
                                  <span class="closeBtn mobile  ">
                                           X Close
                                    </span>
                                </div>
                                <div class="col-xs-4 col-md-4 center nav-info">
                                    <span class="changeInfo"><?php echo $lang['designer_product_change_product']; ?>
                                    </span>
                                </div>
<!--                                <div class="col-xs-4 col-md-4 text-right">-->
<!--                                    <a type="button" class="btn-link" href="javascript:void(0)" id="designThis">-->
<!--                                        Design this-->
<!--                                        <i class="glyphicon glyphicon-arrow-right"></i>-->
<!--                                    </a>-->
<!--                                </div>-->
                            </div>
                            <div class="row nav-select" style="display:none;">
                                <div class="col-md-12 col-xs-8 nav-info left ">
                                   <span
                                       class="selectInfo"><?php echo $lang['designer_product_select_product']; ?></span>
                                </div>
                                <div class="col-xs-4 center nav-info change-view-mobile">
                                    <span class="closeBtn">
                                           X Close
                                    </span>
                                </div>
                                <div class="show-mobile product-design"></div>
                            </div>

                            <div class="products-detail">
                                <div class="product-options contentHolder">
                                    <?php if ($product != false) { ?>
                                        <div class="content-y">
                                            <?php if (isset($product->design) && $product->design != false) { ?>
                                                <div class="product-info">
                                                    <div class="form-group product-fields">
                                                        <label
                                                            for="fields"><?php echo $lang['designer_right_choose_product_color']; ?></label>
                                                        <div class="list-colors" id="product-list-colors">
                                                            <?php for ($i = 0; $i < count($product->design->color_hex); $i++) { ?>
                                                                <span
                                                                    class="bg-colors dg-tooltip <?php if ($i == 0) echo 'active'; ?>"
                                                                    onclick="design.products.changeColor(this, <?php echo $i; ?>)"
                                                                    data-color="<?php echo $product->design->color_hex[$i]; ?>"
                                                                    style="background-color:#<?php echo $product->design->color_hex[$i]; ?>"
                                                                    data-placement="top"
                                                                    data-original-title="<?php echo $product->design->color_title[$i]; ?>"></span>
                                                            <?php } ?>

                                                        </div>
                                                    </div>
                                                </div>
                                            <?php } ?>

                                        </div>
                                    <?php } ?>
                                </div>
                                <div class="row product-desc"></div>
                            </div>
                            <div class="productsContain row">
                                <ul class="nav nav-tabs nav-category" role="tablist">
                                    <?php
                                    foreach ($product->categories as $category) {
                                        if ($category->parent_id > 0) continue;
                                        ?>
                                        <li role="presentation">
                                            <button class="btn-link"
                                                    onclick="design.products.changeCategory(this)"
                                                    value="<?php echo $category->id; ?>"
                                                    data-toggle="tab">
                                                <span><?php echo $category->title; ?></span>

                                        </li>
                                    <?php } ?>

                                </ul>
                                <div class="modal-body productsNav fill-area">
                                    <div class="row" style="display: flex; overflow: auto">
                                        <!-- list product category -->
                                        <div class="product-list col-sm-12">
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End products -->
                        <!--Start Add image-->
                        <div class="tab-pane" id="dg-myclipart" role="tabpanel">
                            <div class="row nav-bar">
                                <div class="col-md-12 col-xs-8 nav-info left ">
                                   <span class="changeInfo"><?php echo $lang['designer_product_add_image']; ?>
                                    </span>
                                </div>
                                <div class="col-xs-4 center nav-info change-view-mobile">
                                    <span class="closeBtn">
                                           X Close
                                    </span>
                                </div>
                            </div>
                            <ul class="nav nav-tabs nav-category" role="tablist">
                                <li role="presentation" class="active"><a href="#upload-conputer" role="tab"
                                                                          id="tab-upload-conputer"
                                                                          class="btn-link"
                                                                          aria-controls="#uploaded-conputer"
                                                                          data-toggle="tab"><?php echo $lang['designer_upload_upload_photo']; ?></a>
                                </li>
                                <li role="presentation"><a href="#uploaded-art" role="tab"
                                                           class="btn-link"
                                                           aria-controls="#uploaded-art" id="tab-uploaded-art"
                                                           data-toggle="tab"><?php echo $lang['designer_upload_photo_uploaded']; ?></a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" role="tabpanel" id="upload-conputer">
                                    <div class="row">
                                        <div class="col-md-12 align-center">
                                            <div class="upload-area">
                                                <input type="file" id="files-upload" class="input-upload"
                                                       autocomplete="off"/>
                                                <i class="fa fa-cloud-upload" aria-hidden="true"></i>
                                                <p>
                                                    <span>Drag & Drop files here to upload or</span>
                                                </p>
                                                <p>
                                                    <image class="selected-image-upload" style="display:none"/>
                                                    <button class="browse-file">BROWSE FILES</button>
                                                </p>

                                                <p>
                                                    <label>
                                                        <small>
                                                            <?php echo $lang['designer_upload_max_file_size']; ?>
                                                            : <?php echo settingValue($setting, 'site_upload_max', '0.5'); ?>
                                                            MB
                                                        </small>
                                                    </label>
                                                </p>
                                                <p><?php echo $lang['designer_upload_accept_the_following']; ?>:</p>
                                                <p><strong>PNG, JPG, GIF, PDF, PSD, AI, EPS, SVG</strong></p>
                                            </div>
                                            
                                            
<!--                                            <div class="checkbox">-->
<!--                                                <label>-->
<!--                                                    <input type="checkbox" autocomplete="off"-->
<!--                                                           id="upload-copyright"> <span-->
<!--                                                        class="help-block">--><?php //echo $lang['designer_upload_please_read']; ?>
<!--                                                        <a-->
<!--                                                            href="--><?php //echo settingValue($setting, 'site_upload_terms', '#'); ?><!--"-->
<!--                                                            target="_blank">--><?php //echo $lang['designer_upload_copyright_terms']; ?><!--</a>. --><?php //echo $lang['designer_upload_if_you_do_not_have_the_complete']; ?><!--</span>-->
<!--                                                </label>-->
<!--                                            </div>-->
                                        </div>

                                    </div>
                                    <hr/>
                                    <input type="checkbox" style="display:none" id="remove-bg" />
                                    <!--<div class="row col-md-6 checkbox text-center rm_bg_bt">

                                        <span class="help-block"><?php /*echo $lang['designer_upload_remove_white_background']; */?></span>
                                    </div>-->
                                    <div class="row col-md-12 margin-left-0">
                                        <button type="button"
                                                class="btn btn-primary input-sm pull-right full-width first-upload"
                                                id="action-upload">Upload
                                        </button>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="uploaded-art">
                                    <div class="row col-md-12 margin-left-0">
                                    <span
                                        class="help-block"><?php echo $lang['designer_upload_click_image_to_add_design']; ?></span>
                                    </div>
                                    <div class="row col-md-12 margin-left-0 text-error" id="upload-support">
                                    </div>
                                    <div class="row margin-0" id="dag-files-images">
                                    </div>

                                    <div id="drop-area"></div>


                                    <div class="row row-selected">
                                        <div class="col-md-12">
                                            <div class="result-area align-center">
                                                <p><strong><span>SELECTED IMAGE</span></strong></p>
                                                <p>
                                                    <image class="selected-image"/>
                                                </p>
                                            </div>
                                            <div class="form-group action-area align-left">
                                                                                            


                                                <button type="button" class="upload-button" style="display: none;"
                                                        id="add-upload"><?php echo $lang['designer_add_design_btn']; ?></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- BEGIN Text edit options -->
                        <div id="tab-add_item_text" class="dg-options tab-pane tab-padding" role="tabpanel">
                            <div class="row text_edit_header">
                                <div class="col-md-12 col-xs-8 nav-info left ">
                                    <span class="changeInfo"><?php echo $lang['designer_product_add_new_text']; ?>
                                    </span>
                                </div>
                                <div class="col-xs-4 center nav-info change-view-mobile">
                                    <span class="closeBtn">
                                           X Close
                                    </span>
                                </div>
                            </div>

<!--                            <div class="dg-options-toolbar">-->
<!--                                <div aria-label="First group" role="group" class="btn-group btn-group-lg">-->
<!--                                    <button class="btn btn-default" type="button" data-type="text">-->
<!--                                        <i class="fa fa-pencil"></i>-->
<!--                                        <small class="clearfix">Text</small>-->
<!--                                    </button>-->
<!--                                    <button class="btn btn-default" type="button" data-type="fonts">-->
<!--                                        <i class="fa fa-font"></i>-->
<!--                                        <small class="clearfix">Fonts</small>-->
<!--                                    </button>-->
<!--                                    <button class="btn btn-default" type="button" data-type="style">-->
<!--                                        <i class="fa fa-align-justify"></i>-->
<!--                                        <small class="clearfix">Style</small>-->
<!--                                    </button>-->
<!--                                    <button class="btn btn-default" type="button" data-type="outline">-->
<!--                                        <i class="fa fa-crop"></i>-->
<!--                                        <small class="clearfix">Outline</small>-->
<!--                                    </button>-->
<!--                                    <button class="btn btn-default" type="button" data-type="size">-->
<!--                                        <i class="fa fa-text-height"></i>-->
<!--                                        <small class="clearfix">Size</small>-->
<!--                                    </button>-->
<!--                                    <button class="btn btn-default" type="button" data-type="rotate">-->
<!--                                        <i class="fa fa-rotate-right"></i>-->
<!--                                        <small class="clearfix">Rotate</small>-->
<!--                                    </button>-->
<!--                                    <button class="btn btn-default" type="button" data-type="functions">-->
<!--                                        <i class="fa fa-cogs"></i>-->
<!--                                        <small class="clearfix">Functions</small>-->
<!--                                    </button>-->
<!--                                </div>-->
<!--                            </div>-->

                            <div class="dg-options-content">
                                <!-- edit text -->
                                <div class="row toolbar-action-text">
                                    <h5 class="col-md-12 col-xs-9" style="color: grey">Enter text below</h5>
                                    <div class="col-md-9 col-xs-9">
                                    <textarea class="form-control" data-event="keyup" data-label="text"
                                              id="enter-text"></textarea>
                                    </div>
                                    <div class="col-md-3 web" style="padding-left: 0">
                                        <button id="add_text" class="add_item_text btn-text btn btn-info" role="button">Add Text</button>
                                        <button id="update_text" class="update_item_text btn-text btn btn-info" style="display:none" role="button">Update Text</button>
                                    </div>
                                    <div class="col-xs-3 mobile" style="padding-left: 0">
                                        <button id="update_text" class="update_item_text btn-text btn btn-info" role="button">Update</button>
                                    </div>
                                </div>
                                <div class="edit_text_info margin-top-20" style="display: none;">
                                    <div class="row toolbar-action-fonts">
                                        <div class="col-xs-4">
                                            <div class="form-group">
                                                <strong><?php echo $lang['designer_clipart_edit_choose_a_font']; ?></strong>
                                                <div class="dropdown" data-target="#dg-fonts" data-toggle="modal">
                                                    <a id="txt-fontfamily" class="drop-font pull-left btn btn-default"
                                                       href="javascript:void(0)">
                                                        <?php echo $lang['designer_clipart_edit_arial']; ?>
                                                    </a>
                                                    <span
                                                        class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-s pull-right ui-pull-right"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-3 row padding-right-0">
                                            <div class="form-group">
                                                <strong class="full-width" style="display:inline-block"><?php echo $lang['designer_clipart_edit_text_color']; ?></strong>
                                                <div class="list-colors">
                                                    <a class="dropdown-color" id="txt-color"
                                                       title="Click to change color"
                                                       href="javascript:void(0)" data-color="black" data-label="color"
                                                       style="background-color:black">
                                                <span
                                                    class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-s"></span>
                                                    </a>
                                                <span id="txt-color-text" class="text-color"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-5">
                                            <strong><?php echo $lang['designer_clipart_edit_out_line']; ?></strong>
                                            <div class="option-outline">
                                                <div class="list-colors">
                                                    <a class="dropdown-color bg-none" id="txt-outline-color" data-label="outline"
                                                       data-placement="top"
                                                       data-original-title="Click to change color"
                                                       href="javascript:void(0)"
                                                       data-color="none">
                                                <span
                                                    class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-s"></span>
                                                    </a>
                                                    <span class="text-color" id="txt-outline-color-text"></span>
                                                </div>
                                                <div class="dropdown-outline">
                                                    <a data-toggle="dropdown" class="dg-outline-value"
                                                       href="javascript:void(0)"><span
                                                            class="outline-value pull-left">0</span> <span
                                                            class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-s pull-right"></span></a>
                                                    <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                                                        <li>
                                                            <div id="dg-outline-width"></div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row toolbar-action-style">
                                        <div class="col-xs-6">
                                            <strong><?php echo $lang['designer_clipart_edit_text_style']; ?></strong>
                                            <div id="text-style">
                                                <span id="text-style-i"
                                                      class="text-update btn btn-default btn-xs glyphicons italic glyphicons-12"
                                                      data-event="click" data-label="styleI"></span>
                                                <span id="text-style-b"
                                                      class="text-update btn btn-default btn-xs glyphicons bold glyphicons-12"
                                                      data-event="click" data-label="styleB"></span>
                                                <span id="text-style-u"
                                                      class="text-update btn btn-default btn-xs glyphicons text_underline glyphicons-12"
                                                      data-event="click" data-label="styleU"></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            <strong><?php echo $lang['designer_clipart_edit_text_align']; ?></strong>
                                            <div id="text-align">
                            <span id="text-align-left"
                                  class="text-update btn btn-default btn-xs glyphicons align_left glyphicons-12"
                                  data-event="click" data-label="alignL"></span>
                                                <span id="text-align-center"
                                                      class="text-update btn btn-default btn-xs glyphicons align_center glyphicons-12"
                                                      data-event="click" data-label="alignC"></span>
                                                <span id="text-align-right"
                                                      class="text-update btn btn-default btn-xs glyphicons align_right glyphicons-12"
                                                      data-event="click" data-label="alignR"></span>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row" style="display:none;">
                                        <div class="col-lg-12">
                                            <small><?php echo $lang['designer_clipart_edit_adjust_shape']; ?></small>
                                            <div id="dg-shape-width"></div>
                                        </div>
                                    </div>
                                    <div class="row toolbar-action-functions margin-top-20">
                                        <div class="col-xs-6">
                                            <span class="text_align">
                                                <strong>
                                                    <?php echo $lang['designer_clipart_edit_transform']; ?>
                                                </strong>
                                            </span>
                                            <span class="btn btn-default btn-xs" onclick="design.item.flip('x')">
                                                <i class="glyphicons transfer glyphicons-12"></i>
                                                <?php echo $lang['designer_clipart_edit_flip']; ?>
                                            </span>
                                        </div>
                                        <div class="col-xs-6">
                                             <span class="text_align">
                                            <strong><?php echo $lang['designer_clipart_edit_align_with_shirft']; ?></strong>
                                                 </span>
                                            <span class="btn btn-default btn-xs" onclick="design.item.center()">
                                                <i class="glyphicons align_center glyphicons-12"></i>
                                                <?php echo $lang['designer_clipart_edit_center']; ?>
                                            </span>
                                        </div>
                                    </div>

                                    <div class="row toolbar-action-size margin-top-20">
                                        <div class="col-xs-4 col-lg-4 align-left padding-right-0">
                                            <div class="form-group">
                                                <strong><?php echo $lang['designer_clipart_edit_unlock_proportion']; ?></strong>
                                                <br/>
                                                <input type="checkbox" class="ui-lock" id="text-lock" />
                                                <span>Free Transform"</span>
                                            </div>
                                        </div>
                                        <div class="col-xs-2 col-lg-2 align-center">
                                            <div class="form-group">
                                                <strong><?php echo $lang['designer_clipart_edit_width']; ?></strong>
                                                <br/>
                                                <input type="text" size="2" id="text-width" readonly disabled>
                                            </div>
                                        </div>
                                        <div class="col-xs-2 col-lg-2 align-center">
                                            <div class="form-group">
                                                <strong><?php echo $lang['designer_clipart_edit_height']; ?></strong>
                                                <br/>
                                                <input type="text" size="2" id="text-height" readonly disabled>
                                            </div>
                                        </div>
                                        <div class="toolbar-action-rotate col-xs-4 col-lg-4 align-center">
                                            <div class="form-group">
                                                <strong><?php echo $lang['designer_clipart_edit_rotate']; ?></strong>
                                                <div class="col-lg-12 align-center">
                                                    <span class="rotate-values"><input type="text" value="0"
                                                                                       class="input-small rotate-value"
                                                                                       id="text-rotate-value"/>&deg;</span>
                                                    <span class="rotate-refresh glyphicons refresh"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                                <div class="margin-top-20 col-xs-12 mobile">
                                    <button id="add_text" class="add_item_text btn-primary full-width btn btn-info" role="button">Add Text</button>
                                </div>
                            </div>
                        </div>
                        <!-- END Text edit options -->
                        <!-- Begin team edit options-->
                        <div id="tab-add_item_team" class="dg-options tab-pane tab-padding" role="tabpanel">
<!--                            <div class="dg-options-toolbar">-->
<!--                                <div aria-label="First group" role="group" class="btn-group btn-group-lg">-->
<!--                                    <button class="btn btn-default" type="button" data-type="name-number">-->
<!--                                        <i class="glyphicons soccer_ball glyphicons-small"></i>-->
<!--                                        <small class="clearfix">Add Name</small>-->
<!--                                    </button>-->
<!--                                    <button class="btn btn-default" type="button" data-type="teams">-->
<!--                                        <i class="fa fa-users"></i>-->
<!--                                        <small class="clearfix">Teams</small>-->
<!--                                    </button>-->
<!--                                    <button class="btn btn-default" type="button" data-type="add-list">-->
<!--                                        <i class="fa fa-user"></i>-->
<!--                                        <small class="clearfix">Add Team</small>-->
<!--                                    </button>-->
<!--                                </div>-->
<!--                            </div>-->

                            <div class="dg-options-content">
                                <input type="hidden" id="team-height" value="">
                                <input type="hidden" id="sel-name" value="0">
                                <input type="hidden" id="sel-num" value="0">
                                <input type="hidden" id="team-width" value="">
                                <input type="hidden" id="team-rotate-value" value="0">
                                <div class="row text_edit_header mobile">
                                    <div class="col-md-12 col-xs-8 nav-info left ">
                                    </div>
                                    <div class="col-xs-4 center nav-info change-view-mobile">
                                    <span class="closeBtn">
                                           X Close
                                    </span>
                                    </div>
                                </div>
                                <div class="row toolbar-action-name-number">
                                    <div class="col-md-12 position-static">
                                        <div class="col-xs-6 team-add-check-area">
                                            <label>
                                                <input type="checkbox" id="team_add_name"
                                                       onclick="design.team.addName(this)"
                                                       autocomplete="off">
                                                <strong
                                                    class="text align-top"><?php echo $lang['designer_clipart_edit_add_name']; ?></strong>
                                            </label>
                                        </div>
                                        <div class="col-xs-6 team-add-check-area">
                                            <label>
                                                <input type="checkbox" id="team_add_number"
                                                       onclick="design.team.addNumber(this)"
                                                       autocomplete="off">
                                                <strong
                                                    class="text align-top"><?php echo $lang['designer_clipart_edit_add_number']; ?></strong>
                                            </label>
                                        </div>

                                        <div class="form-group col-xs-6">
                                            <div class="col-xs-4 position-static">
                                                <div class="list-colors">
                                                    <a class="dropdown-color" id="team-name-color"
                                                       data-placement="right"
                                                       title="Click to change color" href="javascript:void(0)"
                                                       data-color="000000"
                                                       data-label="colorT" style="background-color:black">
                                                        <span
                                                            class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-s team-name"></span>
                                                    </a>
                                                    <span class="text-color" id="team-name-color-text">Black</span>
                                                </div>
                                            </div>
                                            <div class="col-xs-8">
                                                <div data-toggle="modal" data-target="#dg-fonts" class="dropdown">
                                                    <a href="javascript:void(0)"
                                                       class="drop-font pull-left btn btn-default"
                                                       id="txt-team-name-fontfamly"><?php echo $lang['designer_clipart_edit_arial']; ?></a>
                                                    <span
                                                        class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-s pull-right ui-pull-right"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group col-xs-6">
                                            <div class="col-xs-4 position-static">
                                                <div class="list-colors">
                                                    <a class="dropdown-color" id="team-number-color"
                                                       data-placement="right"
                                                       title="Click to change color" href="javascript:void(0)"
                                                       data-color="000000"
                                                       data-label="colorT" style="background-color:black">
                                                        <span
                                                            class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-s team-number"></span>
                                                    </a>
                                                    <span class="text-color" id="team-number-color-text">Black</span>
                                                </div>
                                            </div>
                                            <div class="col-xs-8">
                                                <div data-toggle="modal" data-target="#dg-fonts" class="dropdown">
                                                    <a href="javascript:void(0)"
                                                       class="drop-font pull-left btn btn-default"
                                                       id="txt-team-number-fontfamly"><?php echo $lang['designer_clipart_edit_arial']; ?></a>
                                                    <span
                                                        class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-s pull-right ui-pull-right"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row toolbar-action-teams">
                                    <div class="col-md-12 name-number-data">
                                        <span>
                                            <strong
                                                class="text"><?php echo $lang['designer_clipart_edit_enter_your_full_list']; ?></strong>
                                        </span>
                                    </div>


                                    <div class="col-md-12 div-box-team-list">
                                        <!--                                        <table id="item_team_list" class="table table-bordered">-->
                                        <!--                                            <thead>-->
                                        <!--                                            <tr>-->
                                        <!--                                                <td width="70%" class="inp-team-name">-->
                                        <!--                                                    <strong>-->
                                        <?php //echo $lang['designer_clipart_edit_name']; ?><!--</strong>-->
                                        <!--                                                </td>-->
                                        <!--                                                <td width="10%" class="inp-team-num">-->
                                        <!--                                                    <strong>-->
                                        <?php //echo $lang['designer_clipart_edit_number']; ?><!--</strong>-->
                                        <!--                                                </td>-->
                                        <!--                                                <td width="20%">-->
                                        <!--                                                    <strong>-->
                                        <?php //echo $lang['designer_clipart_edit_size']; ?><!--</strong>-->
                                        <!--                                                </td>-->
                                        <!--                                            </tr>-->
                                        <!--                                            </thead>-->
                                        <!--                                            <tbody>-->
                                        <!--                                            <tr>-->
                                        <!--                                                <td align="left" class="inp-team-name"></td>-->
                                        <!--                                                <td align="center" class="inp-team-num"></td>-->
                                        <!--                                                <td align="center"></td>-->
                                        <!--                                            </tr>-->
                                        <!--                                            </tbody>-->
                                        <!--                                        </table>-->
                                        <!--name-->
                                        <div class="col-md-12">
                                            <table class="table" id="table-team-list">
                                                <thead>
                                                <tr>
                                                    <th width="5%"><?php echo $lang['designer_team_order']; ?></th>
                                                    <th width="40%"
                                                        class="inp-team-name"><?php echo $lang['designer_team_name']; ?></th>
                                                    <th width="25%"
                                                        class="inp-team-num"><?php echo $lang['designer_team_number']; ?></th>
                                                    <th width="20%"><?php echo $lang['designer_team_size']; ?></th>
                                                    <th width="10%"><?php echo $lang['designer_team_remove']; ?></th>
                                                </tr>
                                                </thead>
                                                <tbody></tbody>
                                            </table>
                                        </div>
                                        <!--end table-->
                                    </div>
                                </div>
                                <div class="clear-line"></div>
                                <br>
                                <div class="row toolbar-action-add-list">
                                    <div class="col-md-12">
                                        <center>
                                            <!--                                            <button class="btn btn-primary input-sm" data-target="#dg-item_team_list"-->
                                            <!--                                                    data-toggle="modal" type="button"-->
                                            <!--                                                    onclick="design.team.checkSelect()">-->
                                            <?php //echo $lang['designer_clipart_edit_add_list_name']; ?><!--</button>-->
                                            <div class="alert alert-danger fade in col-md-8 full-width"
                                                 id="team_msg_error"
                                                 style="display: none;"></div>
                                            <button class="btn btn-primary input-sm pull-right full-width"
                                                    style="height: 50px;" onclick="design.team.addMember();"
                                                    type="button"><?php echo $lang['designer_clipart_edit_add_list_name']; ?></button>
                                        </center>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END team edit options -->
                        <div class="dg-options tab-pane tab-padding" role="tabpanel" id="tab-add_item_clipart">
                            <div class="row nav-clipart mobile">

                                <div class="col-xs-8 center nav-info">

                                </div>
                                <div class="col-xs-4 center nav-info change-view-mobile">
                                    <span class="closeBtn">
                                           X Close
                                    </span>
                                </div>
                            </div>
                            <div class="cliparts-1 row">
                                <div class="col-xs-12 col-md-12">
                                    <div class="input-group search-area full-width">
                                        <input type="text" id="art-keyword" autocomplete="off" onkeypress="return design.designer.art.keyPress(event)"
                                               class="form-control input-sm form-search"
                                               placeholder="Search for...">
                                        <span class="input-group-btn form-search" style="width: 80px;">
							                <button class="btn btn-info btn-sm btn-search"
                                                    onclick="design.designer.art.arts(0)"
                                                    type="button">Search</button>
						                </span>
                                    </div>
                                    <div class="clear-line"></div>
                                </div>
                                <div class="col-xs-12 col-md-12">
                                    <h5><strong>CLIPART CATEGORIES</strong></h5>
                                </div>
                                <div id="dag-art-categories" class="col-xs-12 col-md-12"></div>
                            </div>
                            <div class="cliparts-1-sub row" style="display: none;">
                                <div class="row nav-clipart">
                                    <div class="col-md-4 col-xs-4 text-left backButton">
                                        <a href="javascript:void(0)" class="back-cliparts btn-link">
                                            <span class="glyphicon glyphicon-arrow-left"></span>
                                            Back
                                        </a>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-12">

                                    <div class="clipart-sub-list"></div>
                                </div>
                            </div>
                            <div class="cliparts-2 row" style="display: none;">
                                <div class="row nav-clipart">
                                    <div class="col-md-4 col-xs-4 text-left backButton">
                                        <a href="javascript:void(0)" class="back-cliparts btn-link list-image">
                                            <span class="glyphicon glyphicon-arrow-left"></span>
                                            Back
                                        </a>
                                    </div>
                                    <div class="col-md-8 col-xs-8 left nav-info">
                                    <span class="cliparts-title">
                                    </span>
                                    </div>
                                    <div class="col-xs-4 center nav-info change-view-mobile">
                                    <span class="closeBtn">
                                           X Close
                                    </span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-12">
                                    <div id="dag-list-arts"></div>
                                </div>
                            </div>
                            <div class="cliparts-3 row " style="display: none;">
                                <div class="row nav-clipart">
                                    <div class="col-md-4 col-xs-4 text-left btn-close-clipart">
                                        <a href="javascript:void(0)" class="back-cliparts btn-link">
                                            <span class="glyphicon glyphicon-arrow-left"></span>
                                            Back
                                        </a>
                                    </div>
                                    <div class="col-md-4 col-xs-4 center nav-info">
                                    <span class="detail-title">
                                    <?php echo $lang['designer_clipart_edit_size_position']; ?>
                                    </span>
                                    </div>
                                    <div class="col-xs-4 center nav-info change-view-mobile">
                                    <span class="closeBtn">
                                           X Close
                                    </span>
                                    </div>
                                </div>

                                <div class="popover-content">

                                    <!-- BEGIN clipart edit options -->
                                    <div id="options-add_item_clipart">

                                        <div class="dg-options-content">
                                            <div class="row toolbar-action-edit">
                                                <div id="item-print-colors" class="col-xs-6 col-md-6"
                                                     style="display:none">
                                                </div>
                                                <div id="clipart-colors" class="col-xs-9 col-md-9 padding-0">
                                                    <div class="form-group col-lg-12 text-left position-static padding-0">
                                                        <strong><?php echo $lang['designer_clipart_edit_choose_your_color']; ?></strong>
                                                        <br/>
                                                        <div id="list-clipart-colors" class="list-colors"></div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-3 col-lg-3">
                                                    <strong><?php echo $lang['designer_clipart_edit_rotate']; ?></strong>
                                                    <div><span class="rotate-values"><input type="text" value="0"
                                                                                            class="input-small rotate-value"
                                                                                            id="clipart-rotate-value"/>&deg;</span>
                                                        <span class="rotate-refresh glyphicons refresh"></span></div>
                                                </div>

                                            </div>
                                            <div class="row toolbar-action-size">
                                                <div class="col-xs-6 col-lg-6 align-left">
                                                    <div class="form-group">
                                                        <strong><?php echo $lang['designer_clipart_edit_unlock_proportion']; ?></strong>
                                                        <br/>
                                                        <input type="checkbox" class="ui-lock" id="clipart-lock"/>
                                                    </div>
                                                </div>
                                                <div class="col-xs-3 col-lg-3 align-center">
                                                    <div class="form-group">
                                                        <strong><?php echo $lang['designer_clipart_edit_width']; ?></strong>
                                                        <br/>
                                                        <input type="text" size="2" id="clipart-width" readonly
                                                               disabled>
                                                    </div>
                                                </div>
                                                <div class="col-xs-3 col-lg-3 align-center">
                                                    <div class="form-group">
                                                        <strong><?php echo $lang['designer_clipart_edit_height']; ?></strong>
                                                        <br/>
                                                        <input type="text" size="2" id="clipart-height" readonly
                                                               disabled>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row toolbar-action-functions margin-top-20">
                                                <div class="col-xs-6">
                                            <span class="text_align">
                                                <strong>
                                                    <?php echo $lang['designer_clipart_edit_transform']; ?>
                                                </strong>
                                            </span>
                                                    <span class="btn btn-default btn-xs"
                                                          onclick="design.item.flip('x')">
								<i class="glyphicons transfer glyphicons-12"></i>
                                                        <?php echo $lang['designer_clipart_edit_flip']; ?>
							</span>
                                                </div>
                                                <div class="col-xs-6">
                                             <span class="text_align">
                                            <strong><?php echo $lang['designer_clipart_edit_align_with_shirft']; ?></strong>
                                                 </span>
                                                    <span class="btn btn-default btn-xs" onclick="design.item.center()">
								<i class="glyphicons align_center glyphicons-12"></i>
                                                        <?php echo $lang['designer_clipart_edit_center']; ?>
							</span>
                                                </div>
                                            </div>
                                            <div class="row toolbar-action-functions margin-top-20">
                                                <div class="col-xs-12 paint-tools">
                                                    <button class="btn btn-primary col-xs-12" onclick="design.item.showPopupPaint()">
                                                        <img src="/assets/images//icon/paintcan.gif">
                                                        <text>Paint Tool</text>
                                                    </button>
                                                </div>
                                                </div>
                                            <div class="row toolbar-action-functions">
                                                <div class="col-lg-12 form-group">


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="center-area" class="col-center align-center mobileHide">

            <!-- Begin sidebar -->

            <!-- design area -->
            <div id="design-area" class="div-design-area">
                <div id="app-wrap" class="div-design-area">
                    <?php if ($product == false || (isset($product->design) && $product->design == false)) { ?>
                        <div id="view-front" class="labView active">
                            <div class="product-design">
                                <strong><?php echo $lang['designer_product_data_found']; ?></strong>
                            </div>
                        </div>
                    <?php } else { ?>

                        <!-- begin front design -->
                        <div id="view-front" class="labView active">
                            <div class="product-design"></div>
                            <div class="design-area">
                                <div class="content-inner"></div>
                            </div>
                        </div>
                        <!-- end front design -->

                        <!-- begin back design -->
                        <div id="view-back" class="labView">
                            <div class="product-design"></div>
                            <div class="design-area">
                                <div class="content-inner"></div>
                            </div>
                        </div>
                        <!-- end back design -->

                        <!-- begin left design -->
                        <div id="view-left" class="labView">
                            <div class="product-design"></div>
                            <div class="design-area">
                                <div class="content-inner"></div>
                            </div>
                        </div>
                        <!-- end left design -->

                        <!-- begin right design -->
                        <div id="view-right" class="labView">
                            <div class="product-design"></div>
                            <div class="design-area">
                                <div class="content-inner"></div>
                            </div>
                        </div>
                        <!-- end right design -->

                    <?php } ?>
                    <div class="detail-info">Front: 0 color / Back: 0 color</div>
                </div>
            </div>


        </div>

        <div id="right-area" class="col-right mobileHide">


            <div class="tools-area">
                <ul class="dg-tools">
                    <li class="default">
                        <a data-target="#dg-rq-artist" id="tools-help" data-toggle="modal" href="javascript:void(0)">
                            <i class="glyphicons circle_question_mark"></i>
                            <span><?php echo $lang['designer_request_artist']; ?></span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" data-type="zoom" title="Zoom" class="dg-tool">
                            <i class="fa fa-search-plus"></i>
                            <span>Zoom</span>
                        </a>
                    </li>
                    <li class="default">
                       <a data-target="#dg-comment" id="tools-comment" data-toggle="modal" href="javascript:void(0)">
                            <i class="glyphicons circle_question_mark"></i>
                            <span>comment</span>
                        </a>
                    </li>

                    <li>
                        <a href="javascript:void(0)" data-type="share" class="dg-tool tools-share">
                            <i class="fa fa-weixin"></i>
                            <span>Share</span>
                        </a>
                    </li>
                    <li style="display: none">
                        <a href="javascript:void(0)" data-type="share" class="dg-tool tools-share active">
                            <i class="fa fa-weixin"></i>
                            <span>Share</span>
                        </a>
                    </li>
                    <div class="dg-share" style="display:none">
                        <ul class="list-share pull-right">
                            <li class="icon-40 share-email" data-type="email"></li>
                            <li class="icon-40 share-facebook" data-type="facebook"></li>
                            <li class="icon-40 share-twitter" data-type="twitter"></li>
                            <li class="icon-40 share-pinterest" data-type="pinterest"></li>

                        </ul>
                    </div>
                </ul>
            </div>
            <button type="button" class="btn btn-warning btn-quote mobile btnSave"
                    onclick="return design.team.resetTeam()"><i
                    class="fa fa-usd"></i> SAVE
            </button>

            <div class="product-prices">
                <div class="dg-box div-layers no-active ">
                    <div class="layers-toolbar">
                        <button type="button" class="btn btn-default">
                            <i class="fa fa-long-arrow-down"></i>
                            <i class="fa fa-long-arrow-up"></i>
                        </button>
                        <button type="button" class="btn btn-default btn-sm">
                            <i class="fa fa-angle-right"></i>
                        </button>
                    </div>

                    <div class="accordion">
                        <h3><?php echo $lang['designer_menu_login_layers']; ?></h3>
                        <div id="dg-layers">
                            <ul id="layers">
                            </ul>
                        </div>
                    </div>
                </div>
                <!--                            <div id="product-price">-->
                <!--                                <span class="product-price-title">-->
                <?php //echo $lang['designer_right_total']; ?><!--</span>-->
                <!--                                <div class="product-price-list">-->
                <!--                                <span-->
                <!--                                    id="product-price-old">--><?php //echo settingValue($setting, 'currency_symbol', '$'); ?>
                <!--                                    <span class="price-old-number">123</span></span>-->
                <!--                                    <span-->
                <!--                                        id="product-price-sale">--><?php //echo settingValue($setting, 'currency_symbol', '$'); ?>
                <!--                                        <span class="price-sale-number">100</span></span>-->
                <!--                                </div>-->
                <!--                                <span class="price-restart" title="Click to get price" onclick="design.ajax.getPrice()"><i-->
                <!--                                        class="glyphicons restart"></i></span>-->
                <!--                            </div>-->
                <!--							<button type="button" class="btn btn-warning btn-addcart" onclick="design.ajax.addJs(this)"><i class="glyphicons shopping_cart"></i><?php echo $lang['designer_right_buy_now']; ?></button>								-->

            </div>
<!--            <div class="align-center" id="right-options">-->
            <div class="" id="product-thumbs"></div>
            <p><button type="button" class="btn btn-warning btn-quote web "
                       onclick="design.designsaveBoxAll()">
                    <span ">GET PRICE</span>
                    <span>-or-</span>
                    <span>save design</span>
                </button>
            </p>


            <div class="product-price-list hidden">
                <span class="product-price-title"><?php echo $lang['designer_right_total']; ?></span>
                <span id="product-price-old"><?php echo settingValue($setting, 'currency_symbol', '$'); ?><span
                        class="price-old-number">123</span></span>
                <span id="product-price-sale"><?php echo settingValue($setting, 'currency_symbol', '$'); ?><span
                        class="price-sale-number">100</span></span>
            </div>
<!--            </div>-->

        </div>
    </div>
</div>
<!-- End main -->
</div>

<div id="screen_colors_body" style="display:none;">
    <div id="screen_colors">
        <div class="screen_colors_top">
            <div class="col-xs-5 col-md-5 text-left" id="screen_colors_images">
            </div>
            <div class="col-xs-7 col-md-7 text-left">
                <h4><?php echo $lang['designer_color_select_ink_colors']; ?></h4>
                <span class="help-block"><?php echo $lang['designer_color_select_the_colors_that_appear']; ?></span>
                <span class="help-block"><?php echo $lang['designer_color_this_helps_us_determine']; ?></span>
                <p><strong> <?php echo $lang['designer_color_note']; ?></strong></p>
                <span id="screen_colors_error"></span>
                <div id="screen_colors_list" class="list-colors"></div>
                <p>Selected: <span id="seced_color"></span></p>
                
            </div>
        </div>
        <div class="screen_colors_botton">
            <button type="button" class="btn btn-primary"
                    onclick="design.item.setColor()"><?php echo $lang['designer_color_choose_colors']; ?></button>
        </div>
    </div>
</div>

<div id="dg-modal">
    <!-- Begin product info -->
    <div class="modal fade" id="modal-product-info" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="products-detail col-sm-12">
                        <div class="product-detail">
                            <div class="row text-right">
                                <button type="button" class="close" data-dismiss="modal"
                                        aria-hidden="true">&times;</button>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-md-6">
                                    <img src="<?php echo base_url($product->image); ?>"
                                         class="img-responsive img-thumbnail product-detail-image"
                                         alt="<?php echo $product->title; ?>"/>
                                </div>
                                <div class="col-xs-6 col-md-6">
                                    <h3 class="margin-top product-detail-title"><?php echo $product->title; ?></h3>
                                    <p><?php echo $lang['designer_product_id']; ?>: <strong
                                            class="product-detail-id"><?php echo $product->id; ?></strong></p>
                                    <!--<p><?php echo $lang['designer_product_sku']; ?>: <strong class="product-detail-sku"><?php echo $product->sku; ?></strong></p>-->
                                    <p class="product-detail-short_description"><?php echo $product->short_description; ?></p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End product info -->

    <!-- Begin product size -->
    <div class="modal fade" id="modal-product-size" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="text-right clearfix">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="row">
                        <div class="col-md-12 product-detail-size">
                            <?php echo $product->size; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End product info -->

    <!-- begin select quality -->
    <form method="POST" id="tool_cart" name="tool_cart" action="">
        <div class="product-info" id="product-attributes">
            <?php if (isset($product->attribute)) { ?>
                <?php echo $product->attribute; ?>
            <?php } ?>
        </div>
    </form>
    <!-- begin select quality -->

    <!-- Begin Login -->
    <div class="modal fade" id="f-login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div id="f-login-content" class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title"
                        id="myModalLabel"><?php echo $lang['designer_user_login_now_or_sign_up']; ?></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <!-- login form -->
                        <div class="col-md-6">
                            <h3><?php echo $lang['designer_user_login']; ?></h3>
                            <form id="fr-login" role="form" style="margin-bottom: 5px;">
                                <div class="form-group">
                                    <label><?php echo $lang['designer_user_your_email']; ?>:</label>
                                    <input type="text" name="data[email]" id="login-email"
                                           class="form-control input-sm validate required"
                                           data-msg="<?php echo $lang['designer_user_email_validate_msg']; ?>"
                                           data-type="email"
                                           placeholder="<?php echo $lang['designer_user_your_email']; ?>">
                                </div>
                                <div class="form-group">
                                    <label><?php echo $lang['designer_user_your_password']; ?>:</label>
                                    <input type="password" name="data[password]" id="login-password"
                                           class="form-control input-sm validate required"
                                           data-msg="<?php echo $lang['designer_user_password_validate_msg']; ?>"
                                           data-maxlength="32" data-minlength="6"
                                           placeholder="<?php echo $lang['designer_user_your_password']; ?>">
                                </div>
                                <a href="javascript:void(0)" title="" class="btn btn-default btn-primary"
                                   onclick="facebook_login()">
                                    <span class="login-facebook"></span>
                                    <?php echo $lang['designer_user_login_with_facebook']; ?>
                                </a>
                                <button type="button" onclick="login(this)" autocomplete="off"
                                        class="btn btn-default btn-warning"
                                        data-loading-text="Loading"><?php echo $lang['designer_user_login_btn']; ?></button>
                                <?php echo $this->auth->getToken(); ?>
                                <input type="hidden" name="ajax" value="1">
                            </form>

                            <a id="click_forgot"
                               href="javascript:void(0)"><?php echo $lang['designer_user_i_forgot_password']; ?></a>
                        </div>

                        <!-- create account -->
                        <div class="col-md-6">
                            <h3><?php echo $lang['designer_user_create_account']; ?></h3>
                            <form id="fr-register" role="form">
                                <div class="form-group">
                                    <label><?php echo $lang['designer_user_username']; ?>:</label>
                                    <input type="text" name="data[username]" id="create_username"
                                           class="form-control input-sm validate required"
                                           data-msg="<?php echo $lang['designer_user_username_validate_msg']; ?>"
                                           data-maxlength="200" data-minlength="2"
                                           placeholder="<?php echo $lang['designer_user_username']; ?>">
                                </div>
                                <div class="form-group">
                                    <label><?php echo $lang['designer_user_email_address']; ?>:</label>
                                    <input type="email" name="data[email]"
                                           class="form-control input-sm validate required" id="create_email"
                                           data-msg="<?php echo $lang['designer_user_email_validate_msg']; ?>"
                                           data-type="email"
                                           placeholder="<?php echo $lang['designer_user_enter_email']; ?>">
                                </div>
                                <div class="form-group">
                                    <label><?php echo $lang['designer_user_password']; ?>:</label>
                                    <input type="password" class="form-control input-sm validate required"
                                           name="data[password]" id="create_password"
                                           data-msg="<?php echo $lang['designer_user_password_validate_msg']; ?>"
                                           data-maxlength="32" data-minlength="6"
                                           placeholder="<?php echo $lang['designer_user_password']; ?>">
                                </div>
                                <button type="button" onclick="login('register')" autocomplete="off"
                                        data-loading-text="<?php echo $lang['designer_user_login']; ?>Loading"
                                        class="btn btn-default btn-primary"><?php echo $lang['designer_user_register_btn']; ?></button>
                                <?php echo $this->auth->getToken(); ?>
                                <input type="hidden" name="ajax" value="1">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="f-forgot-content" class="modal-dialog" style="display:none">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><?php echo $lang['designer_user_forgot_password']; ?></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <form id="fr-forgot" role="form" style="margin-bottom: 5px;">
                                    <div class="form-group" style="display: table; width: 100%;">
                                        <label class="col-md-4"><?php echo $lang['designer_user_your_email']; ?>
                                            :</label>
                                        <div class="col-md-6">
                                            <input type="text" name="email" id="forgot-email"
                                                   class="form-control input-sm validate required"
                                                   data-msg="<?php echo $lang['designer_user_email_validate_msg']; ?>"
                                                   data-type="email"
                                                   placeholder="<?php echo $lang['designer_user_your_email']; ?>">
                                        </div>
                                    </div>
                                    <div class="form-group" style="display: table; width: 100%;">
                                        <label class="col-md-4"><?php echo $lang['designer_user_new_password']; ?>
                                            :</label>
                                        <div class="col-md-6">
                                            <input type="password" class="form-control input-sm validate required"
                                                   name="forgot-password" id="forgot-password"
                                                   data-msg="<?php echo $lang['designer_user_new_password_validate_msg']; ?>"
                                                   data-maxlength="32" data-minlength="6"
                                                   placeholder="<?php echo $lang['designer_user_new_password']; ?>">
                                        </div>
                                    </div>
                                    <div class="form-group" style="display: table; width: 100%;">
                                        <label
                                            class="col-md-4"><?php echo $lang['designer_user_confirm_new_password']; ?>
                                            :</label>
                                        <div class="col-md-6">
                                            <input type="password" class="form-control input-sm validate required"
                                                   name="forgot-cfpassword" id="forgot-cfpassword"
                                                   data-msg="<?php echo $lang['designer_user_confirm_new_password_validate_msg']; ?>"
                                                   data-maxlength="32" data-minlength="6"
                                                   placeholder="<?php echo $lang['designer_user_confirm_new_password']; ?>">
                                        </div>
                                    </div>
                                    <div class="form-group" style="display: table; width: 100%;">
                                        <label class="col-md-4"></label>
                                        <div class="col-md-6">
                                            <button type="button" data-loading-text="Loading" id="forgot-button"
                                                    class="btn btn-default btn-warning"
                                                    data-loading-text="<?php echo $lang['designer_loading_btn']; ?>"><?php echo $lang['designer_user_send_btn']; ?></button>
                                            <a style="margin-left: 5px;" id="click_login"
                                               href="javascript:void(0)"><?php echo $lang['designer_user_login_or_register']; ?></a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Login -->


    <!-- Begin clipart -->
    <!--    <div class="modal fade" id="dg-cliparts" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"-->
    <!--         aria-hidden="true">-->
    <!--        <div class="modal-dialog modal-lg">-->
    <!--            <div class="modal-content">-->
    <!--                <div class="modal-header" style="overflow: hidden;">-->
    <!--                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
    <!--                    <div class="col-xs-4 col-md-3">-->
    <!--                        <h4 class="modal-title">--><?php //echo lang('design_art_select'); ?><!--</h4>-->
    <!--                    </div>-->
    <!--                    <div class="col-xs-7 col-md-4">-->
    <!--                        <div class="input-group">-->
    <!--                            <input type="text" id="art-keyword" autocomplete="off" class="form-control input-sm"-->
    <!--                                   placeholder="Search for...">-->
    <!--                            <span class="input-group-btn">-->
    <!--							<button class="btn btn-default btn-sm" onclick="design.designer.art.arts(0)" type="button">Search</button>-->
    <!--						  </span>-->
    <!--                        </div>-->
    <!--                    </div>-->
    <!--                </div>-->
    <!--                <div class="modal-body">-->
    <!--                    <div class="row align-center">-->
    <!--                        <div id="dag-art-panel">-->
    <!--                            <a href="javascript:void(0)" title="Click to show categories">-->
    <!--                                -->
    <?php //echo $lang['designer_clipart_shop_library']; ?><!-- <span class="caret"></span>-->
    <!--                            </a>-->
    <!--                            <a href="javascript:void(0)" title="Click to show categories">-->
    <!--                                -->
    <?php //echo $lang['designer_clipart_store_design']; ?><!-- <span class="caret"></span>-->
    <!--                            </a>-->
    <!--                        </div>-->
    <!--                    </div>-->
    <!---->
    <!--                    <div class="row">-->
    <!--                        <div id="dag-art-categories" class="row col-xs-4 col-md-3"></div>-->
    <!--                        <div class="col-xs-8 col-md-9">-->
    <!--                            <div id="dag-list-arts"></div>-->
    <!--                            <div id="dag-art-detail">-->
    <!--                                <button type="button"-->
    <!--                                        class="btn btn-danger btn-xs">-->
    <?php //echo $lang['designer_close_btn']; ?><!--</button>-->
    <!--                            </div>-->
    <!--                        </div>-->
    <!--                    </div>-->
    <!--                </div>-->
    <!---->
    <!--                <div class="modal-footer">-->
    <!--                    <div class="align-right" id="arts-pagination" style="display:none">-->
    <!--                        <ul class="pagination">-->
    <!--                            <li><a href="javascript:void(0)">&laquo;</a></li>-->
    <!--                            <li class="active"><a href="javascript:void(0)">1</a></li>-->
    <!--                            <li><a href="javascript:void(0)">2</a></li>-->
    <!--                            <li><a href="javascript:void(0)">3</a></li>-->
    <!--                            <li><a href="javascript:void(0)">4</a></li>-->
    <!--                            <li><a href="javascript:void(0)">5</a></li>-->
    <!--                            <li><a href="javascript:void(0)">&raquo;</a></li>-->
    <!--                        </ul>-->
    <!--                        <input type="hidden" value="0" autocomplete="off" id="art-number-page">-->
    <!--                    </div>-->
    <!--                    <div class="align-right" id="arts-add" style="display:none">-->
    <!--                        <div class="art-detail-price"></div>-->
    <!--                        <button type="button"-->
    <!--                                class="btn btn-primary">-->
    <?php //echo $lang['designer_add_design_btn']; ?><!--</button>-->
    <!--                    </div>-->
    <!--                </div>-->
    <!--            </div>-->
    <!--        </div>-->
    <!--    </div>-->
    <!-- End clipart -->
    <!-- Begin save design All -->
    <div class="modal fade" id="dg-savedesignAll" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Enter your design information</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <!-- login form -->
                        <div class="col-md-12">
                            <form id="fr-savedesign" role="form" style="margin-bottom: 5px;">
                                <div class="form-group">
                                    <label>Name your design:</label>
                                    <input type="text" name="dg[name]" id="dg-name"
                                           class="form-control input-sm validate required"
                                           data-msg="Min length 6, max length 32"
                                           data-maxlength="32" data-minlength="6"
                                           placeholder="Enter your design name">
                                </div>
                                <div class="form-group">
                                    <label>Your email:</label>
                                    <input type="email" name="dg[email]" id="dg-email"
                                           class="form-control input-sm validate required"
                                           data-msg="<?php echo $lang['designer_user_email_validate_msg']; ?>"
                                           data-type="email"
                                           placeholder="<?php echo $lang['designer_user_your_email']; ?>">
                                </div>


                                <button type="button" onclick="design.saveStore();" autocomplete="off"
                                        class="btn btn-default btn-warning"
                                        data-loading-text="Loading">Save design</button>
                                <?php echo $this->auth->getToken(); ?>
                                <input type="hidden" name="ajax" value="1">
                                <input type="hidden" class="typeSave"/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Note -->
    <!-- Begin save design -->
    <div class="modal fade" id="dg-savedesign" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Enter your design information</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <!-- login form -->
                        <div class="col-md-12">
                            <form id="fr-savedesign" role="form" style="margin-bottom: 5px;">
                                <div class="form-group">
                                    <label>Name your design:</label>
                                    <input type="text" name="dg[name]" id="dg-name"
                                           class="form-control input-sm validate required"
                                           data-msg="Min length 6, max length 32"
                                           data-maxlength="32" data-minlength="6"
                                           placeholder="Enter your design name">
                                </div>
                                <div class="form-group">
                                    <label>Your email:</label>
                                    <input type="email" name="dg[email]" id="dg-email"
                                           class="form-control input-sm validate required"
                                           data-msg="<?php echo $lang['designer_user_email_validate_msg']; ?>"
                                           data-type="email"
                                           placeholder="<?php echo $lang['designer_user_your_email']; ?>">
                                </div>


                                <button type="button" onclick="design.save()" autocomplete="off"
                                        class="btn btn-default btn-warning"
                                        data-loading-text="Loading">Save design</button>
                                <?php echo $this->auth->getToken(); ?>
                                <input type="hidden" name="ajax" value="1">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Note -->
    <!-- Begin save design -->
    <div class="modal fade" id="dg-savedesign4buy" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Enter your design information</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <!-- login form -->
                        <div class="col-md-12">
                            <form id="fr-savedesign" role="form" style="margin-bottom: 5px;">
                                <div class="form-group">
                                    <label>Name your design:</label>
                                    <input type="text" name="dg[name]" id="dg-nameb"
                                           class="form-control input-sm validate required"
                                           data-msg="Min length 6, max length 32"
                                           data-maxlength="32" data-minlength="6"
                                           placeholder="Enter your design name">
                                </div>
                                <div class="form-group">
                                    <label>Your email:</label>
                                    <input type="email" name="dg[email]" id="dg-emailb"
                                           class="form-control input-sm validate required"
                                           data-msg="<?php echo $lang['designer_user_email_validate_msg']; ?>"
                                           data-type="email"
                                           placeholder="<?php echo $lang['designer_user_your_email']; ?>">
                                </div>

                                <p style="color: #ff0000">Save your design before checkout</p>
                                <button type="button" onclick="design.save4buy()" autocomplete="off"
                                        class="btn btn-default btn-warning"
                                        data-loading-text="Loading">Save and checkout</button>
                                <?php echo $this->auth->getToken(); ?>
                                <input type="hidden" name="ajax" value="1">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Note -->

    <!-- Begin Note -->
    <div class="modal fade" id="dg-note" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><?php echo $lang['designer_note_add_note']; ?></h4>
                </div>
                <div class="modal-body">
                    ...
                </div>
            </div>
        </div>
    </div>
    <!-- End Note -->

    <!-- Begin Help -->
    <div class="modal fade" id="dg-help" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><?php echo $lang['designer_help_designer_help']; ?></h4>
                </div>
                <div class="modal-body">
                    <p><?php echo $lang['designer_help_online_designer_allows_you_to']; ?></p>
                    <ul>
                        <li><?php echo $lang['designer_help_upload_images']; ?></li>
                        <li><?php echo $lang['designer_help_create']; ?></li>
                        <li><?php echo $lang['designer_help_mix_design']; ?></li>
                    </ul>
                    <div id="help-tabs">
                        <ul>
                            <li><a href="help/product.html"><?php echo $lang['designer_help_product_design']; ?></a>
                            </li>
                            <li><a href="help/text.html"><?php echo $lang['designer_help_add_text']; ?></a></li>
                            <li><a href="help/art.html"><?php echo $lang['designer_help_add_art']; ?></a></li>
                            <li><a href="help/upload.html"><?php echo $lang['designer_help_upload']; ?></a></li>
                            <li><a href="help/design_idea.html"><?php echo $lang['designer_help_designer_idea']; ?></a>
                            </li>
                            <li><a href="help/tool.html"><?php echo $lang['designer_help_tools']; ?></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Help -->
    
    <!-- Begin comment -->
    <div class="modal fade" id="dg-comment" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Enter your notes/instructions/comments</h4>
                </div>
                <div class="modal-body">
                    <textarea rows="5" id="design_note" name="design_note" style="width: 100%"></textarea>                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                            data-dismiss="modal">Save</button>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Begin request artist -->
    <div class="modal fade" id="dg-rq-artist" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Please leave your information so we can connect you with a graphic designer!</h4>
                </div>
                <div class="modal-body">
                    <label for="rq-name">Your name</label>
                    <input class="form-control" id="rq_name" value="" placeholder=""><br/>
                    <label for="rq-phone">Phone</label>
                    <input class="form-control" id="rq_phone" value="" placeholder=""><br/>
                    <label for="rq-email">Email</label>
                    <input class="form-control" id="rq_email" value="" placeholder=""><br/>
                    <label for="rq-des">Description</label>
                    <textarea rows="5" id="rq_des" name="rq-des" style="width: 100%"></textarea>                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                             onclick="rqArtist()">Submit</button>
                    <button type="button" class="btn btn-default"
                            data-dismiss="modal" >Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Help -->

    <!-- Begin My design -->
    <div class="modal fade" id="dg-mydesign" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><?php echo $lang['designer_my_design']; ?></h4>
                </div>
                <div class="modal-body">
                    ...
                </div>
            </div>
        </div>
    </div>
    <!-- End my design -->

    <!-- Begin design ideas -->
    <div class="modal fade" id="dg-designidea" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><?php echo $lang['designer_design_ideas']; ?></h4>
                </div>
                <div class="modal-body">
                    ...
                </div>
            </div>
        </div>
    </div>
    <!-- End design ideas -->

    <!-- Begin team -->
    <!--
    <div class="modal fade" id="dg-item_team_list" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><?php echo $lang['designer_team_enter_name']; ?></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="alert alert-danger fade in col-md-8" id="team_msg_error"
                             style="display: none;"></div>
                        <button class="btn btn-primary input-sm pull-right" onclick="design.team.addMember()"
                                type="button"><?php echo $lang['designer_team_add_team_member_btn']; ?></button>
                    </div>
                    <div class="row">
                        <div class="col-md-12 table-box-team-list">
                            <table class="table" id="table-team-list">
                                <thead>
                                <tr>
                                    <th width="5%"><?php echo $lang['designer_team_order']; ?></th>
                                    <th width="40%"
                                        class="inp-team-name"><?php echo $lang['designer_team_name']; ?></th>
                                    <th width="25%"
                                        class="inp-team-num"><?php echo $lang['designer_team_number']; ?></th>
                                    <th width="20%"><?php echo $lang['designer_team_size']; ?></th>
                                    <th width="10%"><?php echo $lang['designer_team_remove']; ?></th>
                                </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                            data-dismiss="modal"><?php echo $lang['designer_close_btn']; ?></button>
                    <button type="button" class="btn btn-primary"
                            onclick="design.team.save()"><?php echo $lang['designer_save_btn']; ?></button>
                </div>
            </div>
        </div>
    </div>
    -->
    <!-- End design ideas -->

    <!-- Begin fonts -->
    <div class="modal fade" id="dg-fonts" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                                aria-expanded="false">
                            <?php echo $lang['designer_fonts_font_categories']; ?> <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu font-categories" role="menu"></ul>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12 list-fonts"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End fonts -->
    <!-- Begin paint -->
    <div class="modal fade" id="dg-paint-tools" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title title-paint-tool">Paint Tools</h4>
                </div>
                <div class="modal-body" id="dg-main-paint">

                    <div class="row content">
                        <div id="dg-mask" class="loading"></div>
                        <div class="result"></div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <button type="button"
                                    class="btn btn-default btn-primary col-md-2" onclick="design.item.savePaintTool()">Save</button>

                            <div class="list-colors col-md-8 color-list-paint">
                                <a class="dropdown-color" id="txt-color"
                                   title="Click to change color"
                                   href="javascript:void(0)" data-color="000000" data-label="color"
                                   style="background-color:black">
                                                <span
                                                    class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-s"></span>
                                </a>
                                <span id="txt-color-text" class="text-color">Black</span>
                                <span class="image-store"></span>
                            </div>
                            <button type="button"
                                    class="btn btn-default col-md-2"  style="float:right" data-dismiss="modal" aria-hidden="true">Cancel</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Begin preview -->
    <div class="modal fade" id="dg-preview" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body" id="dg-main-slider">
                </div>
            </div>
        </div>
    </div>
    <!-- End preview -->
    <!-- Check information remove background -->
    <div class="modal fade" id="dg-removeBackground" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Background Color</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <!-- login form -->
                        <div class="col-md-12">
                                <h5>Do you want to remove background colors</h5>
                            <button type="button"
                                        class="btn btn-default btn-warning removeBG uploadBtn">Remove</button>
                            <button type="button"
                                    class="btn btn-default uploadBtn closeCheckBG"  style="float:right">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End check -->
    <!-- Begin Share -->
    <div class="modal fade" id="dg-share" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4><?php echo $lang['designer_share_save_completed']; ?></h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
<!--                        <label for="exampleInputEmail1">--><?php //echo $lang['designer_share_your_design_link']; ?><!--:</label>-->
<!--                        <input type="text" class="form-control" id="link-design-saved" value="" readonly>-->
                        <button type="button" class="btn btn-warning resent-mail" onclick="design.resentMail()">
                            <span>EMAIL ME my design</span>
                        </button>
                        <input type="hidden" class="link-send-mail"/>
                        <input type="hidden" class="email"/>

                    </div>

                    <div class="form-group row">
                        <label class="col-md-2" style="line-height: 24px;"><?php echo $lang['designer_share']; ?>
                            : </label>
                        <div class="col-md-1">
                            <a href="javascript:void(0)" onclick="design.share.email()" class="icon-25 share-email"
                               title="Email"></a>
                        </div>
                        <div class="col-md-1">
                            <a href="javascript:void(0)" onclick="design.share.facebook()"
                               class="icon-25 share-facebook" title="Facebook"></a>
                        </div>
                        <div class="col-md-1">
                            <a href="javascript:void(0)" onclick="design.share.twitter()" class="icon-25 share-twitter"
                               title="Twitter"></a>
                        </div>
                        <div class="col-md-1">
                            <a href="javascript:void(0)" onclick="design.share.pinterest()"
                               class="icon-25 share-pinterest" title="Pinterest"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Share -->
</div>

<!-- BEGIN colors system -->
<div class="o-colors" style="display:none;">
    <div class="other-colors"></div>
</div>
<!-- END colors system -->


<div id="cacheText"></div>

<?php if (isset($product->design)) { ?>
    <script type="text/javascript">
        var min_order = '<?php echo $product->min_order; ?>';
        var product_id = '<?php echo $product->id; ?>';
        var print_type = '<?php echo $product->print_type; ?>';
        var uploadSize = [];
        uploadSize['max'] = '<?php echo settingValue($setting, 'site_upload_max', '10'); ?>';
        uploadSize['min'] = '<?php echo settingValue($setting, 'site_upload_min', '0.5'); ?>';
        var items = {};
        items['design'] = {};
        <?php
        $js = '';
        $elment = count($product->design->color_hex);
        for ($i = 0; $i < $elment; $i++) {
            $js .= "items['design'][$i] = {};";
            $js .= "items['design'][$i]['color'] = \"" . $product->design->color_hex[$i] . "\";";
            $js .= "items['design'][$i]['title'] = \"" . $product->design->color_title[$i] . "\";";
            $postions = array('front', 'back', 'left', 'right');
            foreach ($postions as $v) {
                $view = $product->design->$v;
                if (count($view) > 0) {
                    if (isset($view[$i]) == true) {
                        $item = (string)$view[$i];
                        $js .= "items['design'][" . $i . "]['" . $v . "']=\"" . $item . "\";";
                    } else {
                        $js .= "items['design'][$i]['$v'] = '';";
                    }
                } else {
                    $js .= "items['design'][$i]['$v'] = '';";
                }
            }
        }
        echo $js;
        ?>
        items['area'] = {};
        items['area']['front'] = "<?php echo $product->design->area->front; ?>";
        items['area']['back'] = "<?php echo $product->design->area->back; ?>";
        items['area']['left'] = "<?php echo $product->design->area->left; ?>";
        items['area']['right'] = "<?php echo $product->design->area->right; ?>";
        items['params'] = [];
        items['params']['front'] = "<?php echo $product->design->params->front; ?>";
        items['params']['back'] = "<?php echo $product->design->params->back; ?>";
        items['params']['left'] = "<?php echo $product->design->params->left; ?>";
        items['params']['right'] = "<?php echo $product->design->params->right; ?>";
    </script>
<?php } ?>

<!-- BEGIN: popup cart -->
<div class="modal fade" id="cart_notice" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                        class="sr-only">Close</span></button>
            </div>
            <div class="modal-body">
                <h5><strong><?php echo $lang['cart_mgs']; ?></strong></h5>
                <div class="row">
                    <div class="col-md-5 cart-added-img"></div>
                    <div class="col-md-7 cart-added-info"></div>
                </div>
                <div class="row cart-button">
                    <div class="col-md-6 pull-left text-left">
                        <button type="button" class="btn btn-default input-sm"
                                data-dismiss="modal"><?php echo $lang['continue_design']; ?></button>
                    </div>
                    <div class="col-md-6 pull-right text-right">
                        <a href="<?php echo site_url('cart'); ?>"
                           class="btn btn-primary input-sm"><?php echo $lang['checkout']; ?></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--end-->

<div id="save-confirm" title="Save Your Design" style="display:none;">
    <p>You have a saved design. Do you want to replace it or enter a new design?</p>
</div>

<!--end-->
<!--facebook-->
<div id="id_login"></div>
<script src="http://connect.facebook.net/en_US/all.js"></script>
<!--End facebook-->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/design_upload.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        <?php if( (string)$color !== '0' ){ ?>
        design.imports.productColor('<?php echo (string)$color; ?>');
        <?php } ?>

        <?php if( $design_id != '' ){ ?>
        design.imports.loadDesign('<?php echo $design_id; ?>');
        <?php } ?>
    });

    //Minh.js
    <?php $settings = getSettings(); ?>
    window.fbAsyncInit = function () {
        FB.init({
            appId: '<?php if (isset($settings->app_id)) echo $settings->app_id;?>', // App ID
            status: true, // check login status
            cookie: true, // enable cookies to allow the server to access the session
            xfbml: true  // parse XFBML
        });
    }

    function facebook_login() {
        FB.login(function (response) {
            if (response.authResponse) {
                FB.api('/me', function (response) {
                    var email_address = response.email;
                    if (email_address != '') {
                        login('facebook');
                    }
                });
            }
            else {
                console.log('User cancelled login or did not fully authorize.');
            }
        }, {scope: 'email,user_photos'});
        return false;
    }
    ;

    <?php if(isset($this->session->userdata('user')->status) && $this->session->userdata('user')->status == 1){ ?>
    jQuery('document').ready(function () {
        login('logged');
    });
    <?php }else{ ?>
    jQuery('.menu-top').children('ul').show();
    <?php } ?>

    <?php if($this->session->flashdata('msg') != ''){?>
    alert('<?php echo $this->session->flashdata('msg');?>');
    <?php } ?>

    jQuery('#fr-savedesign').validate();
    function rqArtist(){
        jQuery.post(baseURL + "ajax/rqArtist",
        {
            rq_name: jQuery('#rq_name').val(),
            rq_email: jQuery('#rq_email').val(),
            rq_phone: jQuery('#rq_phone').val(),
            rq_des: jQuery('#rq_des').val()
        },
        function(data, status){
            if(status=='success'){
                alert("Your request was sent successful")
            }
        });
        
    }
</script>