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
                $this->load->model('order_m');
    }

    function index()
    {		
  
            $this->data['breadcrumb'] = 'artwork achedule';
            $this->data['meta_title'] = 'Artwork achedule';
            $this->data['sub_title'] = '';
            
            
            
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

    
        function upload($id = '')
	{		
                if ($id == '')
                    redirect('admin/orders/schedules');
                
		
		$this->load->model('artwork_m');
                $art = $this->artwork_m->getData($id);
                //$items->artwork = $this->order_m->getArtworkByItem($item->id) != null ? $this->order_m->getArtworkByItem($item->id) : '';
                $items = new stdClass();
                $items->artwork =$art   ;
                
                $items->artworkImage = $this->order_m->getArtworkImageByItem($items->artwork->id) != null ? $this->order_m->getArtworkImageByItem($items->artwork->id) : '';
                $items->artworkSchedule = $this->artwork_schedule_m->getData($items->artwork->id);
                   
                
		$this->data['product'] = $items;
                
                
                
                
                
		// Load view
		//$this->data['subview'] = 'admin/order/pp/upload_artwork';
		$this->load->view('admin/order/pp/upload_artwork', $this->data);
	}  
        
        function download($id = '')
	{		
                if ($id == '')
                    redirect('admin/orders/schedules');
                
		
		$this->load->model('artwork_m');
                $art = $this->artwork_m->getData($id);
                //$items->artwork = $this->order_m->getArtworkByItem($item->id) != null ? $this->order_m->getArtworkByItem($item->id) : '';
                $items = new stdClass();
                $items->artwork =$art   ;
                
                $items->artworkImage = $this->order_m->getArtworkImageByItem($items->artwork->id) != null ? $this->order_m->getArtworkImageByItem($items->artwork->id) : '';
                $items->artworkSchedule = $this->artwork_schedule_m->getData($items->artwork->id);
                   

		$this->data['product'] = $items;
                
                
                
                
                
		// Load view
		//$this->data['subview'] = 'admin/order/pp/upload_artwork';
		$this->load->view('admin/order/pp/download_artwork', $this->data);
	}
        
        function download_zip($id = '')
	{		
                if ($id == '')
                    redirect('admin/orders/schedules');
                
		
		$this->load->model('artwork_m');
                $art = $this->artwork_m->getData($id);
                //$items->artwork = $this->order_m->getArtworkByItem($item->id) != null ? $this->order_m->getArtworkByItem($item->id) : '';
                $items = new stdClass();
                $items->artwork =$art   ;
                
                $items->artworkImage = $this->order_m->getArtworkImageByItem($items->artwork->id) != null ? $this->order_m->getArtworkImageByItem($items->artwork->id) : '';
                $items->artworkSchedule = $this->artwork_schedule_m->getData($items->artwork->id);
		$this->data['product'] = $items;
                
                
                
                $order = $this->order_m->getOrderSchedule($items->artworkSchedule->order_id); 
                
                //Setup link for upload file
                $date 	= new DateTime();
		$year	= $date->format('Y');
                $root           = ROOTPATH .DS. 'media' .DS. 'assets' .DS. 'zip' .DS. $year;
                if (!file_exists($root))
			mkdir($root, 0755, true);
		
		$month 	= $date->format('m');
		$root 	= $root .DS. $month .DS;
		if (!file_exists($root))
			mkdir($root, 0755, true);    
                
                $address	= json_decode($order->address);
                $zip = new ZipArchive();
                $filename = $root.''.$address->{'First Name'}.'_'.$address->{'Last Name'}.".zip";

                if ($zip->open($filename, ZipArchive::CREATE)!==TRUE) {
                    exit("cannot open <$filename>\n");
                }

                foreach ($items->artworkImage as $image) {
                    $file_img = str_replace(array('http://'.$_SERVER['HTTP_HOST']), array('') ,$image->url);
                    //$fz = ROOTPATH.$file;
                    if (file_exists(ROOTPATH.$file_img))  
                    {
                        $zip->addFile(ROOTPATH.$file_img, substr($file_img, strrpos($file_img, '/') + 1));
                    }
                }               
                    
                //echo "numfiles: " . $zip->numFiles . "\n";
                //echo "status:" . $zip->status . "\n";
                if ($zip->close() === false) {
                    exit("Error creating ZIP file");
                 };
                
                if (file_exists($filename)) 
                {
                    $file_name = basename($filename);
                    header("Content-Type: application/zip");
                    header("Content-Disposition: attachment; filename=$file_name");
                    header("Content-Length: " . filesize($filename));

                    readfile($filename);
                } else {
                    exit("Could not find Zip file to download");
                }
                exit;
                
	}
	
}