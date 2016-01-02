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
<div class="module-highlight">
    <div>
        <div class="col-md-2 col-ms-1 "></div>
        <div class="col-md-8 col-ms-10 col-xs-12 text-center">
            <h2 class="tee-title">Need custom T-shirts?</h2>
            <p>Tee Vision is a Philadelphia Screen Printing company. We are committed to providing the highest quality for an affordable price. We use professional screen printers to ensure that your custom T-shirts do not crack, wash off, or fade.</p>
        </div>
        <div class="col-md-2 col-ms-1 "></div>
    </div>
    <div class="text-center ">
        <div class="col-md-3 col-ms-4 col-xs-6">
            <img src="assets/images/no.png" height="75"/>
            <h3>All Inclusive Pricing</h3>
            <p>We offer an all-inclusive pricing meaning the price you see is the price you pay. There are no other hidden fees. No extra charges for standard shipping or any charges for artwork!</p>
        </div>
        <div class="col-md-3 col-ms-4 col-xs-6">
            <img src="assets/images/br.png"  height="75"/>
            <h3>Free Artwork!</h3>
            <p>Don’t have a clue what you want? Let us help you come up with an idea by working one on one with a professional artist to design for you! A real live person will contact you after payment is received to help you create an awesome shirt.</p>
        </div>
        <div class="col-md-3 col-ms-4 col-xs-6">
            <img src="assets/images/car.png"  height="75"/>
            <h3>Free Delivery</h3>
            <p>Sometimes it’s quicker to have your shirts delivered to you than shipped. If you live in the city of Philadelphia we will personally deliver it to have it in your hands faster!</p>
        </div>
        <div class="col-md-3 col-ms-4 col-xs-6">
            <img src="assets/images/smily.png"  height="75"/>
            <h3>More Smiles</h3>
            <p>We are always looking for ways to improve your experience with quick turn around and great customer service.</p>
        </div>
    </div>
    <br class="clear"/>
    <div class="col-xs-12 text-center ">
        <a href="product/12-mens-polo" type="button" class="btn btn-primary btn-quote">REQUEST QUOTE HERE</a>        
    </div>
    <br class="clear"/>
</div>

<div class="my-slider">
    <h2 class="tee-title">Testimonials?</h2>
	<ul>
            <li>
                <div class="col-md-2 text-center">
                    <img src="assets/images/smily.png" >
                </div>
                <div class="col-xs-10 text-left">
                    <p>
                        Mr. Brittin<br>
                        Administrator - International Christian High School
                    </p>
                    <hr>
                    <p>
                        Tee Vision Printing is the best quality custom printing on the Eeast Coast. We have ordered custom T-shirts, Hoodies, and Uniforms from Teevision Printing and have had these orders in hand in about 1 week( Free Delivery Too ! ) You will also not find a better deal on these custom made designs.
                    </p>
                </div>
                
            </li>
	</ul>
</div>
<script>
        jQuery(document).ready(function($) {
                $('.my-slider').unslider();
        });
</script>