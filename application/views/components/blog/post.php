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
<link rel="stylesheet" href="<?php echo base_url('assets/css/blog.css'); ?>"/>
<script src="<?php echo base_url('assets/js/blog.js'); ?>"></script>

<section class="wrap-search">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <text>Blog</text>
                <div class="form-group">
                    <label for="email" class="sr-only">Enter your email here</label>
                    <input type="text" class="form-control" id="email" placeholder="Search our blog">
                    <div class="btn-search">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<section class="contain-list">
    <div class="container content-post">
        <div class="row">
            <!--content-->
            <div class="col-lg-9 col-md-9">
                <div class="blog-item">
                    <div class="type-group">
                        <div class="type-item">DESIGN</div>
                        <!--<div class="type-item on">INSPIRATION</div>-->
                        <?php 
                            foreach($tags as $tag)
                                echo '<div class="type-item">'.strtoupper($tag->tag).'</div>';
                        ?>
                    </div>
                    <h3><?php echo $article->title; ?> </h3>
                    <div class="author-group">
                        <span>By</span>
                        <span class="author"><?php echo $article->created; ?></span>
                        <span class="date"><text>• </text> <?php echo date("M j, Y",strtotime($article->date)); ?></span>
                        <span class="block">|</span>
                        <span>0<text class="comment"> comments</text></span>
                    </div>
                    <div class="item-social">
                        <div class="tweet">
                            <a href="http://www.facebook.com/sharer.php?u=<?php echo site_url().'blog/'.$article->slug; ?>" target="_blank">
                                <img src="/assets/images/newIU/share.png">
                            </a>                     
                        </div>
                        <div class="facebook"><img src="/assets/images/newIU/tweet.png"></div>
                    </div>
                    <div class="thubmnail-group">
                        <img src="<?php echo base_url($article->image); ?>"/>
                    </div>
                    <div class="des-group">
                        <?php echo strip_tags($article->description); ?>
                    </div>
                </div>
                <div class="blog-continue">
                            <div class="col-md-6 col-lg-6 prev">
                                <p class="arrow">< previous</p>
                                <p class="des">The 50 Best Apple Watch Face and App Concepts So Far</p>
                            </div>
                            <div class="col-md-6 col-lg-6 next">
                                <p class="arrow">next ></p>
                                <p class="des">Win $250, Beats Headphones + More: Creative Market’s <br/>Run The Day Sweepstakes</p>
                            </div>
                </div>
            </div>
           <!--end content-->
            <!--start post link-->
            <div class="col-lg-3 col-md-3">
                <div class="row">
                    <div class="col-lg-12 col-md-12 ">
                        <div class="like-block">
                        <h4>Like us for tshirt design tips, promos, and the discounts.</h4>
                        <div class="like-des">
                            <img src="./t-shirt images/like-fb.png"/>
                            <text>647k people like this. <text class="login">Sign Up</text> to see what your friends like.</text>
                        </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 post-link">
                        <h4>Recent Post</h4>
                        <a class="post-item">
                           <text>50 Creative Resume Templates You Won't Believe are Microsoft Word</text>
                        </a>
                        <a class="post-item on">
                            <text>How to Design a Logo: 50 Tutorials and Pro Tips</text>
                        </a>
                        <a class="post-item">
                            <text>The 50 Best Apple Watch Face and App Concepts So Far</text>
                        </a>
                        <a class="post-item">
                            <text>16 PowerPoint Templates That Look Great in 2017</text>
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 post-link">
                        <h4>Post Tags</h4>
                        <div class="post-tag">
                            <div class="post-tag-item">DESIGN</div>
                            <div class="post-tag-item">PRINTINGS TIPS</div>
                            <div class="post-tag-item">PRINTINGS TIPS</div>
                            <div class="post-tag-item">SCREENPRINTING</div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 post-link">
                        <h4>Trending Posts</h4>
                        <a class="post-item">
                            <text>50 Creative Resume Templates You Won't Believe are Microsoft Word</text>
                        </a>
                        <a class="post-item on">
                            <text>How to Design a Logo: 50 Tutorials and Pro Tips</text>
                        </a>
                        <a class="post-item">
                            <text>The 50 Best Apple Watch Face and App Concepts So Far</text>
                        </a>
                        <a class="post-item">
                            <text>16 PowerPoint Templates That Look Great in 2017</text>
                        </a>
                    </div>
                </div>

            </div>
            <!--end postlink-->
        </div>

        <div class="row recent-item">
            <div class="col-lg-12 col-md-12"><h3>Related Posts</h3></div>
            <div class="col-lg-4 col-md-4">
                <img src="./t-shirt images/blog-post-recent.png">
                <div class="recent-des">
                    <h4>The Must Knows for Lifestyle Photography and Blog Creation </h4>
                    <div class="author-group">
                        <span>By</span>
                        <span class="author">Jason Statam</span>
                        <span class="date"><text>• </text> Nov 17, 2017</span>
                        <span class="block">|</span>
                        <span>21<text class="comment"> comments</text></span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4">
                <img src="./t-shirt images/blog-post-recent.png">
                <div class="recent-des">
                    <h4>The Must Knows for Lifestyle Photography and Blog Creation </h4>
                    <div class="author-group">
                        <span>By</span>
                        <span class="author">Jason Statam</span>
                        <span class="date"><text>• </text> Nov 17, 2017</span>
                        <span class="block">|</span>
                        <span>21<text class="comment"> comments</text></span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4">
                <img src="./t-shirt images/blog-post-recent.png">
                <div class="recent-des">
                    <h4>The Must Knows for Lifestyle Photography and Blog Creation </h4>
                    <div class="author-group">
                        <span>By</span>
                        <span class="author">Jason Statam</span>
                        <span class="date"><text>• </text> Nov 17, 2017</span>
                        <span class="block">|</span>
                        <span>21<text class="comment"> comments</text></span>
                    </div>
                </div>
            </div>
        </div>

    </div>

</section>