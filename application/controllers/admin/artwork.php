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


class Artwork extends Admin_Controller {

    public function __construct(){
	
        parent::__construct();
		
		$this->load->library('session');
		$this->user = $this->session->userdata('user');
                $this->load->model('garment_m');
    }

        public function garment() 
	{		
		$this->data['meta_title'] = $this->lang->line('update_admin_meta_title');
		$this->data['breadcrumb'] = $this->lang->line('update_admin_breadcrumb');
		
		$data 		= $this->garment_m->getData();		
		$this->data['garment'] = $data;
		$this->data['subview'] = 'admin/orders/garment';
                $this->load->view('admin/_layout_main', $this->data);
        }
        
        public function save(){
                $data = $this->input->post('gar');
                
                $garment = $this->garment_m->getByOrder($data['order_id']);
                $gar_id = '';
                
                //var_dump($garment);
                //if(!$garment)
                    $gar_id = $this->garment_m->save($data);
                //else
//                {
//                    $this->garment_m->update($data, $garment->id);
//                    $gar_id = $garment->id;                        
//                }
                
                
                $this->load->model('order_m');
                $order = new order_m();
                //$order = $this->order_m->getOrder($data['order_id']);
                $or['apparel'] = $gar_id;
                $order->update($or, $data['order_id']);
                
                redirect($_SERVER['HTTP_REFERER']);
        }
        
        
        public function delete($id = '')
        {        
                //var_dump($garment);
                if($id == ''){
                    redirect($_SERVER['HTTP_REFERER']);
                    exit();
                }      
                else
                {
                    $garment = $this->garment_m->getData($id);
                    $this->load->model('order_m');
                    $order = new order_m();
                    $order->update(array('apparel'=>''), $garment->order_id);
                    
                    $gar = new Garment_m();
                    $gar->delete($id);
                }
                
                redirect($_SERVER['HTTP_REFERER']);
        }

        
	
}