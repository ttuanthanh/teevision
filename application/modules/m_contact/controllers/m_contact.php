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

class M_Contact extends MY_Controller{ 

	public function __construct(){
		parent::__construct();	
	} 
	
	public function index($id = '')
	{
		$this->load->helper('url');
		$this->load->helper('cms');
		$this->lang->load('contact');
		$this->m_contact_m = $this->load->model('m_contact/m_contact_m');
		
		$this->data['forms'] = $this->m_contact_m->getFormField('contact');
		$contact = $this->m_contact_m->getContact($id);
		
		if($email = $this->input->post('email'))
		{
			$this->load->library('form_validation');
			if(count($contact) > 0)
			{
				$this->form_validation->set_rules('subject', lang('subject'), 'trim|required|min_length[2]|max_length[200]');
				$this->form_validation->set_rules('email', lang('email'), 'trim|required|valid_email');
                $this->form_validation->set_rules('g-recaptcha-response','Captcha','callback_recaptcha');


                if ($this->form_validation->run() == TRUE)
				{
					$name = $this->input->post('name');
					$subject = $this->input->post('subject');
					$message = $this->input->post('message');
					
					// send email
//					$config = array(
//						'mailtype' => 'html',
//					);
					$this->load->library('email');
					$this->email->from($email, getSiteName(config_item('site_name')));
					$this->email->to($contact->email);  
					if($contact->copy == 1)
						$this->email->cc($email);
					if($contact->subject != '' && strpos($contact->subject, '{content}') > 0) // add subject
						$this->email->subject (str_replace('{content}', $subject, $contact->subject));
					else
						$this->email->subject ($subject);
						
					if($contact->message != '' && strpos($contact->message, '{content}') > 0) // add message
						$message = str_replace('{content}', $message, $contact->message);
					
					$fields = $this->input->post('fields');
					$add_info = '';
					if(is_array($fields))
					{
						foreach($fields as $key=>$val)
						{
							$add_info .= $add_info.'<p>'.$key.': '.$val.'</p>';
						}
					}
					
					$this->email->message ($add_info.$message); 
				
					if ($this->email->send())
					{
						$this->data['msg'] = lang('contact_send_email_success_msg');
					}else
					{
						$this->data['error'] = lang('contact_send_email_error_msg');
						$this->data['data'] = $this->input->post();
					}
					
				}else
				{
					$this->data['error'] = validation_errors();
					$this->data['data'] = $this->input->post();
				}
			}else
			{
				$this->data['error'] = lang('contact_not_found_msg');
			}
		}
		
		if(count($contact) > 0)
		{
			$css = getCss($contact, 'module');
			$this->data['contact']	= $contact;	
			$this->data['css']	= $css;	
			$this->load->view('m_contact', $this->data);
		}
	}

    public function recaptcha($str='')
    {
        $google_url="https://www.google.com/recaptcha/api/siteverify";
        $secret='6LeJS2kUAAAAAD8TdVePVp7WYTQQinOcAri450aL';
        $ip=$_SERVER['REMOTE_ADDR'];
        $url=$google_url."?secret=".$secret."&response=".$str."&remoteip=".$ip;
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_TIMEOUT, 10);
        curl_setopt($curl, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.16) Gecko/20110319 Firefox/3.6.16");

//        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0);
//        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);

        $res = curl_exec($curl);
        if ($res === false) {
            throw new Exception(curl_error($curl), curl_errno($curl));
        }

        curl_close($curl);
        $res= json_decode($res, true);
        //reCaptcha success check
        if($res['success'])
        {
            return TRUE;
        }
        else
        {
            $this->form_validation->set_message('recaptcha', 'The reCAPTCHA field is telling me that you are a robot. Shall we give it another try?');
            return FALSE;
        }
    }
}