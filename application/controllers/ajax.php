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

class Ajax extends Frontend_Controller {
	
	public function __construct(){
        parent::__construct();		
    }
	
	public function design($key = '')
	{
		$result	= array();
		$result['error'] 		= 0;
		if ($key == '')
		{
			$result['error'] 	= 1;
			$result['msg'] 		= lang('design_key_found');
		}
		else
		{
			$this->load->model('design_m');
			
			$options = array(
				'design_id'=> $key
			);
			$design = $this->design_m->getDesign($options);
			
			if (count($design) == 0)
			{
				$result['error']	= 1;
				$result['msg'] 		= lang('design_key_found');
			}			
								
			if ($result['error'] == 0)
			{			
				$result['design'] 	= $design;
				$result['msg'] 		= '';
			}
			else
			{
				$result['error'] 	= 1;
				$result['msg'] 		= lang('design_key_found');
			}
		}
		
		echo json_encode($result);
		exit;
	}
	
	
	// get state
	function state($country_id = 0, $value = 0)
	{
		$field	= '<option value="0">'.lang('select_state').'</option>';
		if ($country_id > 0)
		{
			$this->db->where('country_id', $country_id);
			$this->db->where('published', 1);
			
			$query = $this->db->get('states');
			
			$states	= $query->result();
			
			$n 	= count($states);
			for($i=0; $i<$n; $i++)
			{
				if ($value == $states[$i]->id)
					$selected = 'selected="selected"';
				else
					$selected = '';
				$field	.=	'<option '.$selected.' value="'.$states[$i]->id.'">'.$states[$i]->name.'</option>';
			}
		}		
		
		echo $field;
		exit;
	}
	
	// load all color
	function colors()
	{	
		$this->load->model('colors_m');
		$rows 		= $this->colors_m->getColors();		
		
		$colors		= array();
		$data		= array();		
		if(count($rows))
		{
			$data['status']	= 1;
			$i = 0;
			foreach($rows as $color)
			{
				$colors[$i]				= array();
				$colors[$i]['title']	= $color->title;
				$colors[$i]['hex']		= $color->hex;
				$i++;
			}
		}
		else
		{
			$data['status']	= 0;
		}
		
		$data['colors'] = $colors;
		
		echo json_encode($data);
		exit();	
	}
	
	
	// load all fonts
	function fonts()
	{
		$this->load->model('fonts_m');
		$fonts 			= $this->fonts_m->getFonts(false, '', '', 1000, 0);
		
		$data 				= array();
		$google_fonts		= array();
		if (count($fonts) == 0)
		{
			$data['status']	= 0;
		}
		else
		{
			$data['status']	= 1;
			$categories 	= array();
			$cateFonts		= array();
			if (count($fonts))
			{
				foreach ($fonts as $font)
				{
					if ($font->type == 'google')
						$google_fonts[] = $font->title;
						
					$cateFonts[$font->cate_id]['fonts'][] = $font;
					if (!in_array($font->cate_id, $categories))				
					{
						$categories[] = $font->cate_id;
					}
				}
			}
			$data['fonts']					= array();
			
			$google_fonts					= implode('|', $google_fonts);
			$google_fonts					= str_replace(' ', '+', $google_fonts);
			$data['fonts']['google_fonts']	= $google_fonts;
			
			$data['fonts']['fonts']			= $fonts;
			$data['fonts']['cateFonts']		= $cateFonts;
			
			$this->load->model('categories_m');
			$data['fonts']['categories'] 	= $this->categories_m->getCategories('font');
		}
		//echo '<pre>'; print_r($data); echo '</pre>';exit;
		echo json_encode($data);
		exit();	
	}
	
