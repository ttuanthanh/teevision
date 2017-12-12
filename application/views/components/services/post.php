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
                <text>Our Services</text>
                
            </div>

        </div>
    </div>
</section>
<section>
    <div class="row">
        <div class="col-md-3">
            <p>Sevices list</p>
            <ul>
                <?php
                
                    if(is_array($list_article) || is_object($list_article))
                        foreach ($list_article as $pro){
                            echo '<li><a href="'.site_url().'services/'.$pro->slug.'">'.$pro->title.'.</a></li>';
                        }
                ?> 

            </ul>
        </div>
        <div class="col-md-9">
            <h3>Philaden phia pringting</h3>
            <img src="<?php echo base_url($article->image); ?>" />
            
        </div>
        
    </div>
    
    
    
    
</section>