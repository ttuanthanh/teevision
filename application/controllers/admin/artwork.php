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
                $detail = isset($data['d']) ? $data['d'] : '';
                $art_schedule = isset($data['art_schedule']) ? $data['art_schedule'] : '';
                $data['order_des'] = json_encode($detail);
                unset($data['artwork_id']);
                unset($data['d']);
                unset($data['art_schedule']);
                if ($art_id == '')
                {                    
                    $data['createdt'] = date("Y-m-d H:i:sa");
                    $data['modidt'] = date("Y-m-d H:i:sa");
                    $art_id = $this->artwork_m->save($data);
                }
                else
                {
                    $gar_id =  $this->artwork_m->update($data, $art_id);
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
                        redirect('admin/orders/artwork/'.$art_id);
                    }

                    $file = $this->upload->data();
                    
                    if( in_array($file['file_ext'], array('.svg', '.psd', '.ai', '.pdf', '.eps')) ) 
                    {
                        $this->load->library('thumb');
                        $this->thumb->file	= $file['full_path'];				

                        $thumbs	= site_url() .'media/assets/uploaded/'. $year .'/'. $month .'';	
                        $this->thumb->createThumb($file['full_path'], $file['file_ext'], array('width'=>500, 'height'=>500), 0, 'png');
                        $file['file_name'] = $file['file_name'].'_thumb.png';

                    }
                   

                    $art['url'] 	= site_url() .'media/assets/uploaded/'. $year .'/'. $month .'/'.$file['file_name'];
                    $art['artid'] 	= $art_id;
                    //$art['file_name'] 	= $file['file_name'];
                    //$art['file_type'] 	= str_replace('.', '', $file['file_ext']);
                    $this->load->model('artwork_detail_m');
                    $this->artwork_detail_m->save($art);
                    
                }
                
                
                
                $this->load->model('comment_m');
                $comm = new comment_m();
                $user = $this->user;
                $comment = array();
                $comment['order_id']    = $data['order_id'];
                $comment['user_name']   = $user['name'];
                $comment['text']        = 'Update artwork.';
                $comment['createdt']    = date("Y-m-d H:i:sa");;
                $comm->save($comment);
                
                $this->load->model('order_m');
                $order = new order_m();
                $order->update(array('artwork'=>'1', 'artwork_date' => date('Y-m-d H:i:s')  ), $data['order_id']);
                
                if($art_schedule)
                {
                    $this->load->model('artwork_schedule_m');
                    $art_s = new artwork_schedule_m();
                    $art_s->update(array('art_isupload'=>'1'), $art_schedule);
                }
                //
                redirect($_SERVER['HTTP_REFERER']);
        }
        
        public function approve()
        {
                
            $data['is_approved'] = $this->input->post('approved') == 1 ? 2 : 1;

            $this->load->model('comment_m');
            $comm = new comment_m();
            $user = $this->user;
            $comment = array();
            $comment['order_id']    = $this->input->post('order_id');
            $comment['user_name']   = $user['name'];
            $comment['text']        = 'Approved artwork.';
            if ($data['is_approved'] === 1)
                $comment['text']        = 'Remove artwork approved.';
            $comment['createdt']    = date("Y-m-d H:i:sa");;
            $comm->save($comment);

            $this->load->model('order_m');
            $order = new order_m();
            $order->update(array('artwork'=> $data['is_approved']), $comment['order_id']);                
            
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
                    if($this->db->delete('order_artwork_detail'))   ;                 
                }
                
                redirect($_SERVER['HTTP_REFERER']);
        }

        
	
}