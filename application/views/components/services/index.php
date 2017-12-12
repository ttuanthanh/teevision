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
    <h3 class="service-title">Let's find the service that right for you</h3>
    <div class="">
        
        
        <?php
        foreach($articles as $article)
        {
	?>
        <div class="col-md-4 col-lg-4 service-table" >
            <a class="service-a" href="<?php echo site_url().'services/'.$article->slug; ?>">
                <div class="service-container ">
                    <div class=" service-image" style="background-image: url('<?php echo base_url($article->image); ?>')">
                    </div>
                    <p class="service-p service-cell"><?php echo $article->title; ?></p>
                </div>
            </a>
            
        </div>
        <?php
        } 
	?>
    </div>
</section>
<br clear='all'>
