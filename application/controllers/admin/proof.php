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
                $pr['order_des']    = $data['order_des'];
                $pr['proof_update'] = date("Y-m-d H:i:sa");
                if ($proof_id == '')
                {    
                    $proof_id = $this->proof_m->save($pr);
                }
                else
                {
                    $gar_id =  $this->proof_m->update($pr, $proof_id);
                    //var_dump($gar_id);
                }
                
                
                // check folder and create
                $date 	= new DateTime();
		$year	= $date->format('Y');
                $root           = ROOTPATH .DS. 'media' .DS. 'assets' .DS. 'uploaded' .DS. $year;
                if (!file_exists($root))
			mkdir($root, 0755, true);
		
		$month 	= $date->format('m');
		$root 	= $root .DS. $month .DS;
		if (!file_exists($root))
			mkdir($root, 0755, true);                
                
                $config['upload_path'] = $root;
                
                $config['allowed_types'] 	= 'gif|png|jpg|jpge|svg|psd|ai|pdf|eps';	
                $config['max_size']			= '5120'; // 5MB		

                $this->load->library('upload', $config);
                $files = $_FILES["file"];
                foreach ($files["name"] as $key => $image)
                {
                    $_FILES['file[]']['name']= $files['name'][$key];
                    $_FILES['file[]']['type']= $files['type'][$key];
                    $_FILES['file[]']['tmp_name']= $files['tmp_name'][$key];
                    $_FILES['file[]']['error']= $files['error'][$key];
                    $_FILES['file[]']['size']= $files['size'][$key];

                    $fileName = $image;

                    //$images[] = $fileName;

                    $config['file_name'] = $fileName;

                    $this->upload->initialize($config);
                    if(!$this->upload->do_upload('file[]'))
                    {
                        break;
                        $this->session->set_flashdata('error', $this->upload->display_errors());
                        redirect('admin/orders/proof/'.$proof_id);
                    }

                    $file = $this->upload->data();
                    
                    if( in_array($file['file_ext'], array('.svg', '.psd', '.ai', '.pdf', '.eps')) ) 
                    {
                        $this->load->library('thumb');
                        $this->thumb->file	= $file['full_path'];				

                        $thumbs	= site_url() .'media/assets/uploaded/'. $year .'/'. $month .'';	
                        $this->thumb->createThumb($file['full_path'], $file['file_ext'], array('width'=>500, 'height'=>500), $remove, 'jpg');
                        $file['file_name'] = $file['file_name'].'_thumb.jpg';

                    }
                   

                    $art['url'] 	= site_url() .'media/assets/uploaded/'. $year .'/'. $month .'/'.$file['file_name'];
                    $art['proofid'] 	= $proof_id;
                    //$art['file_name'] 	= $file['file_name'];
                    //$art['file_type'] 	= str_replace('.', '', $file['file_ext']);
                    $this->load->model('proof_detail_m');
                    $this->proof_detail_m->save($art);
                    
                }
                
                $this->load->model('comment_m');
                $comm = new comment_m();
                $user = $this->user;
                $comment = array();
                $comment['order_id']    = $data['order_id'];
                $comment['user_name']   = $user['name'];
                $comment['text']        = 'Update proof.';
                $comment['createdt']    = date("Y-m-d H:i:sa");;
                $comm->save($comment);
                
                $this->load->model('order_m');
                $order = new order_m();
                $order->update(array('artwork'=>'2', 'proof_approved'=>'1'), $data['order_id']);
                
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
                $comment['user_name']   = $user['name'];
                $comment['text']        = 'Approved proof for print.';
                if ($data['is_approved'] === 0)
                    $comment['text']        = 'Remove proof approved.';
                $comment['createdt']    = date("Y-m-d H:i:sa");;
                $comm->save($comment);
                
                $this->load->model('order_m');
                $order = new order_m();
                $order->update(array('proof_approved'=> $data['is_approved']+1), $comment['order_id']);
                
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

        public function deleteImage($id = '')
        {        
                //var_dump($garment);
                if($id == ''){
                    redirect($_SERVER['HTTP_REFERER']);
                    exit();
                }      
                else
                {
                    $this->db->where('id ',$id);
                    if($this->db->delete('order_proof_detail'))   ;                 
                }
                
                redirect($_SERVER['HTTP_REFERER']);
        }
        
	
}