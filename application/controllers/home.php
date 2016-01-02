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

class Home extends Frontend_Controller 
{
    function __construct()
    {
        parent::__construct();
        //$this->load->model('users_m');
        //$this->users_m->updatePass('adminadmin', 2);
    }
	
	public function index()
	{
		$data = array();
		
		$data['subview'] = $this->load->view('layouts/home/default', array(), true);	
		
		$this->theme($data);
		
	}
}
?>