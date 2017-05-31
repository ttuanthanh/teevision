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

class Customorders extends Admin_Controller
{
	public function __construct ()
	{
		parent::__construct();
		
		// check user permission		
		$this->users_m->userPermission('orders');
		
		$this->load->language('order');		
		$this->load->language('designer');	
		$this->user = $this->session->userdata('user');
		$this->load->model('order_m');
	}
	
        function editcolor($itemid)
	{
		$this->load->model('colors_m');
		$row 	= $this->colors_m->getColors();
                //$order = $this->order_m->getItems($id);
                $this->data['colors'] = $row;
                $this->data['itemId'] = $itemid;
                
		$this->load->view('admin/order/pp/edit_product_color', $this->data);
	}
        
        public function orderproductcolor($itemid)
        {
            $hex = $this->input->post('hex');
            $name = $this->input->post('name');
            
            $items = $this->order_m->getItem($itemid);
           // var_dump($items);
            $design = json_decode($items->design_option);
           // var_dump($design);
            $color= new stdClass();
            $color->color_hex = $hex;
            $color->color_name = $name;
            $design->colors = $color;
            
            $data['design_option'] = json_encode($design);
            
            $this->db->where('id', $itemid);
            $this->db->update('order_items' , $data);
            $this->load->view('admin/order/addorder_success');
                    
        }
}