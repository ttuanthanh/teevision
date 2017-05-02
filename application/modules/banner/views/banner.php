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
<link rel="stylesheet" type="text/css" href="<?php echo base_url('media/modules/banner/jquery.bxslider.css'); ?>"/>
<script src="<?php echo base_url('media/modules/banner/jquery.bxslider.js'); ?>"></script>
<?php echo $css; ?>
<ul class="bxslider top-banner">
	<?php 
		$images = json_decode($banner->images);
		$captions = json_decode($banner->captions);
		$html = '';
		for($i=0; $i<count($images); $i++)
		{
			if(isset($captions[$i]))
				echo '<li><a href="/design"><img src="'.base_url($images[$i]).'" alt="image"/><div class="bx-caption">'.$captions[$i].'</div></a></li>';
			else
				echo '<li><a href="/design"><img src="'.base_url($images[$i]).'" alt="image"/></a></li>';
		}
	?>
</ul>
<!--<div class="start-design-mobile mobile"><a href="/design" class="btn btn-warning start-link"><span>Start Design</span></a></div>-->
<script type="text/javascript">
	jQuery('.bxslider').bxSlider({
		<?php 
			$settings = json_decode($banner->settings);
			foreach($settings as $key=>$val)
			{
				if($key == 'slideWidth' && $val == '')
				{
					echo '';
				}else if($val === 'true' || $val === 'false')
					echo $key.': '.$val.',';
				else
					echo $key.': "'.$val.'",';
			}
		?>
		auto: true,
		speed: 1000
	});
</script>