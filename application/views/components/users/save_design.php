<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

?>
<!DOCTYPE html>
<html>
<head>
<title>Save design</title>
</head>
<style>
    .bt_share{
        border: 1px solid #cccccc;
        border-radius: 30px;
        line-height: 35px;
        width: 90%;
    }
</style>
<body style="width: 800px; margin: 0 auto;">
    <div style="text-align: left">
        <img src="http://teevisionprinting.com/media/assets/tee_logo_new.png" width="400px">
    </div>
    <?php //var_dump($product); ?>
    <div style="background-color: #F9FAFC">
        <br />
        <div style="border: 1px solid #cccccc; height: 100px; text-align: center; width: 500px; margin: 0 auto;">
            <h1 style="font-weight: bold;margin-bottom: 0px">
                <span style="color: #ff0033">Buy now</span> or <span style="color: #0066cc">edit</span> your design
            </h1>
            <h3 style="margin-top: 0">** Tip Increase the quantity to receive a larger Discount</h3>
        </div>
        <br clear="all"/>
        <div style="height: 15px; width: 100%; background-color: white; margin-bottom: 20px"></div>
        <div style="width: 49%; float: left">
            <img id="view_product-front" src="<?php echo base_url(str_replace('front', "front", $product->image));?>" alt="" width="100%"/>
        </div>
        <div style="width: 49%; float: left">
            <img id="view_product-back" src="<?php echo base_url(str_replace('front', "back", $product->image));?>" alt="" width="100%"/>
        </div>
        <br clear="all"/>
        <?php $url = 'http://'.$_SERVER['SERVER_NAME'].'/design-online/index/'.$product->product_id.'/'.$product->product_options.'/'.$product->design_id ?>
        <a href="<?php echo $url; ?>" target="_blank" style="text-decoration: none">
        <table width="100%">
            <tr>
                <td>
                    <div style="margin: 0 auto; height: 50px; width: 130px; line-height: 50px; color: white; "></div>
                </td>
                <td>
                    <div style="margin: 0 auto; height: 50px; width: 180px; line-height: 50px; font-weight: bold; color: white; background-color: #ff00cc; text-align: center">Add to cart</div>
                </td>
                <td>
                    <div style="margin: 0 auto; height: 50px; width: 180px; line-height: 50px; font-weight: bold; color: white; background-color: #00ccff; text-align: center">Edit design</div>
                </td>
                <td>
                    <div style="margin: 0 auto; height: 50px; width: 180px; line-height: 50px; font-weight: bold; color: white; background-color: #ffcc00; text-align: center">Get new price</div>
                </td>
                <td>
                    <div style="margin: 0 auto; height: 50px; width: 130px; line-height: 50px; color: white;"></div>
                </td>
            </tr>
            
        </table>
        </a>
        <h3 style="text-align: center; color: #00cc66; background-color: white; padding: 15px 0;">
            All designs are reviewed to check for quality.<br>
            Final proofs are sent to fix pixelation,background color, positioning
        </h3>
        <div style="text-align: center; border-bottom: 1px solid #cccccc; border-top: 1px solid #cccccc;">            
            <h3 style="font-weight: bold; font-style: italic">Share or email a friend</h3>
            <div>
                <div class="bt_share" style="width: 200px; float: left; margin-right: 90px; margin-left: 10px">Post on facebook</div>
                <div class="bt_share" style="width: 200px; float: left; margin-right: 90px;">Twitter</div>
                <div class="bt_share" style="width: 200px; float: left">Email a friend</div>
                <br clear="all"/>
            </div>
            <br clear="all"/>
            <div>
                <div style="float: left; width: 49%; text-align: center; border-right: 1px solid #cccccc; padding-right: 10px">
                    <h2>RUSH DELIVERY<br/>
                    <span style="color: #00cccc"><?php echo date("D, M j", strtotime("7 weekdays")); ?></span></h2>
                </div>
                
                <div style="float: right; width: 49%; text-align: center">
                    <h2>FREE DELIVERY<br/>
                    <span style="color: #00cccc"><?php echo date("D, M j", strtotime("8 weekdays")); ?></span></h2>
                </div> 
                <br clear="all"/>
            </div>
            <div>
                <div style="float: left; width: 49%; text-align: center;">
                    <div style="width:49%; float: left">
                        <h3>Need a artist to help with your design ?</h3><br/>
                    </div>
                    <div style="width:49%; float: right">
                        <p style="width: 80%; height: 50px; background-color: #009900; line-height: 50px">
                            <a style="text-decoration: none; color: #FFF " href="<?php echo $url; ?>">Request artist</a></p>
                    </div>
                    <br clear="all"/>
                    
                </div>
                
                <div style="float: right; width: 49%; text-align: center">
                    <h3 style="color: #ff0033">Need additional help<br/>
                    <span style="color: #00cccc">Call us now (267)5385331</span></h3>
                </div>   
                <br clear="all"/>
            </div>
            <br clear="all"/>
            <div style="width:100%; background: #009999; min-height: 10px"></div>
        </div>
        <br clear="both"/>
        
    </div>
    
</body>
</html>