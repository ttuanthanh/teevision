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
<div class="blog-page post-page">
    
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
            <a href="/design" class="btn btn-product btn-gode">Design now!</a>
        </div>
    </div>
    <br clear="all" />
    <br />
    <div>
        <h4><a>Choose from a variety of shirt styles</a></h4>
        <div class="col-sm-3 blog-cat_image">
            <a href="http://teevisionprinting.com/categories/63-Ladies">
                <img src="/media/assets/BELLA%206005/bella_6005.jpg" alt=""><br><br>
            </a>
            <strong>LADIES</strong><br>
            <a href="http://teevisionprinting.com/product/29-gildan-ultra-cotton-ladies-t-shirt-2000l">Gildan Ultra Cotton</a><br>
            <a href="http://teevisionprinting.com/product/30-bellacanvas-ladies-the-favorite-tee-6004">BELLA+CANVAS Ladies</a><br>
            <a href="http://teevisionprinting.com/product/34-gildan-softstyle-ladies-v-neck-t-shirt-64v00l">Gildan® Softstyle®</a><br>
            <a href="http://teevisionprinting.com/product/36-american-apparel-ladies-fine-jersey-short-sleeve-t-shirt-2102">American Apparel</a>
            
        </div>
        <div class="col-sm-3 blog-cat_image">
            <a href="http://teevisionprinting.com/categories/66-ladies-tshirts">
            <img src="/media/assets/sweat.png" alt=""><br><br></a>
            <strong>SWEATSHIRTS</strong><br>
            <a href="http://teevisionprinting.com/product/21-G18500/gildan/zipup">Gildan Heavy Blend</a><br>
            <a href="http://teevisionprinting.com/product/37-gildan-heavy-blend-adult-full-zip-hooded-sweatshirt-18600">Gildan® Heavy Blend™</a><br>
            <a href="http://teevisionprinting.com/product/38-gildan-crew-neck-sweatshirt-18000">Gildan Crew Neck</a><br>
            <!--<a href="http://teevisionprinting.com/product/36-american-apparel-ladies-fine-jersey-short-sleeve-t-shirt-2102">American Apparel</a>-->
            
        </div>
        <div class="col-sm-3 blog-cat_image">
            <a href="http://teevisionprinting.com/categories/89-T-Shirts">
            <img src="http://teevisionprinting.com/media/assets/g2000/Antique_Royal_front.jpg" alt=""><br><br></a>
            <strong>T-SHIRTS</strong><br>
            <a href="http://teevisionprinting.com/product/29-gildan-ultra-cotton-ladies-t-shirt-2000l">Gildan Ultra Cotton</a><br>
            <a href="http://teevisionprinting.com/product/12-G5000">(Gildan 5000) 5.3 oz</a><br>
            <a href="http://teevisionprinting.com/product/13-gildan-8000-5050-dryblend-poly">(Gildan 8000) 50/50</a><br>
            <a href="http://teevisionprinting.com/product/20-hanes-5180/BEEFYTEE">(Hanes 5180) 6.1 oz.</a>
            
        </div>
        <div class="col-sm-3 blog-cat_image">
            <a href="http://teevisionprinting.com/categories/90-Tank-Tops">
            <img src="http://teevisionprinting.com/media/assets/G520 TANKS/gildan_5200.jpg" alt=""><br><br></a>
            <strong>TANK TOPS</strong><br>
            <a href="http://teevisionprinting.com/product/40-Gildan%20Tank%20Top%20G520">Gildan Heavy Cotton </a><br>
            <a href="http://teevisionprinting.com/product/42-Bella%20Canvas%20Tank%203480">Bella+Canvas Unisex</a><br>
<!--            <a href="http://teevisionprinting.com/product/34-gildan-softstyle-ladies-v-neck-t-shirt-64v00l">Gildan® Softstyle®</a><br>
            <a href="http://teevisionprinting.com/product/36-american-apparel-ladies-fine-jersey-short-sleeve-t-shirt-2102">American Apparel</a>-->
            
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