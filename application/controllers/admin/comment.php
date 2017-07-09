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


class Comment extends Admin_Controller {

    public function __construct(){
	
        parent::__construct();
		$this->users_m->userPermission('orders');
		$this->load->library('session');
		$this->user = $this->session->userdata('user');
                $this->load->model('comment_m');
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
                $order_id = $data['order_id'];
                $text = $data['comment_text'];
                $user = $this->user;
                if ($order_id != '')
                {                    
                    $comment['order_id'] = $order_id;
                    $comment['user_name']   = $user['name'];
                    $comment['text']        = $text;
                    $comment['createdt']    = date("Y-m-d H:i:sa");;
                    $gar_id = $this->comment_m->save($data);
                }
                
                redirect($_SERVER['HTTP_REFERER']);
        }
        
        public function add_new(){
            
                $data = $this->input->post();
                $order_id = $data['order_id'];
                $text = $data['comment_text'];
                $user = $this->user;
                if ($order_id != '')
                {                    
                    $comment['order_id'] = $order_id;
                    $comment['user_name']   = $user['name'];
                    $comment['text']        = '<span style="color:red">'.$text.'</span>';
                    $comment['createdt']    = date("Y-m-d H:i:sa");
                    $gar_id = $this->comment_m->save($comment);
                }
                //$newDate = date("Y-m-d H:i:sa"); 
                //$newDate = DateTime::createFromFormat('Y-m-d H:i:s', $row->createdt);   
                echo '<p class="cm-bg-0"><b>'.$user['name'].'</b> <small>('.date('M j H:i A').')</small>: <i><b><span style="color:red">'.$text.'</span></b></i></p>';
                               
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