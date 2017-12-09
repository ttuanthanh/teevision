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

<div class="blog-page">
<!--	<h3><?php echo lang('page_blog_blog_categories_title');?></h3>
	<div class="row category-sub clearfix">
		<?php
			foreach($categories as $category)
			{
		?>
				<div class="col-xs-4 col-sm-3 col-md-2 text-center form-group">
					<a href="<?php echo site_url().'blog/category/'.$category->id.'-'.$category->slug; ?>">
						<img class="img-responsive img-thumbnail" src="<?php echo base_url($category->image); ?>" alt="<?php echo $category->title; ?>"/>
					</a>
					<a href="<?php echo site_url().'blog/category/'.$category->id.'-'.$category->slug; ?>" title="<?php echo $category->title; ?>"><?php echo $category->title; ?></a>
				</div>
		<?php
			} 
		?>
	</div>-->
        
        <div class="blog-headline">
            <h3>BLOG</h3>
            <h4>Let's find the service thats right for you</h4>            
        </div>
	
	
	<?php
		foreach($articles as $article)
		{
	?>
		<div class="article-post clearfix">
                    
			<a class="post-raw " href="<?php echo site_url().'blog/'.$article->slug; ?>">
                            
				<?php
					if($article->image == '')
					{
						echo '<div class="col-sm-12">';
					}else
					{
				?>
					<div class="col-sm-4">
						<div class="post-image">
							<img class="thumbnail" src="<?php echo base_url($article->image); ?>" alt="<?php echo $article->title; ?>" />
						</div>
					</div>
					<div class="col-sm-8">
				<?php } ?>
					<div class="post-content">
						<h4>
							<?php echo $article->title; ?>
						</h4>
						<p>
							<?php 
								if(strlen(strip_tags($article->description)) <= 400)
									echo strip_tags($article->description);
								else
									echo substr(strip_tags($article->description), 0, 400).' [...]';
							?>
						</p>
					</div>
				</div>
                            <br clear="all"/>
			</a><!--class="row post-raw"-->
		</div><!--class="article-post"-->
                <br clear="all"/>
	<?php
		} 
	?>
</div>

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
                   // var_dump($articles[0]);
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
                            <div class="type-item">DESIGN</div>
                            <div class="type-item on">INSPIRATION</div>
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
                <div class="row">
                    <div class="col-lg-12 col-md-12 blog-paging">
                    <button class="btn btn-warning">Previous</button>
                    <text>1</text>
                    <text>2</text>
                    <text>3</text>
                    <text>4</text>
                    <text>5</text>
                    <button class="btn btn-warning">Next</button>
                    </div>
                </div>
            </div>
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
        </div>

    </div>

</section>