	public function uploadIE()
	{
		$status = "";
		$msg = "";
		
		$data = $this->input->post('myfile');
		$temp 		= explode(';base64,', $data);
		$buffer		= base64_decode($temp[1]);
		
		$this->load->helper('file');
		
		$date 	= new DateTime();
		$year	= $date->format('Y');
		$root 	= ROOTPATH .DS. 'media' .DS. 'assets' .DS. 'uploaded' .DS. $year;
		if (!file_exists($root))
			mkdir($root, 0755);
		
		$month 	= $date->format('m');
		$root 	= $root .DS. $month .DS;
		if (!file_exists($root))
			mkdir($root, 0755);
		
		$file 		= strtotime("now") . '.png';
		$path_file	= $root . $file;
		if ( ! write_file($path_file, $buffer))
		{
			$status = 'error';
			$msg = lang('sys_upload_false');
		}
		else
		{
			$image				= new stdClass();
			
			$image->file_name	= $file;
			$image->file_type	= 'png';
			$image->title		= str_replace('.png', '', $file);
			$image->change_color= 0;
			
			$config['image_library'] 	= 'imagemagick';
			$config['source_image']		= $path_file;
			$config['create_thumb'] 	= TRUE;
			$config['maintain_ratio'] 	= TRUE;
			$config['width']			= 300;
			$config['height']			= 300;

			$this->load->library('image_lib', $config);
			$this->image_lib->resize();
			$thumb 				= str_replace($this->image_lib->dest_folder, '', $this->image_lib->full_dst_path);
			
			$image->thumb 		= site_url() .'media/assets/uploaded/'. $year .'/'. $month .'/'. $thumb;
			
			$info 				= $this->image_lib->get_image_properties($path_file, true);
			$image->width		= $info['width'];
			$image->height		= $info['height'];
			
			$msg 				= $image;
		}
		
		echo json_encode(array('status' => $status, 'msg' => $msg));
	}
	
