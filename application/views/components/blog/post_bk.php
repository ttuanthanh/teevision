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
<style>
    .ship-info div{
        text-align: center;
    }
    .ship-info img{
        width: 60px;
        margin-bottom: 5px;
    }
    .ship-info div .ship-name{
        margin-bottom: 0px;
        color: #f37321;
        font-weight: bold;
        font-size: 20px
    }
    .ship-info div h2{
        margin: 10px 0;
        color: #54301a;
        font-style: italic;
    }
    .not-hunry{
        margin-top: 5px;
        margin-bottom: 0px;
    }
    @media (max-width: 480px) {
	/***
	 Dropdown and dropdown elements.
	 ***/
        .ship-info{
            display: none;
        }
    }
    
    .img-100{
        width: 100%;
    }
</style>
<div class="blog-page post-page">
        
    <?php
    if($article->cate_id == 268){
    ?>
    <h3 class="">
       	<a href="<?php echo site_url().'services/'.$article->id.'-'.$article->slug; ?>"> <?php echo $article->title; ?> </a>
    </h3>
    <div class="row">
        <img class="img-100" src="<?php echo base_url($article->image); ?>">
    </div>
    <br clear="all"/>
    <div class="module-highlight">    
        <div class="ship-info">
            <div class="col-md-3 col-ms-4 col-xs-6">
                <img src="/assets/images/ship_1.png">
                <p class="ship-name">FREE SHIPPING</p>
                <h2>10 Business Days</h2>            
                <p>Guaranteed by <?php echo date("D, M j", strtotime("10 weekdays")); ?></p>
            </div>
            <div class="col-md-3 col-ms-4 col-xs-6">
                <img src="/assets/images/ship_2.png">
                <p class="ship-name">UPGRADE TO RUSH</p>
                <h2>1 Week turnaround</h2>            
                <p>Guaranteed by <?php echo date("D, M j", strtotime("7 weekdays")); ?></p>
            </div>
            <div class="col-md-3 col-ms-4 col-xs-6">
                <img src="/assets/images/ship_3.png">
                <p class="ship-name">NEED IT SOONER ?</p>
                <h2>Have it shipped 3-5 biz days </h2>
                <p>More shipping option at check out</p>
            </div>
            <div class="col-md-3 col-ms-4 col-xs-6">
                <img src="/assets/images/ship_4.png">
                <p class="ship-name">SAVE OPTION</p>
    <!--            <h2>2-Week Delivery</h2>-->
                <p class="not-hunry">Not in a hurry? Option to save if you don’t require the shirts within 2 weeks</p>
                <a href="/page/25-shipping-date" style="color: #ffa500">Lean more</a>
            </div>
        </div>
    </div>
    <?php
    }
    else{
    ?>
    <div>
        
        <div class="col-sm-3">
            <img class="thumbnail" src="<?php echo base_url($article->image); ?>" alt="<?php echo $article->title; ?>"/>
        </div>
        <div class="col-sm-9">
            <h4 class="cus-blog-de">Create Custom Unique T-Shirts</h4>
            <ul class="blog-ds-top">
                <li> Low Prices with Free Shipping</li>
                <li> Guaranteed Store Quality Prints</li>
            </ul>
            <a href="/design-online" class="btn btn-product btn-gode">Design now!</a>
        </div>
    </div>
    <?php    
    }

    ?>
    
    
    
    <br clear="all" />
    <br />
    <div>
        <h4><a>Choose from a variety of shirt styles</a></h4>
        <div class="col-sm-3 blog-cat_image">
            <a href="http://teevisionprinting.com/categories/63-Ladies">
                <img src="/media/assets/BELLA%206005/bella_6005.jpg" alt=""><br><br>
            </a>
            <strong>LADIES</strong><br>
            <?php
                $list = $product_m->getProductsByCat(63);
                if(is_array($list) || is_object($list))
                    foreach ($list as $pro){
                        echo '<a href="'.site_url().'product/'.$pro->slug.'">'.$pro->title.'</a><br>';
                    }
            ?>
           
        </div>
        <div class="col-sm-3 blog-cat_image">
            <a href="http://teevisionprinting.com/categories/66-ladies-tshirts">
            <img src="/media/assets/sweat.png" alt=""><br><br></a>
            <strong>SWEATSHIRTS</strong><br>
            <?php
                $list = $product_m->getProductsByCat(66);
                if(is_array($list) || is_object($list))
                    foreach ($list as $pro){
                        echo '<a href="'.site_url().'product/'.$pro->slug.'">'.$pro->title.'</a><br>';
                    }
            ?> 
        </div>
        <div class="col-sm-3 blog-cat_image">
            <a href="http://teevisionprinting.com/categories/89-T-Shirts">
            <img src="http://teevisionprinting.com/media/assets/g2000/Antique_Royal_front.jpg" alt=""><br><br></a>
            <strong>T-SHIRTS</strong><br>
            <?php
                $list = $product_m->getProductsByCat(89);
                
                if(is_array($list) || is_object($list))
                    foreach ($list as $pro){
                        echo '<a href="'.site_url().'product/'.$pro->slug.'">'.$pro->title.'</a><br>';
                    }
            ?> 
        </div>
        <div class="col-sm-3 blog-cat_image">
            <a href="http://teevisionprinting.com/categories/90-Tank-Tops">
            <img src="http://teevisionprinting.com/media/assets/G520 TANKS/gildan_5200.jpg" alt=""><br><br></a>
            <strong>TANK TOPS</strong><br>
            <?php
                $list = $product_m->getProductsByCat(90);
                if(is_array($list) || is_object($list))
                    foreach ($list as $pro){
                        echo '<a href="'.site_url().'product/'.$pro->slug.'">'.$pro->title.'</a><br>';
                    }
            ?> 
        </div>
    </div>
    <br clear="all" />
    
	<?php
		if($article->image != '')
		{
	?>
<!--		 <div class="post-image">
			<img class="thumbnail" src="<?php echo base_url($article->image); ?>" alt="<?php echo $article->title; ?>"/>
		</div> -->
	<?php } ?>
	
	
