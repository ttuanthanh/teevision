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
	//$content = json_decode($css->content);
?>
<script src="/assets/plugins/m_slider/mootools.js" type="text/javascript" charset="utf-8"></script>
<script src="/assets/plugins/m_slider/imageslider.min.js" type="text/javascript" charset="utf-8"></script>
      <style type="text/css">
         
         #maskDiv{
            text-align:left;
            width: 100%;
            height: 450px;            
            position: relative;
            overflow: hidden;
            margin: 10px auto 0 auto;
         }
         #maskDiv a{
             background: #e7e6e6;
         }
         #maskDiv a:hover{
             text-decoration: none;
         }
         #sliderContainer{
             
            height: 100px;
            margin-top: 10px;
         }
         .sliderElement{            
            margin: 15px 15px;
            height: 300px;
            width: 255px;
            background: #fff;
            float: left;
            text-align: center;
            font-size: 11px;
         }
         .sliderElement img{
             height: 100%;
             max-width: 100%
         }
         .sliderElement h5{
             text-align: left;
             font-weight: bold;
             width: 100%;
             margin-top: 0;
             padding: 10px 5px;
             height: 40px;
             line-height: 20px;
             color: #666666;
         }
         .sliderElement a{
             background: none!important;
         }
         #leftBtn{
            position: absolute;
            padding: 3px; 
            left: 0;
            top: 40%;
            line-height: 70px;
            width: 15px;           
         }
         #rightBtn{
            position: absolute;
            padding: 3px;
            right: 0;
            top: 40%;
            line-height: 70px;
            width: 15px;
         }
         #callBack, #slideToContainer{
            width: 300px;
            height: 25px;
            background: #fff;
            margin: 20px auto 0 auto;
            color: #333;
         }
         #slideTo{
            width: 20px;
         }
         .p-slider-title{
             text-align: center;
             margin-top: 50px;
             color: #595959;
         }

      </style>
      <script type="text/javascript" charset="utf-8">
         window.addEvent('domready', function(){
           var mySlider = new ImageSlider({
               objToSlide: 'sliderContainer',
               sliderElements: 'div',
               numOfElementsToSlide: 4, 
               numOfElementsShown: 3, 
               leftBtn: 'leftBtn',
               rightBtn: 'rightBtn',
               onSlideComplete: function(index){
                  $('callBack').empty().appendText("current index is: " + index);
               }
            });
            $('slideToLink').addEvent('click', function(){
               mySlider.slideTo($('slideTo').value.toInt());
            });
         });
      </script>
<?php //var_dump($products); ?>
      <h3 class="p-slider-title">Select The <text style="font-weight: bold">Right Shirt</text> For You</h3>
      <div id="maskDiv">
         <div id="sliderContainer">
             <?php
             foreach ($products as $product){
             ?>
            <div class="sliderElement">
                <a href="<?php echo site_url().'product/'.$product->slug ?>">
                    <img src="<?php echo site_url().$product->image ?>"/>
                    <h5><?php echo $product->title ?></h5>
                </a>
                
            </div>
             <?php } ?>            
            <div class="sliderElement">
                <a href="/categories/89-T-Shirts">
                    <img src="/assets/images/newIU/chose-product.png"/>
                </a>
            </div>
         </div>
         <a href="#" id="leftBtn">&#60;</a>
         <a href="#" id="rightBtn">&#62;</a>
      </div>
      <br clear="all" />
      <img src="/assets/images/newIU/blog_footer.png" />
      <section class="wrap-offer">
        <text>Subscribe for special offers & updates</text>
        <div class="form-group">
            <label for="email" class="sr-only">Enter your email here</label>
            <input type="text" class="form-control" id="email" placeholder="Enter your email here">
        </div>
        <button type="submit" class="btn btn-info">Subscribe</button>

    </section>
<!--      <div id="callBack">
         
      </div>-->
<!--      <div id="slideToContainer">
         <label for="">Slide to: </label><input type="text" name="slideTo" value="" id="slideTo">
         <a href="#" id="slideToLink">go</a>
      </div>-->