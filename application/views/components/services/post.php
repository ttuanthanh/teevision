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