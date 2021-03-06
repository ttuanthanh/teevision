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
<link rel="stylesheet" href="<?php echo base_url('assets/css/service.css'); ?>"/>

<section class="wrap-search">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <text><a href="/services" style="text-decoration: none; color: white">Our Services</a></text>
                
            </div>

        </div>
    </div>
</section>
<br /><br />
<section>
    <div class="row">
        <div class="col-md-3">
            <br />
            <p><b>SERVICES LIST</b></p>
            <ul class="service-slist">
                <?php
                
                    if(is_array($list_article) || is_object($list_article))
                        foreach ($list_article as $pro){
                            echo '<li><a href="'.site_url().'services/'.$pro->slug.'">'.$pro->title.'.</a></li>';
                        }
                ?> 

            </ul>
        </div>
        <div class="col-md-9">
            <h3 class="service-post-title"><?php echo $article->title ?></h3>
            <img style="max-width: 100%" src="<?php echo base_url($article->image); ?>" />
            <br /><br/>
            <?php echo $article->description ?>
        </div>
        
    </div>
    
    
    
    
</section>