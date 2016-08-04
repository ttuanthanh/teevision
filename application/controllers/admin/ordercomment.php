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


class Ordercomment extends Admin_Controller {

    public function __construct(){
	
        parent::__construct();
		
                // check user permission		
		$this->users_m->userPermission('orders');
		$this->load->library('session');
		$this->user = $this->session->userdata('user');
                $this->load->model('order_comment_m');
    }

        public function getComment($order = '') 
	{		
		if ($order != ''){
                    $cm = $this->order_comment_m->getByOrder($order);                    
                    $html = '';
                    
                    foreach ($cm as $row){
                        $html .= '<p>'.$row->user_name.'('.$row->createdt.'): '.$row->text.'<p>';
                    }                    
                    return $html;                    
                }
                return '';
        }
        
        public function save(){
            
                $data = $this->input->post();
                $art_id = $data['artwork_id'];
                unset($data['artwork_id']);
                if ($art_id == '')
                {                    
                    $data['createdt'] = date("Y-m-d H:i:sa");
                    $data['modidt'] = date("Y-m-d H:i:sa");
                    $gar_id = $this->artwork_m->save($data);
                }
                else
                {
                    $gar_id =  $this->artwork_m->update($data, $art_id);
                    //var_dump($gar_id);
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