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

class M_home_hilight extends Frontend_Controller{ 

	public function __construct(){ 
		parent::__construct();		
		$this->load->helper('url');
                
                //$this->load->model('categories_m');
	} 
	
	public function index($id = ''){
		$this->m_home_hilight = $this->load->model('m_home_hilight/m_home_hilight_m');		
		$highlight = $this->m_home_hilight->getm_home_hilight($id);
		if(count($highlight) > 0)
		{
			$css = getCss($highlight, 'module');
			$this->data['css']	= $css;	
			$this->data['highlight'] = $highlight;	
                        $this->data['model'] = $this->m_home_hilight;
                        $this->data['category'] = $this->m_home_hilight->getChildren(272);
			$this->load->view('m_home_hilight', $this->data);
		}
	}
}