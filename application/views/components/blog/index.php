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
            <h3>SERVICES</h3>
            <h4>Let's find the service thats right for you</h4>            
        </div>
	
	
	<?php
		foreach($articles as $article)
		{
	?>
		<div class="article-post clearfix">
                    
			<a class="post-raw " href="<?php echo site_url().'services/'.$article->id.'-'.$article->slug; ?>">
                            
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