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


class Proof extends Admin_Controller {

    public function __construct(){
	
        parent::__construct();
		// check user permission		
		$this->users_m->userPermission('orders');
		$this->load->library('session');
		$this->user = $this->session->userdata('user');
                $this->load->model('proof_m');
    }
        
        public function save(){
            
                $data = $this->input->post();
                $proof_id = $data['proof_id'];
                //unset($data['artwork_id']);
                $pr['order_id']     = $data['order_id'];
                $pr['item_id']      = $data['item_id'];
                $pr['proof_file']   = $data['proof_file']; //
                $pr['proof_update'] = date("Y-m-d H:i:sa");
                if ($proof_id == '')
                {    
                    $gar_id = $this->proof_m->save($pr);
                }
                else
                {
                    $gar_id =  $this->proof_m->update($pr, $proof_id);
                    //var_dump($gar_id);
                }
                
                $this->load->model('comment_m');
                $comm = new comment_m();
                $user = $this->user;
                $comment = array();
                $comment['order_id']    = $data['order_id'];
                $comment['user_name']   = $user['username'];
                $comment['text']        = 'Update proof.';
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
                $gar_id = $this->proof_m->update($data, $id);
                
                $this->load->model('comment_m');
                $comm = new comment_m();
                $user = $this->user;
                $comment = array();
                $comment['order_id']    = $this->input->post('order_id');
                $comment['user_name']   = $user['username'];
                $comment['text']        = 'Approved proof for print.';
                if ($data['is_approved'] === 0)
                    $comment['text']        = 'Remove proof approved.';
                $comment['createdt']    = date("Y-m-d H:i:sa");;
                $comm->save($comment);
            }
            
            
                
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