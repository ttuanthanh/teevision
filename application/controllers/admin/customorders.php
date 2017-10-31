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
        public function changeartworkdate($id = ''){
            
                $data = $this->input->post();
                $mess = '';
                //$this->load->model('order_m');
                
                $pr['artwork_date']     = $data['art_date'];
                $gar_id =  $this->order_m->update($pr, $id);
                $mess = 'Changed artwork date to '.$pr['artwork_date'];
                //var_dump($gar_id);
                
                
                $this->load->model('comment_m');
                $comm = new comment_m();
                $user = $this->user;
                $comment = array();
                $comment['order_id']    = $id;
                $comment['user_name']   = $user['name'];
                $comment['text']        = $mess;
                $comment['createdt']    = date("Y-m-d H:i:sa");;
                $comm->save($comment);
                
//                $this->load->model('order_m');
//                $order = new order_m();
//                $order->update(array('artwork'=>'1'), $data['order_id']);
                
                redirect($_SERVER['HTTP_REFERER']);
        }
        
        public function saveartworkschedule($id = ''){
            
                $data = $this->input->post();
                $mess = '';
                $this->load->model('artwork_schedule_m');
                $art_schedule = new artwork_schedule_m();
                if(!isset($data['schedule_id']) || '' == $data['schedule_id']){
                    $data['art_rush'] = $data['art_rush'] == 'on' ? 1 : 0;
                    unset($data['schedule_id']);
                    $art_schedule->save($data);
                }
                else{
                    $schedule_id = $data['schedule_id'];
                    unset($data['schedule_id']);
                    if($data['art_comment'] !== $data['art_comment_copy'])
                        $data['art_iscomment'] =1;
                    if(isset($data['art_comment_copy']))
                        unset($data['art_comment_copy']);
                    if ($data['art_rush'] == 'on')  $data['art_rush'] = 1; else unset($data['art_rush']);
                    
                    $art_schedule->update($data, $schedule_id);
                }
                

                $mess = 'artwork schedule saved ';
                //var_dump($gar_id);
                
                
                $this->load->model('comment_m');
                $comm = new comment_m();
                $user = $this->user;
                $comment = array();
                $comment['order_id']    = $id;
                $comment['user_name']   = $user['name'];
                $comment['text']        = $mess;
                $comment['createdt']    = date("Y-m-d H:i:sa");;
                $comm->save($comment);
                
//                $this->load->model('order_m');
//                $order = new order_m();
//                $order->update(array('artwork'=>'1'), $data['order_id']);
                
                redirect($_SERVER['HTTP_REFERER']);
        }
}