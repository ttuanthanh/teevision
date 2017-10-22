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


class Artworkschedule extends Admin_Controller {

    public function __construct(){
	
        parent::__construct();
		// check user permission		
		$this->users_m->userPermission('orders');
		$this->load->library('session');
		$this->user = $this->session->userdata('user');
                $this->load->language('order');	
                $this->load->model('artwork_schedule_m');
    }

    function index()
    {		
  
            $this->data['breadcrumb'] = 'artwork achedule';
            $this->data['meta_title'] = 'Artwork achedule';
            $this->data['sub_title'] = '';
            $this->load->model('artwork_schedule_m');
            
            
            if ($this->input->post('option_s'))
            {		
                    $this->session->set_userdata('search_order', $this->input->post('search'));
                    $this->session->set_userdata('option_order', $this->input->post('option_s'));
            }
            // pagination
		$this->load->library('pagination');
		$config['base_url'] 		= site_url('admin/orders/schedules');
		$config['total_rows']		= $this->artwork_schedule_m->getartSchedule(true, 5, 1, $this->session->userdata('search_order'), $this->session->userdata('option_order'));
		
		if ($this->input->post('option_s'))
		{
			if ($this->input->post('option_s') == '')
				$this->session->set_userdata('per_page', $config['total_rows']);
			else
				$this->session->set_userdata('per_page', $this->input->post('per_page'));
		}
		
		if($this->session->userdata('per_page') != '')
			$config['per_page'] = $this->session->userdata('per_page');
		else
			$config['per_page'] 	= 100;
		
		$config['uri_segment'] 		= 4;
		$config['prev_link'] 		= '&larr;';
		$config['next_link'] 		= '&rarr;';
		$config['first_link']		= '&laquo;';
		$config['last_link'] 		= '&raquo;';
		
		$this->pagination->initialize($config); 
		$this->data['per_page'] = $config['per_page'];
		$this->data['links'] 	= $this->pagination->create_links();
		$this->data['per_page'] = $config['per_page'];
		$this->data['search'] = $this->session->userdata('search_order');
		$this->data['option'] = $this->session->userdata('option_order');
            //End paging
            
            
            $items = $this->artwork_schedule_m->getartSchedule();
                
            $this->data['items'] = $items;

            // Load view
            $this->data['subview'] = 'admin/order/artwork_schedules';
            $this->load->view('admin/_layout_main', $this->data);
    }

        
	
}