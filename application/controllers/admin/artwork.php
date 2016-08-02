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
		// check user permission		
		$this->users_m->userPermission('orders');
		$this->load->library('session');
		$this->user = $this->session->userdata('user');
                $this->load->model('artwork_m');
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
            
                $data = $this->input->post();
                $art_id = $data['artwork_id'];
                unset($data['artwork_id']);
                if ($art_id == '')
                {                    
                    $data['createdt'] = date("Y-m-d h:i:sa");
                    $data['modidt'] = date("Y-m-d h:i:sa");
                    $gar_id = $this->artwork_m->save($data);
                }
                else
                {
                    $gar_id =  $this->artwork_m->update($data, $art_id);
                    //var_dump($gar_id);
                }
                
                $this->load->model('comment_m');
                $comm = new comment_m();
                $user = $this->user;
                $comment = array();
                $comment['order_id']    = $data['order_id'];
                $comment['user_name']   = $user['username'];
                $comment['text']        = 'Update artwork.';
                $comment['createdt']    = date("Y-m-d h:i:sa");;
                $comm->save($comment);
                
                $this->load->model('order_m');
                $order = new order_m();
                $order->update(array('artwork'=>'1'), $data['order_id']);
                
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