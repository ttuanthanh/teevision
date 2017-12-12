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
        <div class="col-md-4 col-lg-4 service-container">
<!--            <table>
                <tr>
                    <td><div class="service-image" style="background-image: url('http://i.stack.imgur.com/2OrtT.jpg')"></div></td>
                    <td>dfgdf dfgdffdg</td>
                </tr>
            </table>-->
            <div class="col-md-4 service-img-ctn">
                <div class="service-image" style="background-image: url('http://i.stack.imgur.com/2OrtT.jpg')"></div>
            </div>
            <div class="col-md-8 service-content">afssdghdhfdh</div>
        </div>
        <div class="col-md-4 col-lg-4 service-container">
            <div class="col-md-4 service-img-ctn">
                <div class="service-image" style="background-image: url('http://i.stack.imgur.com/2OrtT.jpg')"></div>
            </div>
            <div class="col-md-8 service-content">afssdghdhfdh</div>
        </div>
        <div class="col-md-4 col-lg-4 service-container">
            <div class="col-md-4 service-img-ctn">
                <div class="service-image" style="background-image: url('http://i.stack.imgur.com/2OrtT.jpg')"></div>
            </div>
            <div class="col-md-8 service-content">afssdghdhfdh</div>
        </div>
        
    </div>
</section>
<br clear='all'>
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
                    
			<a class="post-raw " href="<?php echo site_url().'services/'.$article->slug; ?>">
                            
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