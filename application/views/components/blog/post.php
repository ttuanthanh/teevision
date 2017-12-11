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
                <text><a href="/blog" style="text-decoration: none; color: white">Blog</a></text>
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
                        <!--<div class="type-item">DESIGN</div>-->
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
                                <?php
                                if ($previous_article) {
                                ?>
                                <p><a class="arrow" href="<?php echo site_url().'blog/'.$previous_article->slug; ?>">< previous</a></p>
                                    <?php 
                                        echo $previous_article->title;
                                }
                                ?>
                                
                            </div>
                            <div class="col-md-6 col-lg-6 next">
                                <?php
                                if ($next_article) {
                                ?>
                                <p><a class="arrow"href="<?php echo site_url().'blog/'.$next_article->slug; ?>">next ></a></p>
                                    <?php 
                                        echo $next_article->title;
                                }
                                ?>
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
                            <iframe src="http://www.facebook.com/plugins/like.php?href=<?php echo site_url().'blog/'.$article->slug ?>&layout=button_count&show_faces=false&width=80&action=like&font=lucida+grande&colorscheme=light" allowtransparency="true" style="border: medium none; overflow: hidden; width: 80px; height: 21px;" frameborder="0" scrolling="no"></iframe>
                        </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 post-link">
                        <h4>Recent Post</h4>
                        <?php
                        //var_dump($latest);
                        foreach($list_article as $post){
                        ?>
                        <a class="post-item" href="<?php echo site_url().'blog/'.$post->slug ?>">
                           <text><?php echo $post->title ?></text>
                        </a>
                        
                        <?php
                        }                        
                        ?>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 post-link">
                        <h4>Post Tags</h4>
                        <div class="post-tag">
                            <?php 
                                foreach($tags_list as $tagl)
                                    echo '<div class="post-tag-item">'.strtoupper($tagl->tag).'</div>';
                            ?>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 post-link">
                        <h4>Trending Posts</h4>
                        <?php
                        //var_dump($latest);
                        foreach($list_trending as $trend){
                        ?>
                        <a class="post-item" href="<?php echo site_url().'blog/'.$trend->slug ?>">
                           <text><?php echo $trend->title ?></text>
                        </a>
                        
                        <?php
                        }                        
                        ?>
                    </div>
                </div>

            </div>
            <!--end postlink-->
        </div>

        <div class="row recent-item">
            <div class="col-lg-12 col-md-12"><h3>Related Posts</h3></div>
            
            <?php
            //var_dump($latest);
            $i = 0;
            foreach($list_article as $post){
                
            ?>
            
            <div class="col-lg-4 col-md-4">
                <a class="post-item" style="text-decoration: none" href="<?php echo site_url().'blog/'.$post->slug ?>">
                    <img src="<?php echo base_url($post->image);  ?>">
                    <div class="recent-des">
                        <h4><?php echo $post->title ?></h4>
                        <div class="author-group">
                            <span>By</span>
                            <span class="author"><?php echo $post->created; ?></span>
                            <span class="date"><text>• </text> <?php echo date("M j, Y",strtotime($post->date)); ?></span>
                            <span class="block">|</span>
                            <span>0<text class="comment"> comments</text></span>
                        </div>
                    </div>
                </a>   
            </div>
            <?php
                if(++$i == 3) break;
            }                        
            ?>
        </div>

    </div>

</section>