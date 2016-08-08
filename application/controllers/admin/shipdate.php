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


class Shipdate extends Admin_Controller {

    public function __construct(){
	
        parent::__construct();
		// check user permission		
		$this->users_m->userPermission('orders');
		$this->load->library('session');
		$this->user = $this->session->userdata('user');
                $this->load->model('shipdate_m');
    }
        
        public function save($id = ''){
            
                $data = $this->input->post();
                $mess = '';
                if ($id == '')
                {    
                    $pr['order_id']      = $data['order_id'];
                    $pr['ship_date']     = $data['ship_date'];
                    $this->shipdate_m->save($pr);
                    $mess = 'Changed ship date to '.$pr['ship_date'];
                }
                else
                {
                    $pr['ship_date']     = $data['ship_date'];
                    $gar_id =  $this->shipdate_m->update($pr, $id);
                    $mess = 'Changed ship date to '.$pr['ship_date'];
                    //var_dump($gar_id);
                }
                
                $this->load->model('comment_m');
                $comm = new comment_m();
                $user = $this->user;
                $comment = array();
                $comment['order_id']    = $data['order_id'];
                $comment['user_name']   = $user['name'];
                $comment['text']        = $mess;
                $comment['createdt']    = date("Y-m-d H:i:sa");;
                $comm->save($comment);
                
//                $this->load->model('order_m');
//                $order = new order_m();
//                $order->update(array('artwork'=>'1'), $data['order_id']);
                
                redirect($_SERVER['HTTP_REFERER']);
        }
        
        public function approve($id = '')
        {
            if ($id != '')
            {    
                $data['is_approved'] = $this->input->post('approved') == 1 ? 0 : 1;
                $data['approvedt'] = date("Y-m-d H:i:sa");
                $gar_id = $this->shipdate_m->update($data, $id);
                
                $this->load->model('comment_m');
                $comm = new comment_m();
                $user = $this->user;
                $comment = array();
                $comment['order_id']    = $this->input->post('order_id');
                $comment['user_name']   = $user['name'];
                $comment['text']        = 'Approved ship date.';
                if ($data['is_approved'] === 0)
                    $comment['text']        = 'Remove ship date.';
                $comment['createdt']    = date("Y-m-d H:i:sa");;
                $comm->save($comment);
                
                $this->load->model('order_m');
                $order = new order_m();
                $order->update(array('ship_approved'=> $data['is_approved'] ), $comment['order_id']);
                
            }
            
            
                
            redirect($_SERVER['HTTP_REFERER']);
        }
        
        function checkApprove($id = ''){
            $row =  $this->proof_m->checkProofApproved($id); 
            if ($row->total == $row->approved)
                return 1;
            return 0;
                   
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