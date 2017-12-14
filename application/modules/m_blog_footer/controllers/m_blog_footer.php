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

class M_blog_footer extends Frontend_Controller{ 

	public function __construct(){ 
		parent::__construct();		
		$this->load->helper('url');
	} 
	
	public function index($id = ''){
		$this->m_blog_footer = $this->load->model('m_blog_footer/m_blog_footer_m');		
		$highlight = $this->m_blog_footer->getm_blog_footer($id);
		if(count($highlight) > 0)
		{
			$css = getCss($highlight, 'module');
			$this->data['css']	= $css;	
			$this->data['highlight'] = $highlight;	
			$this->load->view('m_blog_footer', $this->data);
		}
	}
}