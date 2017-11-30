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
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/js/homep.css'); ?>"/>
<script src="<?php echo base_url('assets/js/homep.js'); ?>"></script>



<section class="price-block">
    <div class="header-description">Select Your Prefered Option</div>
    <div class="price-item row">
        <div class="item col-md-3 col-lg-3"><img src="/assets/images/newIU/design-shirt-block.png"></div>
        <div class="item col-md-3 col-lg-3"><img class="full" src="/assets/images/newIU/options1.png"><span
                class="type-price">LOW PRICE</span>
            <span class="price">$5-10<span class="pc">/pc</span></span><span class="unit">20 pcs above</span>
            <button class="inquire btn btn-primary">INQUIRE NOW</button>
        </div>
        <div class="item col-md-3 col-lg-3"><img class="full" src="/assets/images/newIU/options2.png"><span
                class="type-price type-price-1">MID PRICE</span>
            <span class="price price-1 ">$7-12<span class="pc">/pc</span></span><span
                    class="unit unit-1">15 pcs above</span>
            <button class="inquire btn btn-success">INQUIRE NOW</button>
        </div>
        <div class="item col-md-3 col-lg-3"><img class="full" src="/assets/images/newIU/options3.png"><span
                class="type-price type-price-2">BEST PRICE</span>
            <span class="price price-2">$8-15<span class="pc">/pc</span></span><span
                    class="unit unit-2">10 pcs above</span>
            <button class="inquire btn btn-warning">INQUIRE NOW</button>
        </div>
    </div>
</section>
<section class="help-block row">
    <div class="image col-md-6 col-lg-6">
        <img src="/assets/images/newIU/img-container.png">
    </div>
    <div class="des col-md-6 col-lg-6">
        <p class="header">Need custom T-shirts?</p>
        <p class="content">Welcome to Tee Vision Printing, a trusted source of custom T-shirts in Philadelphia and
            beyond.
            <br/>
            Everyone loves wearing tees, as they fit snugly and are extremely comfortable to wear. But, most tees we
            find in shops are either too plain or have generic designs. At Tee Vision Printing, we provide high-quality
            screen printing at an affordable price. Using our Design Studio, you can create your own designs on a range
            of shirt styles, sizes, and colors.</p>
        <p class="btn-block">
            <button class="btn btn-warning">READ MORE</button>
        </p>
    </div>
</section>
<section class="list-item">
    <div class="header-description"><strong>Featured Cutomer</strong> Shirt Designs</div>
    <div class="item-group row">
        <div class="item col-md-3 col-lg-3">
            <div class="item-padding">
                <img align="middle" src="/assets/images/newIU/shirt1.png">
            </div>
        </div>
        <div class="item col-md-3 col-lg-3">
            <div class="item-padding">
                <img align="middle" src="/assets/images/newIU/shirt2.png">
            </div>
        </div>
        <div class="item col-md-3 col-lg-3">
            <div class="item-padding">
                <img align="middle" src="/assets/images/newIU/shirt3.png">
            </div>
        </div>
        <div class="item col-md-3 col-lg-3">
            <div class="item-padding">
                <img align="middle" src="/assets/images/newIU/shirt4.png">
            </div>
        </div>
        <div class="item col-md-3 col-lg-3">
            <div class="item-padding">
                <img align="middle" src="/assets/images/newIU/shirt4.png">
            </div>
        </div>
        <div class="item col-md-3 col-lg-3">
            <div class="item-padding">
                <img align="middle" src="/assets/images/newIU/shirt2.png">
            </div>
        </div>
        <div class="item col-md-3 col-lg-3">
            <div class="item-padding">
                <img align="middle" src="/assets/images/newIU/shirt1.png">
            </div>
        </div>
        <div class="item col-md-3 col-lg-3">
            <div class="item-padding">
                <img align="middle" src="/assets/images/newIU/shirt3.png">
            </div>
        </div>
    </div>
    <div class="load-more-block">
        <button class="load-more btn btn-info">Load More <img src="/assets/images/newIU/load-more.png"></button>
    </div>
</section>
<section class="shirt-group">
    <div class="overlap-background">
        <p class="header">DESIGN YOUR OWN SHIRT</p>
        <p class="des">Start creating your customized shirt using our
            <text>design studio</text>
            .
        </p>
        <p>
            <button class="btn btn-warning">START HERE</button>
        </p>
    </div>
</section>
<section class="wrap-offer">
    <text>Subscribe for special offers & updates</text>
    <div class="form-group">
        <label for="email" class="sr-only">Enter your email here</label>
        <input type="text" class="form-control" id="email" placeholder="Enter your email here">
    </div>
    <button type="submit" class="btn btn-info">Subscribe</button>

</section>

