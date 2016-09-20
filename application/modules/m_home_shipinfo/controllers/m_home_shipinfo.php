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

class M_home_shipinfo extends Frontend_Controller{ 

	public function __construct(){ 
		parent::__construct();		
		$this->load->helper('url');
	} 
	
	public function index($id = ''){
		$this->m_home_shipinfo = $this->load->model('m_home_shipinfo/m_home_shipinfo_m');		
		$highlight = $this->m_home_shipinfo->getm_home_shipinfo($id);
		if(count($highlight) > 0)
		{
			$css = getCss($highlight, 'module');
			$this->data['css']	= $css;	
			$this->data['highlight'] = $highlight;	
			$this->load->view('m_home_shipinfo', $this->data);
		}
	}
}