	public function upload($remove = 0)
	{
		$status = "";
		$msg = "";
		$file_element_name = 'myfile';
		
		$date 	= new DateTime();
		$year	= $date->format('Y');
		$root 	= ROOTPATH .DS. 'media' .DS. 'assets' .DS. 'uploaded' .DS. $year;
		
		if (!file_exists($root))
			mkdir($root, 0755, true);
		
		$month 	= $date->format('m');
		$root 	= $root .DS. $month .DS;
		if (!file_exists($root))
			mkdir($root, 0755, true);
		
                $this->load->model('settings_m');
		$setting_data		= $this->settings_m->getSetting();
                $setting		= json_decode($setting_data->settings);
                $max_size = settingValue($setting, 'site_upload_max', '10');
                
		$config['upload_path']		= $root;
		$config['allowed_types'] 	= 'gif|jpg|png|jpeg|psd|pdf|eps|ai|svg';
		$config['max_size'] 		= 1024 * $max_size;		
 
		$this->load->library('upload', $config);
 
		if (!$this->upload->do_upload($file_element_name))
		{
			$status = 'error';
			$msg = $this->upload->display_errors('', '');
		}
		else
		{
			$data 				= $this->upload->data();
			$image				= new stdClass();
			
			$image->file_name	= $data['file_name'];
			$image->file_type	= $data['image_type'];
			$image->title		= $data['raw_name'];
			$image->width		= $data['image_width'];
			$image->height		= $data['image_height'];
			$image->change_color= 0;
			$image->url			= site_url() .'media/assets/uploaded/'. $year .'/'. $month .'/'. $image->file_name;
                        $image->url_short		= 'media/assets/uploaded/'. $year .'/'. $month .'/'. $image->file_name;
			
			$config['image_library'] = 'imagemagick';
			$config['source_image']	= $root .DS. $image->file_name;
			$config['create_thumb'] = TRUE;
			$config['maintain_ratio'] = TRUE;
			$config['width']	= 300;
			$config['height']	= 300;
                        $config['library_path'] = '/usr/bin';
                        //$config['new_image'] = site_url() .'media/assets/uploaded/'. $year .'/'. $month .'/'. 'test1111.jpg';
                        
                        if( !in_array($data['file_ext'], array('.svg', '.psd', '.ai', '.pdf', '.eps')) ) 
                        {
                            $config['image_library'] = 'gd2';
                            $this->load->library('image_lib', $config);
                            $this->image_lib->resize();
                            $thumb 				= str_replace($this->image_lib->dest_folder, '', $this->image_lib->full_dst_path);
                            //$thumb = 'thanhtest.jpg';
                            $image->thumb 		= site_url() .'media/assets/uploaded/'. $year .'/'. $month .'/'. $thumb;
                            if ($remove == 1){
                                $strInputFile = '/media/assets/uploaded/'. $year .'/'. $month .'/'. $thumb;
                                $tranname= explode('.', $thumb);
                                $target = site_url() .'media/assets/uploaded/'. $year .'/'. $month .'/'.$tranname[0].'thumb_transparent.png';

                                $im = new Imagick($strInputFile);
                                $im->transparentPaintImage($im->getImageBackgroundColor(), 0, 10000,FALSE);
                                $im->setImageFormat('png');
                                $im->writeImage($target);
                                $im->destroy();
                                $image->thumb =$target;
                            }
                            
                        }
                        else
                        {
                            $this->load->library('thumb');
                            $this->thumb->file	= $data['full_path'];				

                            $thumbs	= site_url() .'media/assets/uploaded/'. $year .'/'. $month .'';	
                            $this->thumb->createThumb($data['full_path'], $data['file_ext'], array('width'=>300, 'height'=>300), $remove);
                            $image->thumb  = $thumbs .DS. $data['file_name'].'_thumb.png';
                        }
                            
//                        $this->load->library('thumb');
//                        $this->thumb->file	= $data['full_path'];				
//
//                        $thumbs	= site_url() .'media/assets/uploaded/'. $year .'/'. $month .'';	
//                        $this->thumb->createThumb($data['full_path'], $data['file_ext'], array('width'=>300, 'height'=>300), $remove);
//                        $image->thumb  = $thumbs .DS. $data['file_name'].'_thumb.png';
			
			$msg 				= $image;
		}			
		echo json_encode(array('status' => $status, 'msg' => $msg));
	}
        
        
        function thumbGenerator($dir,$tmpName,$fileType,$size)
        {
            $saveFileType = "jpg";
            $imagePath = $dir.$tmpName."".$fileType;
            $image = new Imagick();
            $image->readimage($imagePath);
            if($fileType == ".psd"){
                $image->setIteratorIndex(0);
            }
            $dimensions = $image->getImageGeometry();
            $width = $dimensions['width'];
            $height = $dimensions['height'];
            if($size == "large"){
                $maxWidth = 720;
                $maxHeight =720;
            }
            if($size == "small"){
                $maxWidth = 300;
                $maxHeight =300;
            }
            if($height > $width){
                //Portrait
                if($height > $maxHeight)
                    $image->thumbnailImage(0, $maxHeight);
                    $dimensions = $image->getImageGeometry();
                    if($dimensions['width'] > $maxWidth){
                        $image->thumbnailImage($maxWidth, 0);
                    }
            }elseif($height < $width){
                //Landscape
                $image->thumbnailImage($maxWidth, 0);
            }else{
                //square
                $image->thumbnailImage($maxWidth, 0);
            }
            if($size == "large"){
                $image->writeImage($dir . $tmpName."-lg.".$saveFileType);
                return $dir . $tmpName."-lg.".$saveFileType;
            }
            if($size == "small"){
                $image->writeImage($dir . $tmpName."-sm.".$saveFileType);;
                return $dir . $tmpName."-sm.".$saveFileType;
            }
        }
        /**
         * 
         * Calculate shirt price
         * 
         * total = quantity * ( base price + print front + print back ) + 8% tax
         * 
         */
        public function getQuote(){
            $product_id 	= $this->input->post('product_id', TRUE);
            $color = $this->input->post('color');
            $size = $this->input->post('size');
            $print = $this->input->post('print');
            /*
            $product_id = 1;
            $color = 0;
            $size = [12,0,0,0,0,0];
            $print = [2,2];
            */
            
            $price_total = 0;
            $this->load->model('product_m');
            $this->load->model('print_price_m');
            $attribute          = $this->product_m->getAttribute($product_id);
            $arr_attribute['prices'] 		= json_decode($attribute->prices);
            $arr_attribute['prices_color'] 	= json_decode($attribute->prices_color);
             //Get print list
            $pfront                 = $this->print_price_m->getFrontPrintPriceList();
            $arr_front['id']        = $pfront->id;
            $arr_front['quantity']  = json_decode($pfront->quantity);
            $arr_front['prices']    = json_decode($pfront->prices);                        

            $pback                  = $this->print_price_m->getBackPrintPriceList();
            $arr_back['id']         = $pback->id;
            $arr_back['quantity']   = json_decode($pback->quantity);
            $arr_back['prices']     = json_decode($pback->prices);           
            
            $price_product = 0;
            $quantity = 0;
            if($color == 0){ //white
                for($i = 0; $i < count($size); $i++){                    
                    $price_product += $size[$i] * $arr_attribute['prices'][0][$i];
                    $quantity += $size[$i];
                }
            }else{ //color
                for($i = 0; $i < count($size); $i++){                    
                    $price_product += $size[$i] * $arr_attribute['prices_color'][0][$i];
                    $quantity += $size[$i];
                }
            }
            
            // SELECT THE LARGER PRINT LOCAT FOR FRONT PRICE
            if ($print[0] < $print[1] )
            {
                $stem = $print[0]; $print[0] = $print[1]; $print[1] = $stem;
            }
            
            
            $price_front = 0;            
            for($i = 0; $i < count($arr_front['quantity']); $i++){
                if($quantity >= $arr_front['quantity'][$i][0] && $quantity <= $arr_front['quantity'][$i][1]){                    
                    $price_front = $arr_front['prices'][$i][$print[0]];
                    break;
                }
            }
            $price_back = 0;
            for($i = 0; $i < count($arr_back['quantity']); $i++){
                if($quantity >= $arr_back['quantity'][$i][0] && $quantity <= $arr_back['quantity'][$i][1]){
                    $price_back = $arr_back['prices'][$i][$print[1]];
                    break;
                }                    
            }
            $price_print = ($price_front + $price_back) * $quantity;
            $price_total = $price_product + $price_print;
            
            
            // Adding Setup charges : num of color * $20
            $price_total += ( $print[0] + $print[1] ) * 20;            
            
            // Addding 8% tax            
            $price_total += ($price_total * 8 ) /100;  
            
            //Add ship price - trangttm - 03/22/2016
            $this->load->model('boxes_m');
            $boxes = $this->boxes_m->getBoxes();
            $arr_boxes['quantity']  = json_decode($boxes->quantity);
            $arr_boxes['boxes']    = json_decode($boxes->boxes);
            $number_boxes = 0;
            for($i = 0; $i < count($arr_boxes['quantity']); $i++){
                if($quantity >= $arr_boxes['quantity'][$i][0] && $quantity <= $arr_boxes['quantity'][$i][1]){                    
                    $number_boxes = $arr_boxes['boxes'][$i];
                    break;
                }
            }    
            $this->load->model('settings_m');
            $setting = $this->settings_m->getSetting();
            $setting = json_decode($setting->settings);
            $price_boxes = $setting->shippingbox;
            
            $price_total += ($number_boxes * $price_boxes);
            
            $data['quantity']           = $quantity;
            $data['total_price']        = number_format(round($price_total,2),2);
            $data['unit_price']         = number_format(round($price_total/$quantity, 2),2);
            $data['unit_price_full']    = $price_total/$quantity;
            
            echo json_encode($data);
        }
        
        
        function sendEmailArtist()
        {
            $data = $this->input->post();
            $product_id = $data['product_id'];
            $size       = $data['sizes'];
            $this->load->model('product_m');
            
            $options = array(
                    'id' => $data['product_id']				
            );
            $product 		= $this->product_m->getProduct($options);
            $product 		= $product[0];
            
            $attribute  = $this->product_m->getAttribute($product_id);  
            if (count($attribute)) 
            {
                    $this->load->helper('product');
                    $help_product 		= new helperProduct();
                    $attributes	= $help_product->displayAttributesQuote($attribute, $size, TRUE);
            }
            $str = '<style>
                        table tr td, tr th{border: 1px solid #ccc; padding: 5px;}
                        p{margin:10px}
                        .color-swatch {background-color: #'.$data['color-name'].';border: 2px solid #fff;cursor: pointer;display: inline-block;height: 10px;margin-bottom:-4px;outline: 1px solid #ccc;padding: 2px;width: 40px;}
                    </style>';
                    
            $str .= '<div>
                        <strong>Full name: </strong>'.$data['u-name'].'<br>
                        <strong>Email: </strong>'.$data['u-email'].'<br>
                        <strong>Company: </strong>'.$data['u-company'].'<br>
                        <strong>Phone: </strong>'.$data['u-phone'].'<br>
                    </div>';
            $str .='<table style="border-collapse:collapse; width: 100%">
                        <tr>
                            <th>Product name</th>
                            <th>Detail</th>
                            <th>Price</th>
                            <th>Total</th>
                        </tr>
                        <tr>
                            <td style="vertical-align: top;"><strong>'.$product->title.'</strong></td>
                            <td>
                                <p>
                                    <strong>Color: </strong>'.$data['color-title'].' <span class="color-swatch"></span>
                                </p>
                                <p>
                                    <strong>Print: </strong> Front '.$data['print-front-num'].', Back '.$data['print-back-num'].'
                                </p>
                                <p>
                                    <strong>Describe Design Idea: </strong> <br>
                                    <strong> -Front: </strong>'.$data['design-area-front'].'<br>
                                    <strong> -Back: </strong>'.$data['design-area-back'].'
                                </p>
                                <p>'.$attributes.'</p>
                            </td>
                            <td style="text-align: center;vertical-align: top;">
                                <strong>'.  number_format($data['unit-price-full'], 2).' </strong>
                            </td>
                            <td style="text-align: center;vertical-align: top;">
                                <strong>'.  number_format($data['unit-price-full']*$data['quantity'], 2).' </strong>
                            </td>
                        </tr>
                    </table>';
            $str .= '<div style="margin-top: 20px;">http://teevisionprinting.com</div>';
            //echo json_encode($data);
            $this->load->library('email');
            $config = array(
                    'mailtype'  => 'html'
            );
            $this->load->library('email', $config);
            $this->email->from($data['u-email'], $data['u-name']);
            $this->email->to(getEmail(config_item('admin_email')));    
            $this->email->subject ( 'Request An Artist');
            $this->email->message ($str);   
            $result = $this->email->send();
            echo $result;
        }
        
        function rqArtist()
        {
            $data = $this->input->post();
//            $uname      = $data['rq_name'];
//            $uemail     = $data['rq_email'];
//            $uphone     = $data['rq_phone'];
//            $udes       = $data['rq_des'];
        //var_dump($data);
            $str = '<style>
                        table tr td, tr th{border: 1px solid #ccc; padding: 5px;}
                        p{margin:10px}
                    </style>';
                    
            $str .= '<div>
                        <strong>Full name: </strong>'.$data['rq_name'].'<br>
                        <strong>Email: </strong>'.$data['rq_email'].'<br>                        
                        <strong>Phone: </strong>'.$data['rq_phone'].'<br>
                        <strong>Description: </strong>'.$data['rq_des'].'<br>
                    </div>';
            
            $str .= '<div style="margin-top: 20px;">http://teevisionprinting.com</div>';
            //echo json_encode($data);
            $this->load->library('email');
            $config = array(
                    'mailtype'  => 'html'
            );
            $this->load->library('email', $config);
            $this->email->from($data['rq_email'], $data['rq_email']);
            $this->email->to(getEmail(config_item('admin_email')));    
            $this->email->subject ( 'Request An Artist');
            $this->email->message ($str);  
            if ($this->email->send()) {
                echo 'Your email was sent.';
            } else {
                show_error($this->email->print_debugger());
            }
            //$result = $this->email->send();
            //echo getEmail(config_item('admin_email'));
            //echo $result;
        }
             
}

?>