<!--	<div class="post-meta">
		<span>
			<i class="fa fa-calendar"></i>
			<?php 
				$date = date_create($article->date);
				echo date_format($date, 'F d,Y');
			?>
		</span>
		
		<span>
		<i class="fa fa-user"></i>
			<?php echo lang('page_blog_by_title');?>
			<a href="#"> <?php echo $article->created; ?> </a>
		</span>
	</div>-->
        <h3 class="text-center">
        
		<a href="<?php echo site_url().'services/'.$article->id.'-'.$article->slug; ?>"> <?php echo $article->title; ?> </a>
	
        </h3>
	
	<div class="post-content">
		<?php 
			echo $article->description;
		?>
	</div>
	
	<div class="post-connect hidden">
		<?php 
			if(count($list_article))
			{	
				echo '<h4>'.lang('page_blog_list_article_title').'</h4>';
				foreach($list_article as $list)
				{
					echo '<div class="article-show">';
					echo '<div class="row">';
					if($list->image == '')
					{
						echo '<div class="col-xs-12">';
					}else
					{
						echo '<div class="col-xs-4 col-sm-2">';
						echo '<img class="thumbnail" src="'.base_url($list->image).'" alt="'.$list->title.'"/>';
						echo '</div>';
						echo '<div class="col-xs-8 col-sm-10">';
					}
					echo '<h5><a href="'.site_url().'services/'.$list->id.'-'.$list->slug.'" title="'.$list->title.'">'.$list->title.'</a></h5>';
					
					//intro text.
					if(strlen(strip_tags($list->description)) <= 100)
						echo '<p>'.$list->description.'</p>';
					else
						echo '<p>'.substr(strip_tags($list->description), 0, 100).' [...]</p>';
						
					//read more.
					echo '<a class="btn btn-xs btn-primary pull-right" href="'.site_url().'services/'.$list->id.'-'.$list->slug.'" title="'.$list->title.'"> '.lang('page_blog_readmore_title').'</a>';
					
					echo '</div>';
					echo '</div>';
					echo '</div>';
				}
			}
		?>
	</div>
</div>

<section class="contain-list">
    <div class="container content-post">
        <div class="row">
            <!--content-->
            <div class="col-lg-9 col-md-9">
                <div class="blog-item">
                    <div class="type-group">
                        <div class="type-item">DESIGN</div>
                        <div class="type-item on">INSPIRATION</div>
                    </div>
                    <h3>How to Use the Rule of Thirds for Stunning Photography </h3>
                    <div class="author-group">
                        <span>By</span>
                        <span class="author">Jason Statam</span>
                        <span class="date"><text>• </text> Nov 17, 2017</span>
                        <span class="block">|</span>
                        <span>21<text class="comment"> comments</text></span>
                    </div>
                    <div class="item-social">
                        <div class="tweet"><img src="./t-shirt images/tweet.png"></div>
                        <div class="facebook"><img src="./t-shirt images/share.png"></div>
                    </div>
                    <div class="thubmnail-group">
                        <img src="./t-shirt images/blog-post-detail.png"/>
                    </div>
                    <div class="des-group">
                        <div>
                            <text style="color:#1ea181">Mastering the rule of thirds</text> isn’t hard when you understand the concept. Chances are that you’ve probably already heard a little bit about the rule of thirds, even if you’re new to design in general. That’s because this guideline is a centuries-old design principle that has been proven to produce great results. The beauty of it is that it doesn’t just apply to design, but also photography, paintings, films—really the visual arts in general.

The rule of thirds empowers you to have a good idea of how to arrange the elements in your shot to create the most visually appealing effect. This is in contrast to what some would do, which is simply centering the picture in the frame and hoping for the best.

Long story short, this rule states that you’ll get the best results from your images when you divide them into nine, equal parts; the most vital compositional elements should then be strategically placed along the horizontal and vertical lines that divide the picture into those equal parts.

If mastering the rule of thirds has you stumped or working harder than you’d like, fret no more.

Here’s how to succeed at it.
                        </div>
                        <h4>Where Does the Rule of Thirds Come From?</h4>
                        <div>
                            Historically, this rule is a few centuries old already, having been first described by English painter, antiquarian and engraver John Thomas Smith in 1797. Smith coined this phrase in his book called Remarks on Rural Scenery, in which he refers to an earlier work that discusses at length the process of balancing darkness and light in paintings.

                            Smith builds on an idea touched on by Sir Joshua Reynolds by stating that, in his opinion, he always believed that the most “harmonizing proportion” in any picture occurred when:
                        </div>
                        <div>
                            <p>•   One element in a landscape was present at two-thirds (water, for example)</p>
                            <p>•   Another element was present at one-third relative to the preceding element (land, for example)</p>
                            <p>•   Both of these two elements then combine to form just one-third of the area of the entire picture</p>
                            <p>•   The remaining two-thirds of the overall picture are reserved for two other elements</p>
                        </div>
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