<?php
/**
 * @author teevisionprinting - www.teevisionprinting.com
 * @date: 2015-01-10
 * 
 * user layout
 * 
 * @copyright  Copyright (C) 2015 teevisionprinting.com. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE
 *
 */
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User extends Frontend_Controller {
	
	public function __construct(){
        parent::__construct();
		
		$this->lang->load('user');
		$this->load->model('users_m');
		$this->user = $this->session->userdata('user');
    }
	
	public function index($string = '')
	{
		redirect('user/login');
	}
	
	// login form
	public function login()
	{
		if(isset($this->user['username']) && $this->user['username'] != '')
			redirect(site_url());
			
		$this->load->library('form_validation');
		$data					= array();
		$data['forms'] 			= $this->users_m->getFormField('login');
		
		$content				= $this->load->view('components/users/login', $data, true);
		
		$this->data['content']	= $content;		
		$this->data['subview'] 	= $this->load->view('layouts/user/login', array(), true);
		
		$this->theme($this->data, 'user');
	}
	
	function register()
	{
		if(isset($this->user['username']) && $this->user['username'] != '')
			redirect(site_url());
			
		$this->load->library('form_validation');
		
		$data['forms'] = $this->users_m->getFormField('register');
		
		$content = $this->load->view('components/users/register', $data, true);
		
		$this->data['content']	= $content;	
		$this->data['subview'] 	= $this->load->view('layouts/user/register', array(), true);
		
		$this->theme($this->data, 'user');
	}
	
	function complete($msg = '')
	{
		if(isset($this->user['username']) && $this->user['username'] != '')
			redirect(site_url());
			
		if ($this->session->userdata('session_register') == 1)
		{
			$this->session->unset_userdata('session_register');
		}else{
			redirect('user/register');
		}
			
		if ($msg == 'success')
			$msg = lang('user_username_added');
		elseif ($msg == 'error')
			$msg = lang('user_username_notadd');
		elseif ($msg == 'email')		
			$msg = lang('user_register_email_fond');
		else
			redirect('user/register');
			
		$data['msg'] = $msg;
		
		$content				= $this->load->view('components/users/complete', $data, true);
		
		$this->data['content']	= $content;	
		$this->data['subview'] 	= $this->load->view('layouts/user/register', array(), true);
		
		$this->theme($this->data, 'user');
	}
	
	function forgotPassword()
	{
		if(isset($this->user['username']) && $this->user['username'] != '')
			redirect(site_url());
		
		$data = '';
		$content				= $this->load->view('components/users/forgot_password', $data, true);
		
		$this->data['content']	= $content;	
		$this->data['subview'] 	= $this->load->view('layouts/user/login', array(), true);
		
		$this->theme($this->data, 'user');
	}
	
	function changePass($key = '')
	{
		if(!isset($this->user['username']) && $key == '')
			redirect(site_url().'user/register');
		$data = '';
		$data['key'] = $key;
		$content				= $this->load->view('components/users/change_pass', $data, true);
		
		$this->data['content']	= $content;	
		$this->data['subview'] 	= $this->load->view('layouts/user/login', array(), true);
		
		$this->theme($this->data, 'user');
	}
	
	public function userProfile()
	{
		$data = $this->input->post();
		
		$user = $this->session->userdata('user');
		$user->user->profiles = $data;
				
		$this->session->set_userdata('user', $user);			
	}
	
	public function saveDesign()
	{
		$results	= array();
		
		// check user login
		$user = $this->session->userdata('user');
		
//		if ( empty($user['id']) )
//		{
//			$results['error'] = 1;
//			$results['login'] = 1;
//			$results['msg']	= lang('design_msg_save_login');
//			echo json_encode($results);
//			exit;
//		}		
		
		$data = json_decode(file_get_contents('php://input'), true);
		
		$this->load->helper('file');
		$this->load->helper('watermark');
                $watermark = new Watermark();
                
		$path	= ROOTPATH .DS. 'media' .DS. 'assets' .DS. 'system';		
		
		$temp 		= explode(';base64,', $data['image']);
		$buffer		= base64_decode($temp[1]);
		
		$design 					= array();
		
		$design['user_id']			= $user['id'] == 0 ? '-1' : $user['id'];
		$design['vectors']			= $data['vectors'];		
		$design['teams']			= $data['teams'];	
		$design['fonts']			= $data['fonts'];
				
		$designer_id				= $data['designer_id'];
		
		// check design and author
		if ($data['design_file'] != '' && $designer_id == $design['user_id'])
		{
			// override file and update
			$file 			= $data['design_file'];
			
			$path_file		= ROOTPATH .DS. str_replace('/', DS, $file);
			$id				= $data['design_id'];
			$key			= $data['design_key'];
		}
		else
		{
			// save new file
			$this->load->library('file');
			$file 		= new file();
			
			// create path file
			$date 	= new DateTime();
					
			$year	= $date->format('Y');
			$file->create($path .DS. $year, 0755);	
		
			$month 	= $date->format('m');
			$file->create($path .DS. $year .DS. $month, 0755);
			
			$key 		= strtotime("now"). rand();
			$file 		=  'front_'.$key . '.png';
			$path_file	= $path .DS. $year .DS. $month .DS. $file;
			$file		= 'media/assets/system/'.$year .'/'. $month .'/'. $file;

			$id			= null;
			
			$design['design_id'] 		= $key;
                        
                        
		}
		//Thanh add for back design imagec
                $path_file2 	=  '';
                $path_filew2	='';
                if ($data['imageB'] != '')
                {
                    // create path file
                    $date 	= new DateTime();
                    $year	= $date->format('Y');		
                    $month 	= $date->format('m');
                        
                    $temp2 		= explode(';base64,', $data['imageB']);
                    $buffer2	= base64_decode($temp2[1]);
                    $file2 		=  'back_'.$key . '.png';
                    $path_file2	= $path .DS. $year .DS. $month .DS. $file2;
                    write_file($path_file2, $buffer2);
                    
                    $filew2 		=  'back_'.$key . '_w.png';
                    $path_filew2	= $path .DS. $year .DS. $month .DS. $filew2;
                    
                }
                // end design back image
                
		if ( ! write_file($path_file, $buffer))
		{
			$results['error'] = 1;
			$results['msg']	= lang('design_msg_save');
		}
		else
		{
                        
                        
			$design['image']            = $file;
			$design['product_id']       = $data['product_id'];
			$design['product_options']  = $data['product_color'];
                        $design['product_color']    = $data['product_color_title'];
                        $design['design_email']     = $data['design_email'];
                        $design['design_name']      = $data['design_name'];
			$design['design_size']      = $data['sizehtml'];
                        $design['design_price']     = $data['price'];
                        $design['design_note']      = $data['design_note'];
                        $design['system_id']  		= '';
			$design['title']  			= '';
			$design['description']  	= '';
			$design['system_id']  		= '';
                        
			
			$this->load->model('design_m');
						
			$id = $this->design_m->save($design, $id);
			
			if ($id > 0)
			{				
				$results['error'] = 0;
				
				$content = array(
					'design_id'=> $id,
					'design_key'=> $key,
					'designer_id'=> $user['id'],
					'design_file'=> $file,					
				);					
				$results['content'] = $content;
				
				// send email savedesign.
				
				//params shortcode email.
				$params = array(
					'username'=>($user['username'] != '') ?$user['username'] : 'user' ,
					'url_design'=>site_url('design-online/index/'.$data['product_id'].'/'.$data['product_color'].'/'.$key),
				);
				
				//config email.
//				$config = array(
//					'mailtype' => 'html',
//				);
				$subject = configEmail('sub_save_design', $params);
				$message = configEmail('save_design', $params);
				
                                
				$this->load->library('email');
				$this->email->from(getEmail(config_item('admin_email')), getSiteName(config_item('site_name')));
				if($user['email'] != '')
                                    $this->email->to($user['email'], $data['design_email'], getEmail(config_item('admin_email')));    
                                else
                                    $this->email->to($data['design_email'], getEmail(config_item('admin_email')));  
				$this->email->subject ( $subject);
				$this->email->message ($message);   
				//$this->email->send();
			}
			else
			{
				$results['error'] = 1;
				$results['msg']	= lang('design_msg_save');
			}
                        $filew1 		=  'front_'.$key . '_w.png';
			$path_filew1	= $path .DS. $year .DS. $month .DS. $filew1;
                        $watermark->waterImage($path_file, $path_filew1);
                        $watermark->waterImage($path_file2, $path_filew2);
		}
		
		echo json_encode($results);
	}
        
        public function sendMailDesign()
        {
            // check user login
            $user = $this->session->userdata('user');
            $data = $this->input->post();
            //params shortcode email.
            $params = array(
                    'username'=>($user['username'] != '') ?$user['username'] : 'user' ,
                    'url_design'=>$data['design_url']
            );


            $subject = configEmail('sub_save_design', $params);
            //$message = configEmail('save_design', $params);
            $message = file_get_contents('http://tshirt.local/users/designtemplate');
            
            $this->load->library('email');
//            $this->email->set_newline("\r\n");
            $this->email->from(getEmail(config_item('admin_email')), getSiteName(config_item('site_name')));
            if($user['email'] != '')
                $this->email->to($user['email'], $data['email'], getEmail(config_item('admin_email')));    
            else
                $this->email->to($data['email'], getEmail(config_item('admin_email')));  
            $this->email->subject ( $subject);
            $this->email->message ($message);   
            $result = $this->email->send();
            echo $result;
            echo $this->email->print_debugger();
        }

        public function userDesign()
	{		
		if ( empty($this->user['id']) )
		{			
			echo 'Please login!';
			exit;
		}
		
		// load design of user
		$this->load->model('design_m');
		$data 	= $this->design_m->getUserDesigns($this->user['id']);
		
		$this->data['data'] = $data;
		$this->load->view('components/design/design', $this->data);		
	}
	
	function removeDesign($id = 0)
	{
		if (isset($this->user['id']) && $this->user['id'] > 0)
		{
			if ($id > 0)
			{
				$this->load->model('design_m');
				$this->design_m->db->where('user_id', $this->user['id']);
				$this->design_m->delete($id);
			}
		}
	}
}

?>