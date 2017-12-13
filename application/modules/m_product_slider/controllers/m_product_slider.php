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

class M_product_slider extends Frontend_Controller{ 

	public function __construct(){ 
		parent::__construct();		
		$this->load->helper('url');
	} 
	
	public function index($id = ''){
		$this->m_product_slider = $this->load->model('m_product_slider/m_product_slider_m');		
		$products = $this->m_product_slider->geProductList();
                $slides = $this->m_product_slider->getm_product_slider($id);
		if(count($slides) > 0)
		{
			$css = getCss($slides, 'module');
			$this->data['css']	= $css;	
			$this->data['products'] = $products;	
			$this->load->view('m_product_slider', $this->data);
		}
	}
}