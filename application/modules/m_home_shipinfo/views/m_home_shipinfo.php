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
    .ship-info div{
        text-align: center;
    }
    .ship-info img{
        width: 60px;
        margin-bottom: 5px;
    }
    .ship-info div .ship-name{
        margin-bottom: 0px;
        color: #f37321;
        font-weight: bold;
        font-size: 20px
    }
    .ship-info div h2{
        margin: 10px 0;
        color: #54301a;
        font-style: italic;
    }
    .not-hunry{
        margin-top: 5px;
        margin-bottom: 0px;
    }
    /*@media (max-width: 480px) {*/
	/*!****/
	 /*Dropdown and dropdown elements.*/
	 /****!*/
        /*.ship-info{*/
            /*display: none;*/
        /*}*/
    /*}*/
</style>
<div class="module-highlight">
    
    <div class="ship-info row">
        <div class="col-md-3 col-ms-3 col-xs-8 free-ship">
            <img class="img-free" src="http://teevisionprinting.com/assets/images/ship_1.png">
            <p class="ship-name">FREE SHIPPING</p>
            <h2>8 Business Days</h2>            
            <p>Guaranteed by <?php echo date("D, M j", strtotime("8 weekdays")); ?></p>
        </div>
        <div class="col-md-3 col-sm-3">
            <img src="/assets/images/ship_2.png">
            <p class="ship-name">UPGRADE TO RUSH</p>
            <h2>1 Week turnaround</h2>            
            <p>Guaranteed by <?php echo date("D, M j", strtotime("7 weekdays")); ?></p>
        </div>
        <div class="col-md-3 col-sm-3">
            <img src="/assets/images/ship_3.png">
            <p class="ship-name">NEED IT SOONER ?</p>
            <h2>Have it shipped 3-5 biz days </h2>
            <p>More shipping option at check out</p>
        </div>
        <div class="col-md-3 col-sm-3">
            <img src="/assets/images/ship_4.png">
            <p class="ship-name">SAVE OPTION</p>
<!--            <h2>2-Week Delivery</h2>-->
            <p class="not-hunry">Not in a hurry? Option to save if you don’t require the shirts within 2 weeks</p>
            <a href="/page/25-shipping-date" style="color: #ffa500">Lean more</a>
        </div>
    </div>
</div>
