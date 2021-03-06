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
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-9">
            <?php
                   //var_dump($tags_list);
                foreach($articles as $article)
                {
            ?>
                <div class="row blog-item">
                    <div class="col-lg-5 col-md-5 blog-image">
                        <a class="post-raw " href="<?php echo site_url().'blog/'.$article->slug; ?>">
                            <img class="full" src="<?php echo base_url($article->image); ?>">
                        </a>
                    </div>
                    <div class="col-lg-7 col-md-7 blog-des">
                        <div class="type-group">
                            <?php 
                                foreach($article->tags as $tag)
                                    echo '<div class="type-item">'.strtoupper($tag->tag).'</div>';
                            ?>
                           
                        </div>
                        <h3>
                            <a class="post-raw " href="<?php echo site_url().'blog/'.$article->slug; ?>">
                                <?php echo $article->title; ?>
                            </a>
                        </h3>
                        <div class="author-group">
                            <span>By</span>
                            <span class="author"><?php echo $article->created; ?></span>
                            <span class="date"><text>• </text> <?php echo date("M j, Y",strtotime($article->date)); ?></span>
                            <span class="block">|</span>
                            <span>0<text class="comment"> comments</text></span>
                        </div>
                        <div class="short-description">
                            <?php 
                                    if(strlen(strip_tags($article->description)) <= 400)
                                            echo strip_tags($article->description);
                                    else
                                            echo substr(strip_tags($article->description), 0, 400).' [...]';
                            ?>
                        </div>
                    </div>
                </div>
                <?php } ?>
<!--                <div class="row">
                    <div class="col-lg-12 col-md-12 blog-paging">
                    <button class="btn btn-warning">Previous</button>
                    <text>1</text>
                    <text>2</text>
                    <text>3</text>
                    <text>4</text>
                    <text>5</text>
                    <button class="btn btn-warning">Next</button>
                    </div>
                </div>-->
                <?php if ($links != '') { ?>
		<hr>
		<div class="row">
			<div class="col-md-12">
				<?php echo $links; ?>
			</div>
		</div>
		<?php } ?>
            </div>
            <div class="col-lg-3 col-md-3">
                <div class="row">
                    <div class="col-lg-12 col-md-12 ">
                        <div class="like-block">
                        <h4>Like us for tshirt design tips, promos, and the discounts.</h4>
                        <div class="like-des">
                            <iframe src="http://www.facebook.com/plugins/like.php?href=<?php echo "http://".$_SERVER['HTTP_HOST'].'/blog'; ?>&layout=button_count&show_faces=false&width=80&action=like&font=lucida+grande&colorscheme=light" allowtransparency="true" style="border: medium none; overflow: hidden; width: 80px; height: 21px;" frameborder="0" scrolling="no"></iframe>
<!--                            <img src="./t-shirt images/like-fb.png"/>
                            <text>647k people like this. <text class="login">Sign Up</text> to see what your friends like.</text>-->
                        </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 post-link">
                        <h4>Recent Post</h4>
                        <?php
                        //var_dump($latest);
                        foreach($latest as $post){
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
                        foreach($latest as $post){
                        ?>
                        <a class="post-item" href="<?php echo site_url().'blog/'.$post->slug ?>">
                           <text><?php echo $post->title ?></text>
                        </a>
                        
                        <?php
                        }                        
                        ?>
                    </div>
                </div>

            </div>
        </div>

    </div>

</section>