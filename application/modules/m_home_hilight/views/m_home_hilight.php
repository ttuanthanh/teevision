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
    .mp-btn{
        position: absolute;
        left: 40px;
        bottom: 20px;
        border-color: transparent;
    }
    .mp-btn:hover{
        background: #00cccc;
    }
    .mp-green{background: #58a95d; }
    .mp-ogran{background: #e4b254; }
    .mp-about{
        width: 100vw;
        position: relative;
        margin-left: -50vw;
        left: 50%;
        background-color: #eaebeb;
    }
    .about-left img{
       max-width: 100%;
       height: auto;
    }
    .about-right{
        max-width: 550px;
        min-height: 550px;
        padding: 50px 0 0 30px;
        background: url('/assets/images/newIU/about_tee_bg_right.png') no-repeat top left;
    }
    .text-center{text-align: right;}
</style>
<div class="row-elment module-best-price">
    <div class="col-md-3">
        <img width="100%" src="/assets/images/newIU/gafe.png" />
    </div>
    <div class="col-md-3">
        <img width="100%" src="/assets/images/newIU/p_low.png" />
        <a href="" class="btn btn-primary mp-btn">Inquire Now</a>
    </div>
    <div class="col-md-3">
        <img width="100%" src="/assets/images/newIU/p_mid.png" />
        <a href="" class="btn btn-primary mp-btn mp-green">Inquire Now</a>
    </div>
    <div class="col-md-3">
        <img width="100%" src="/assets/images/newIU/p_best.png" />
        <a href="" class="btn btn-primary mp-btn mp-ogran">Inquire Now</a>
    </div>
    
    <br clear="all"/>
</div>
<br clear="all"/>
<br clear="all"/>
<div class="mp-about">
    <div class="col-md-6 about-left text-center" >
        <img src="/assets/images/newIU/about_tee_bg_left.png" />
    </div>
    <div class="col-md-6 about-right" >
        <h3>Need custom T-shirts?</h3>
        <br clear="all"/><br clear="all"/>
        <p>Welcome to Tee Vision Printing, a trusted source of custom T-shirts in Philadelphia and beyond.</p>
        <br clear="all"/>
        <p>Everyone loves wearing tees, as they fit snugly and are extremely comfortable to wear. But, most tees we find in shops are either too plain or have generic designs. At Tee Vision Printing, we provide high-quality screen printing at an affordable price. Using our Design Studio, you can create your own designs on a range of shirt styles, sizes, and colors.</p>
    </div>
    <br clear="all"/>
</div>
<div class="module-highlight">
    
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
        <?php 
        $row	= $model->getProductSlugById(12);
        
        ?>
        <a href="product/<?php echo $row->slug ?>" type="button" class="btn btn-primary">REQUEST QUOTE HERE</a>        
    </div>
    <br/><br/>
    <div>
        <div class="col-md-8 text-center">
            <h2 class="tee-title">Need custom T-shirts?</h2>
            <p>Welcome to Tee Vision Printing, a trusted source of custom T-shirts in Philadelphia and beyond.</p> 

            <p>Everyone loves wearing tees, as they fit snugly and are extremely comfortable to wear. But, most tees we find in shops are either too plain or have generic designs. At Tee Vision Printing, we provide high-quality screen printing at an affordable price. Using our Design Studio, you can create your own designs on a range of shirt styles, sizes, and colors. </p>

            <p>We customize T-shirts for any purpose, whether you’re reproducing shirts for an event, starting your own merchandise, or personalizing your wardrobe. With our modern screen printers and vibrant, durable inks, your shirts will come out just as you’ve envisioned. </p>

            <p>With our high-quality, cotton garments and long-lasting inks, you tees will look brand new for many years. The unwavering quality and vibrancy of screen-printed shirts are the reasons most people and businesses are not switching to digital alternatives.</p>

            <p>Using our Design Studio, you can either integrate your own design to your choice of shirt styles or customize from scratch from our pre-made designs and exclusive font styles. Pick a shirt and start personalizing!</p>
            <!--<p>Tee Vision is a Philadelphia Screen Printing company. We are committed to providing the highest quality for an affordable price. We use professional screen printers to ensure that your custom T-shirts do not crack, wash off, or fade.</p>-->
            <br/>
        </div>
        <div class="col-md-4 " style="padding-top: 100px">
            <iframe width="90%" src="https://www.youtube.com/embed/_9d0zA3sh-s?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
        </div>
    </div>
    <br class="clear"/>
</div>

<script>
        jQuery(document).ready(function($) {
                $('.my-slider').unslider();
        });
</script>