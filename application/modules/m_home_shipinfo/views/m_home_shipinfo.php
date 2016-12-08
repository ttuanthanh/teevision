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

	echo $css;
	$content = json_decode($highlight->content);
?>
<link rel="stylesheet" type="text/css" href="<?php echo base_url('media/modules/unslider/css/unslider.css'); ?>"/>
<script src="<?php echo base_url('media/modules/unslider/js/unslider-min.js'); ?>"></script>
<style>
    .ship-info div .ship-name{
        margin-bottom: 0px;
        color: #f37321;
        font-weight: bold;
    }
    .ship-info div h2{
        margin: 10px 0;
        color: #54301a;
    }
    .not-hunry{
        margin-top: 5px;
    }
    @media (max-width: 480px) {
	/***
	 Dropdown and dropdown elements.
	 ***/
        .ship-info{
            display: none;
        }
    }
</style>
<div class="module-highlight">
    
    <div class="ship-info">
        <div class="col-md-3 col-ms-4 col-xs-6">
            <p class="ship-name">FREE SHIPPING</p>
            <h2>Guaranteed Delivery by: 10 day businesss from Todays</h2>            
            <p>Guaranteed by <?php echo date("D, M j", strtotime("10 weekdays")); ?></p>
        </div>
        <div class="col-md-3 col-ms-4 col-xs-6">
            <p class="ship-name">UPGRADE TO RUSH</p>
            <h2>Guaranteed Delivery by: 7 day businesss from Todays</h2>            
            <p>Guaranteed by <?php echo date("D, M j", strtotime("7 weekdays")); ?></p>
        </div>
        <div class="col-md-3 col-ms-4 col-xs-6">
            <p class="ship-name">SUPER RUSH </p>
            <h2>upgrade to super rush…. </h2>
            <p>More shipping option at check out</p>
        </div>
        <div class="col-md-3 col-ms-4 col-xs-6">
            <p class="ship-name">SAVE OPTION</p>
<!--            <h2>2-Week Delivery</h2>-->
            <p class="not-hunry">Not in a hurry? Option to save if you don’t require the shirts within 2 weeks</p>
            <a href="/page/25-shipping-date">Lean more</a>
        </div>
    </div>
</div>
