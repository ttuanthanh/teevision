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
<script src="/assets/plugins/m_slider/mootools.js" type="text/javascript" charset="utf-8"></script>
<script src="/assets/plugins/m_slider/imageslider.min.js" type="text/javascript" charset="utf-8"></script>
      <style type="text/css">
         
         #maskDiv{
            text-align:left;
            width: 100%;
            height: 400px;            
            border: dotted  1px #fff;
            overflow: hidden;
            margin: 100px auto 0 auto;
         }
         #sliderContainer{
             
            height: 100px;
            margin-top: 50px;
         }
         .sliderElement{
            margin: 15px 15px;
            height: 200px;
            width: 253px;
            background: #1f8fff;
            float: left;
            text-align: center;
            font-size: 11px;
         }
         #leftBtn{
            float:left;
            padding: 10px;
         }
         #rightBtn{
            float: right;
            padding: 10px;
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

      </style>
      <script type="text/javascript" charset="utf-8">
         window.addEvent('domready', function(){
           var mySlider = new ImageSlider({
               objToSlide: 'sliderContainer',
               sliderElements: 'div',
               numOfElementsToSlide: 2, 
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

      <div id="maskDiv">
         <div id="sliderContainer">
            <div class="sliderElement"><p>Element 1</p></div>
            <div class="sliderElement"><p>Element 2</p></div>
            <div class="sliderElement "><p>Element 3</p></div>
            <div class="sliderElement "><p>Element 4</p></div>
            <div class="sliderElement "><p>Element 5</p></div>
            <div class="sliderElement"><p>Element 6</p></div>
            <div class="sliderElement"><p>Element 7</p></div>
            <div class="sliderElement "><p>Element 8</p></div>
            <div class="sliderElement "><p>Element 9</p></div>
            <div class="sliderElement "><p>Element 10</p></div>
            <div class="sliderElement "><p>Element 11</p></div>
         </div>
         <a href="#" id="leftBtn">move left</a>
         <a href="#" id="rightBtn">move right</a>
      </div>
      <div id="callBack">
         
      </div>
      <div id="slideToContainer">
         <label for="">Slide to: </label><input type="text" name="slideTo" value="" id="slideTo">
         <a href="#" id="slideToLink">go</a>
      </div>