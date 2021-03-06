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

class Orders extends Admin_Controller
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
	
	function index()
	{
		
		$this->data['breadcrumb'] = lang('orders_admin_orders_title');
                $this->data['meta_title'] = lang('orders_admin_orders_title');
                $this->data['sub_title'] = '';
		
		// load settting
		$this->load->model('settings_m');
		$row 	= $this->settings_m->getSetting();
		$setting = json_decode($row->settings);
		
		$this->data['setting'] 	= $setting;	

		if ($this->input->post('option'))
		{		
			$this->session->set_userdata('search_order', $this->input->post('search'));
			$this->session->set_userdata('option_order', $this->input->post('option_order'));
		}
		
		// pagination
		$this->load->library('pagination');
		$config['base_url'] 		= site_url('admin/orders/index');
		$config['total_rows']		= $this->order_m->getOrders(true, 5, 1, $this->session->userdata('search_order'), $this->session->userdata('option_order'));
		
		if ($this->input->post('option'))
		{
			if ($this->input->post('option') == '')
				$this->session->set_userdata('per_page', $config['total_rows']);
			else
				$this->session->set_userdata('per_page', $this->input->post('per_page'));
		}
		
		if($this->session->userdata('per_page') != '')
			$config['per_page'] = $this->session->userdata('per_page');
		else
			$config['per_page'] 	= 20;
		
		$config['uri_segment'] 		= 4;
		$config['prev_link'] 		= '&larr;';
		$config['next_link'] 		= '&rarr;';
		$config['first_link']		= '&laquo;';
		$config['last_link'] 		= '&raquo;';
		
		$this->pagination->initialize($config); 
		$this->data['per_page'] = $config['per_page'];
		$this->data['links'] 	= $this->pagination->create_links();
		$this->data['per_page'] 	= $config['per_page'];
		$this->data['search'] = $this->session->userdata('search_order');
		$this->data['option'] = $this->session->userdata('option_order');
		
		$orders = $this->order_m->getOrders(false, $config['per_page'], $this->uri->segment(5), $this->session->userdata('search_order'), $this->session->userdata('option_order'));
		$this->data['orders'] = $orders; 
				
		// Load view
		$this->data['subview'] = 'admin/order/index';
		$this->load->view('admin/_layout_main', $this->data);
	}
	
	public function download($id, $position, $product_id, $file = 'svg')
	{
		if ($id > 0)
		{
			$this->load->model('product_m');
			$design 	= $this->product_m->getProductDesign($product_id);
			if (count($design))
			{
				$area		= json_decode($design->area);
				if (isset($area->$position) && $area->$position != '')
				{
					$view 		= json_decode(str_replace("'", '"', $area->$position));	
					$radius 	= str_replace('px', '', $view->radius);					
					$svg = '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" height="'.$view->height.'" width="'.$view->width.'">';
					
					$data 			= $this->order_m->getDesignDetail($id);
					$vectors 		= json_decode($data->vectors);			
					$items			= $vectors->$position;
					
					$items			= json_decode ( json_encode($items), true);
					function cmp($a, $b)
					{
						return strcmp($a['zIndex'], $b['zIndex']);						
					}
					usort($items, 'cmp');
					
					$items			= json_decode ( json_encode($items) );
					
					foreach($items as $item)
					{
						
						$top 		= str_replace('px', '', $item->top);
						$left 		= str_replace('px', '', $item->left);
						
						if ( isset($item->file) && isset($item->file->type) && $item->file->type == 'image' )
						{
							preg_match_all("/xlink:href=\"(.*)\">/i", $item->svg, $links);
							if (isset($links[1][0]))
							{
								$link 	= str_replace('_thumb', '', $links[1][0]);
								$data 	= file_get_contents($link);								
								$base64 = 'data:image/PNG;base64,' . base64_encode($data);
								$temp = explode($links[1][0], $item->svg);
								if (isset($temp[1]))
								{
									$item->svg = $temp[0].$base64.$temp[1];
								}								
							}
						}
						
						$doc = new SimpleXMLElement($item->svg);
                                                $tt = $doc->attributes();
						unset($tt['x']);
						unset($tt['y']);						
						$item->svg = $doc->asXml();					
						
						if ($item->rotate != 0)
						{
							$width 		= str_replace('px', '', $item->width);
							$height 	= str_replace('px', '', $item->height);
							$width		= (int) $width/2;
							$height		= (int) $height/2;

							$strsvg = str_replace('<svg ', '<svg ', $item->svg);
							$svg 		.= '<g transform="translate('.$left.', '.$top.')  rotate('.$item->rotate.' '.$width.' '.$height.')">'.$strsvg.'</g>';
						}
						else
						{
							$svg 		.= str_replace('<svg ', '<svg y="'.$top.'" x="'.$left.'" ', $item->svg);
						}
					}
					if ($radius > 0)
						$svg .= '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" height="'.($view->height+$radius).'" width="'.($view->width+$radius).'"><rect x="-'.(int)($radius/2).'" y="-'.(int)($radius/2).'" rx="'.$radius.'" ry="'.$radius.'" height="'.($view->height+$radius).'" width="'.($view->width+$radius).'" style="fill:none;stroke:#FFFFFF;stroke-width:'.$radius.';"/></svg>';
					$svg .= '</svg>';
					
					$svg = str_replace('<?xml version="1.0"?>', '', $svg);
										
					header('Content-type:image/svg+xml');					
					if ($file == 'svg')
					{
						header('Content-Disposition: attachment; filename="'.$position.'.svg"');
					}
					else
					{						
						$dom = new DOMDocument;
						$dom->loadXML($svg);
						$books = $dom->getElementsByTagName('svg');
						foreach ($books as $book)
						{
							$width 	= $book->getAttribute('width') * 15;
							$book->setAttribute('width', $width);
							
							$height 	= $book->getAttribute('height') * 15;
							$book->setAttribute('height', $height);
							
							$x 	= $book->getAttribute('x') * 15;
							$book->setAttribute('x', $x);
							
							$y 	= $book->getAttribute('y') * 15;
							$book->setAttribute('y', $y);							
						}
						
						$images = $dom->getElementsByTagName('image');
						if ($images->length  > 0) {
							foreach ($images as $image) {
								$width 	= $image->getAttribute('width') * 15;
								$image->setAttribute('width', $width);
								
								$height 	= $image->getAttribute('height') * 15;
								$image->setAttribute('height', $height);
								
								$x 	= $image->getAttribute('x') * 15;
								$image->setAttribute('x', $x);
								
								$y 	= $image->getAttribute('y') * 15;
								$image->setAttribute('y', $y);
							}							
						}
						
						echo $dom->saveXML();						
						exit;
					}					
					echo $svg;
					exit();					
				}
			}
		}
	}
		
	
	function detailbk($id = '')
	{		
		if((int)$id == 0)
			redirect('admin/orders');
			
		$this->data['breadcrumb'] = lang('orders_admin_order_title');
                $this->data['meta_title'] = lang('orders_admin_order_title');
                $this->data['sub_title'] = lang('detail');
		
		// get order detail
		$order 	= $this->order_m->getOrder($id);
		
		if(count($order) == 0)
		{		
			$this->session->set_flashdata('error', lang('orders_admin_item_id_not_found_msg'.$id));
			redirect('admin/orders');			
		}		
		
		// get items
		$this->data['order'] = $order;
		$items = $this->order_m->getItems($id);
		$this->data['items'] = $items;
		
		// get cliparts
		$listClipart = array();
		$cliparts = $this->order_m->getCliparts($id);
		
		$i = 0;
		foreach($cliparts as $clipart)
		{
			foreach($clipart as $key=>$val)
			{				
			}
			$i++;
		}
		$this->data['listClipart'] = $listClipart;
		
		// get setting
		$this->load->model('settings_m');
		$row 	= $this->settings_m->getSetting();
		$setting = json_decode($row->settings);
		$this->data['setting'] = $setting;
		
		// get histories
		$this->data['histories'] = $this->order_m->getHistory($id);
		
		// get user info
		$userInfo	= $this->order_m->getUserInfo($id);
		if ($userInfo !== false)
		{
			$address	= json_decode($userInfo->address);
		}
		else
		{
			$address	= false;
		}
		$this->data['address'] = $address;
		
		
		// get shipping method
		$this->load->model('shipping_m');
		$shipping	= $this->shipping_m->get($order->shipping_id, true);
		$this->data['shipping'] = $shipping;
		
		// get payment method
		$this->load->model('payment_m');
		$payment	= $this->payment_m->get($order->payment_id, true);
		$this->data['payment'] = $payment;
		
		// get discount
		if ($order->discount_id > 0)
		{
			$this->load->model('coupon_m');
			$discount	= $this->coupon_m->get($order->discount_id, true);
		}
		else
		{
			$discount	= array();
		}
		$this->data['discount'] = $discount;
		
		
		// Load view
		$this->data['subview'] = 'admin/order/detailnew';
		$this->load->view('admin/_layout_main', $this->data);
	}
	
	function status($type = '', $id = '')
	{
		// load setting
		$this->load->model('settings_m');
		$row 	= $this->settings_m->getSetting();
		$setting = json_decode($row->settings);	
			
		if($this->input->post('id'))
		{
			// change status of each item
			$id 		= $this->input->post('id');
			$order_id 	= $this->input->post('order_id');
			$status 	= $this->input->post('status');
			
			$data['poduct_status'] = $status;
			
			//status exists.
			if($this->order_m->checkStatus($id, $status, false)) 
				return;
			
			// update item order
			$data['modified_on']	= date('Y-m-d H:i:s');
			$this->order_m->_table_name	= 'order_items';
			$this->order_m->save($data, $id);
			
			// update history
			$item = $this->order_m->getItem($id);
			$item_name= $item->product_name;
			$content = array(
				$item_name=>$status
			);
					
			$data_his = array(
				'order_id'=>$order_id,
				'label'=>'item_status',
				'content'=>	json_encode($content),
				'date'=>date('Y-m-d H:i:s'),
			);
			$this->order_m->_table_name = "orders_histories";
			if($this->order_m->save($data_his))
			{
				//send email to customer.
				$customer = $this->order_m->getUser($order_id);
					
				if(count($customer) > 0)
				{
					//$this->load->library('email');
					//config email.
//					$config = array(
//						'mailtype' => 'html',
//						'charset'  => 'utf-8',
//						'priority' => '1'
//					);
					$subject = 'Changed item order status';
					$message = '<p>Hello '.$customer->username.'</p><p>The status of product <a target="_blank" href="'.site_url('product/'.$id).'">'.$item_name.'</a> in your order number '.$customer->order_number.' is changed to completed.</p><p>Regards,</p><p><a href="'.site_url().'">'.site_url().'</a></p>';
					
					$this->load->library('email');
					//$this->email->initialize($config);
					$this->email->from(getEmail(config_item('admin_email')), getSiteName(config_item('site_name')));
					$this->email->to($customer->email);    
					$this->email->subject ( $subject);
					$this->email->message ($message);   
				
					$this->email->send();
				}
			}	
			$order 	= $this->order_m->getOrder($order_id);
			
			// get setting
			$this->load->model('settings_m');
			$row 	= $this->settings_m->getSetting();
			$setting = json_decode($row->settings);
			$this->data['setting'] = $setting;
			// get shipping method
			$this->load->model('shipping_m');
			$shipping	= $this->shipping_m->get($order->shipping_id, true);
			$this->data['shipping'] = $shipping;
			
			// get payment method
			$this->load->model('payment_m');
			$payment	= $this->payment_m->get($order->payment_id, true);
			$this->data['payment'] = $payment;
			
			// get discount
			if ($order->discount_id > 0)
			{
				$this->load->model('coupon_m');
				$discount	= $this->coupon_m->get($order->discount_id, true);
			}
			else
			{
				$discount	= array();
			}
			$this->data['discount'] = $discount;
			$this->data['order'] = $order;
			
			$this->data['items'] = $this->order_m->getItems($order->id);
			$this->load->view('admin/order/list_item', $this->data);
		}
		elseif(($type == 'pending' || $type == 'completed' || $type == 'refused' ) && $id != '')
		{
			$data['status'] = $type;
			
			if($this->order_m->checkStatus($id, $type, true)) //status order exists.
			{
				$this->session->set_flashdata('error', lang('orders_admin_cannot_change_status_msg'));
				redirect(site_url('admin/orders'));
			}
				
			$where = array(
				'id'=>$id,
			);
			$this->order_m->_table_name = "orders";
			if($this->order_m->updateOrder($where, $data))
			{	
				$order = $this->order_m->getOrder($id);
				$order_name = $order->order_number;
				$content = array(
					$order_name=>$type
				);
				$data_his = array(
					'order_id'=>$id,
					'label'=>'order_status',
					'content'=>json_encode($content),
					'date'=>date('Y-m-d H:i:s'),
				);
				$this->order_m->_table_name = "orders_histories";
				if($this->order_m->save($data_his))
				{
					$customer = $this->order_m->getUser($id);
					
					//$this->load->library('email');
					
					//params shortcode
					$params = array(
						'username'=>$customer->username,
						'email'=>$customer->email,
						'date'=>date('Y-m-d H:i:s'),
						'total'=>$customer->total,
						'order_number'=>$customer->order_number,
						'status'=>$type,
					);
					
					//config email.
					// send email to customer 
//					$config = array(
//						'mailtype' => 'html',
//						'charset'  => 'utf-8',
//						'priority' => '1'
//					);
					$subject = configEmail('sub_order_status', $params);
					$message = configEmail('order_status', $params);
					
					$this->load->library('email');
					//$this->email->initialize($config);
					$this->email->from(getEmail(config_item('admin_email')), getSiteName(config_item('site_name')));
					$this->email->to($customer->email);    
					$this->email->subject ( $subject);
					$this->email->message ($message);   
				
					if ($this->email->send())
						$this->session->set_flashdata('msg', lang('orders_admin_email_change_status_order_msg').$type);
					else
						$this->session->set_flashdata('error', lang('orders_admin_change_status_not_send_email_msg'));
					redirect(site_url('admin/orders'));
				}
			}else
			{
				$this->session->set_flashdata('error', lang('orders_admin_cannot_change_status_msg'));
			}
			redirect(site_url('admin/orders'));
		}else
		{
			redirect(site_url('admin/orders'));
		}
	}
	
	function delete($id = '')
	{
		if($id != '')
		{
			$this->order_m->_table_name = "orders";
			$where = array(
				'id'=>$id,
			);
			if($this->order_m->deleteOrder($where))
			{
				//delete userinfo.
				$this->order_m->_table_name = "orders_userinfo";
				$where_user = array(
					'order_id'=>$id,
				);
				$this->order_m->deleteOrder($where_user);
				
				//delete clipart.
				$this->order_m->_table_name = "order_cliparts";
				$where_items = array(
					'order_id'=>$id,
				);
				$this->order_m->deleteOrder($where_items);
				
				//delete items.
				$this->order_m->_table_name = "order_items";
				$where_items = array(
					'order_id'=>$id,
				);
				$this->order_m->deleteOrder($where_items);
				
				//delete history.
				$this->order_m->_table_name = "orders_histories";
				$where_his = array(
					'order_id'=>$id,
				);
				$this->order_m->deleteOrder($where_his);
				
				$this->session->set_flashdata('msg', lang('orders_admin_delete_order_success_msg'));
				redirect(site_url('admin/orders/schedules'));
			}else
			{
				$this->session->set_flashdata('error', lang('orders_admin_delete_order_error_msg'));
				redirect(site_url('admin/orders/schedules'));
			}
		}else
		{
			if($checkb = $this->input->post('checkb'))
			{
				foreach($checkb as $id)
				{
					$this->order_m->_table_name = "orders";
					$where = array(
						'id'=>$id,
					);
					if($this->order_m->deleteOrder($where))
					{
						//delete userinfo.
						$this->order_m->_table_name = "orders_userinfo";
						$where_user = array(
							'order_id'=>$id,
						);
						$this->order_m->deleteOrder($where_user);
						
						//delete clipart.
						$this->order_m->_table_name = "order_cliparts";
						$where_items = array(
							'order_id'=>$id,
						);
						$this->order_m->deleteOrder($where_items);
						
						//delete items.
						$this->order_m->_table_name = "order_items";
						$where_items = array(
							'order_id'=>$id,
						);
						$this->order_m->deleteOrder($where_items);
						
						//delete history.
						$this->order_m->_table_name = "orders_histories";
						$where_his = array(
							'order_id'=>$id,
						);
						$this->order_m->deleteOrder($where_his);
					}
				}
				$this->session->set_flashdata('msg', lang('orders_admin_delete_order_success_msg'));
				redirect(site_url('admin/orders/schedules'));
			}
			$this->session->set_flashdata('error', lang('orders_admin_delete_order_error_msg'));
			redirect(site_url('admin/orders/schedules'));
		}
	}
	
	function history()
	{
		if($this->input->post('id'))
		{
			$id = $this->input->post('id');
			$this->data['histories'] = $this->order_m->listHistory($id);
			$this->load->view('admin/order/list_history', $this->data);
		}
	}
	
	function pdf($id = '')
	{
		if($id == '' || $id == 0)
			redirect('admin/orders');
			
		// load settting
		$this->load->model('settings_m');
		$row 	= $this->settings_m->getSetting();
		$setting = json_decode($row->settings);
		
		$order = $this->order_m->getOrder($id);
		if(count($order) == 0)
		{	
			$this->session->set_flashdata('error', lang('orders_admin_item_id_not_found_msg').$id);
			redirect('admin/orders');
		}
		
		// get user info
		$billing = array(
			'name'=>$order->name,
			'username'=>$order->username,
			'email'=>$order->email,
		);
		
		$userInfo	= $this->order_m->getUserInfo($id);
		if ($userInfo !== false)
		{
			$address	= json_decode($userInfo->address, true);
		}
		else
		{
			$address	= array();
		}
		
		// get items
		$items = $this->order_m->getItems($id);
		
		// get shipping method
		$this->load->model('shipping_m');
		$shipping	= $this->shipping_m->get($order->shipping_id, true);
		
		// get payment method
		$this->load->model('payment_m');
		$payment	= $this->payment_m->get($order->payment_id, true);
		
		// get discount
		if ($order->discount_id > 0)
		{
			$this->load->model('coupon_m');
			$discounts	= $this->coupon_m->get($order->discount_id, true);
		}
		else
		{
			$discounts	= array();
		}
		
		if(empty($setting->invoice_logo))
			$setting->invoice_logo = '';
		
		// get Products.
		$design_item = $this->order_m->getDesigns($id);
		
		$data = array(
			'shop_name'=>$setting->site_name,
			'shop_url'=>site_url(),
			'logo'=>$setting->invoice_logo,
			'order_number'=>$order->order_number,
			'date'=>date("Y-m-d", strtotime($order->created_on)),
			'date_ship'=>date("Y-m-d", strtotime($order->modified_on)),
			'status'=>$order->status,
			'billing'=>$billing,
			'user_id'=>$order->user_id,
			'address'=>$address,
			'shipping'=>$shipping,
			'shipping_price'=>$order->shipping_price,
			'payment_price'=>0.0,
			'items'=>$items,
			'setting'=>$setting,
			'payment'=>$payment,
			'discounts'=>$discounts,
			'discount'=>$order->discount,
			'products'=>$design_item,
		);
		
		//create pdf.
		$this->load->library('pdf/pdf.php');
		$config = array(
			'write_type'=>'I'
		);

		$pdf = new Pdf($config);
		$file_name = 'Order-'.$order->order_number.'.pdf';
		$pdf->CreatePdf($file_name, $data);
	}
	
	// view detail of design
	function view($id = '', $confirm = '')
	{
		$this->load->model('settings_m');
		$row 	= $this->settings_m->getSetting();
		$setting = json_decode($row->settings);
		$this->data['setting'] = $setting;
		
		$data = $this->order_m->getDesign($id);
		$this->data['product'] = $data;		
                
                //$order = $this->order_m->getItems($id);
                //$this->data['order'] = $order;
                
		$this->load->view('admin/order/view_lightbox', $this->data);
	}
        
        // view detail of design
	function viewdesign($id = '')
	{
		$this->load->model('settings_m');
		$row 	= $this->settings_m->getSetting();
		$setting = json_decode($row->settings);
		$this->data['setting'] = $setting;
		
		$data = $this->order_m->getDesignDetail($id);
		$this->data['product'] = $data;		
                
                //$order = $this->order_m->getItems($id);
                //$this->data['order'] = $order;
                
		$this->load->view('admin/order/view_lightbox', $this->data);
	}
        
        
	// view detail of design
	function schedules($id = '', $confirm = '')
	{
		
		$this->data['breadcrumb'] = lang('orders_admin_orders_title');
                $this->data['meta_title'] = lang('orders_admin_orders_title');
                $this->data['sub_title'] = '';
		
		// load settting
		$this->load->model('settings_m');
		$row 	= $this->settings_m->getSetting();
		$setting = json_decode($row->settings);
		
		$this->data['setting'] 	= $setting;	
                
		$this->session->set_userdata('option_order', '');
                if ($this->input->get('option_s'))
		{		
			$this->session->set_userdata('search_order', $this->input->post('search'));
			$this->session->set_userdata('option_order', $this->input->get('option_s'));
		}
		if ($this->input->post('option_s'))
		{		
			$this->session->set_userdata('search_order', $this->input->post('search'));
			$this->session->set_userdata('option_order', $this->input->post('option_s'));
		}
		
		// pagination
		$this->load->library('pagination');
		$config['base_url'] 		= site_url('admin/orders/schedules');
		$config['total_rows']		= $this->order_m->getOrdersSched(true, 5, 1, $this->session->userdata('search_order'), $this->session->userdata('option_order'));
		
		if ($this->input->post('option_s'))
		{
			if ($this->input->post('option_s') == '')
				$this->session->set_userdata('per_page', $config['total_rows']);
			else
				$this->session->set_userdata('per_page', $this->input->post('per_page'));
		}
		
		if($this->session->userdata('per_page') != '')
			$config['per_page'] = $this->session->userdata('per_page');
		else
			$config['per_page'] 	= 100;
		
		$config['uri_segment'] 		= 4;
		$config['prev_link'] 		= '&larr;';
		$config['next_link'] 		= '&rarr;';
		$config['first_link']		= '&laquo;';
		$config['last_link'] 		= '&raquo;';
		
		$this->pagination->initialize($config); 
		$this->data['per_page'] = $config['per_page'];
		$this->data['links'] 	= $this->pagination->create_links();
		$this->data['per_page'] = $config['per_page'];
		$this->data['search'] = $this->session->userdata('search_order');
		$this->data['option'] = $this->session->userdata('option_order');
		
		$orders = $this->order_m->getOrdersSched(false, $config['per_page'], $this->uri->segment(4), $this->session->userdata('search_order'), $this->session->userdata('option_order'));
		$this->data['orders'] = $orders; 
		
                // Load view
		$this->data['subview'] = 'admin/order/schedules';
		$this->load->view('admin/_layout_main', $this->data);
	}
        function detail($id = '')
	{		
		if((int)$id == 0)
			redirect('admin/orders');
			
		$this->data['breadcrumb'] = lang('orders_admin_order_title');
                $this->data['meta_title'] = lang('orders_admin_orders_title');
                $this->data['sub_title'] = lang('detail');
		
		// get order detail
		$order 	= $this->order_m->getOrderSchedule($id);
		
		if(count($order) == 0)
		{		
			$this->session->set_flashdata('error', lang('orders_admin_item_id_not_found_msg'.$id));
			redirect('admin/orders');			
		}		
		//var_dump($order);
		// get items
		$this->data['order'] = $order;
		$items = $this->order_m->getItems($id);
		$this->data['items'] = $items;
		
		// get cliparts
		$listClipart = array();
		$cliparts = $this->order_m->getCliparts($id);
		
		$i = 0;
		foreach($cliparts as $clipart)
		{
			foreach($clipart as $key=>$val)
			{				
			}
			$i++;
		}
		$this->data['listClipart'] = $listClipart;
		
		// get setting
		$this->load->model('settings_m');
		$row 	= $this->settings_m->getSetting();
		$setting = json_decode($row->settings);
		$this->data['setting'] = $setting;
		
		// get histories
		$this->data['histories'] = $this->order_m->getHistory($id);
		
		// get user info
		$userInfo	= $this->order_m->getUserInfo($id);
		if ($userInfo !== false)
		{
			$address	= json_decode($userInfo->address);
		}
		else
		{
			$address	= false;
		}
		$this->data['address'] = $address;
		
		
		// get shipping method
		$this->load->model('shipping_m');
		$shipping	= $this->shipping_m->get($order->shipping_id, true);
		$this->data['shipping'] = $shipping;
		
		// get payment method
		$this->load->model('payment_m');
		$payment	= $this->payment_m->get($order->payment_id, true);
		$this->data['payment'] = $payment;
		
		// get discount
		if ($order->discount_id > 0)
		{
			$this->load->model('coupon_m');
			$discount	= $this->coupon_m->get($order->discount_id, true);
		}
		else
		{
			$discount	= array();
		}
		$this->data['discount'] = $discount;
		
                $this->load->model('comment_m');
                $this->load->helper('comment');
                $comments = $this->comment_m->getByOrder($id);
                $cm_box  = comment_box($comments, $id);
                $this->data['comment'] = $cm_box;
		
		// Load view
		$this->data['subview'] = 'admin/order/detail';
		$this->load->view('admin/_layout_main', $this->data);
	}
        
        function garment($id = '', $gra_id='')
	{		
                if ($id == '')
                    redirect('admin/orders/schedules');
                
                $this->load->model('garment_m');
                
		$this->data['breadcrumb'] = 'Garment';
                $this->data['meta_title'] = 'Order Garment';
                $this->data['sub_title'] = '';
		
                if ($id != '')
                {
                    $order = $this->order_m->getOrderSchedule($id); 
                    $this->data['order'] = $order;
                    if ($gra_id != '')
                        $this->data['garment'] = $this->garment_m->getData($gra_id);
                }
                
		//
		//$orders = $this->order_m->getOrders(false, $config['per_page'], $this->uri->segment(5), $this->session->userdata('search_order'), $this->session->userdata('option_order'));
		$this->data['garments'] = $this->garment_m->getByOrder($id); 
		
		
		// Load view
		$this->data['subview'] = 'admin/order/garment';
		$this->load->view('admin/_layout_main', $this->data);
	}
        
        public function proof_approved ($id = '')
	{		
                if ($id == '')
                    redirect('admin/orders/schedules');
                
                //$this->load->model('garment_m');
                
                if ($id != '')
                {
                    $data = $this->order_m->getOrder($id);
                    $order = new Order_m();//  
                    
                    $proof['proof_approved'] = 0;
                    if ($data->proof_approved == 0)
                        $proof['proof_approved'] = 1;
                    
                    $order->update($proof, $id);
                    //return $proof['proof_approved'];
                }
                
                //echo 'history.go(-1)';
                //redirect('admin/orders/detail/'.$id);
                redirect($_SERVER['HTTP_REFERER']);

	}
        
        
        
        public function balance ($id = '')
	{		
                if ($id == '')
                    redirect('admin/orders/schedules');
                
                //$this->load->model('garment_m');
                
                if ($id != '')
                {
                    $data = $this->order_m->getOrder($id);
                    $order = new Order_m();//  
                    
                    $proof['balance'] = 0;
                    if ($data->balance == 0)
                        $proof['balance'] = 1;
                    
                    $order->update($proof, $id);
                    //return $proof['proof_approved'];
                }
                
                //echo 'history.go(-1)';
                //redirect('admin/orders/detail/'.$id);
                redirect($_SERVER['HTTP_REFERER']);

	}
        
        
        public function changeStatusOrder ($id = '', $type = '', $tracking_num = '')
	{		
                if ($id == '' || !$_SERVER['HTTP_REFERER'])
                    redirect('admin/orders/schedules');
                
                //$this->load->model('garment_m');
                
                if ($id != '')
                {
                    $order = new Order_m();// 
                    $track['tracking_num'] = $tracking_num;
                    $order->update($track, $id);
                    
                    
			$data['status'] = $type;
			
			if($this->order_m->checkStatus($id, $type, true)) //status order exists.
			{
				$this->session->set_flashdata('error', lang('orders_admin_cannot_change_status_msg'));
				redirect(site_url('admin/orders'));
			}
                        
                        if($type == "completed")
                            $data['completed_on'] = date('Y-m-d H-i-s');
				
			$where = array(
				'id'=>$id,
			);
			$this->order_m->_table_name = "orders";
			if($this->order_m->updateOrder($where, $data))
			{	
				$order = $this->order_m->getOrder($id);
				$order_name = $order->order_number;
				$content = array(
					$order_name=>$type
				);
				$data_his = array(
					'order_id'=>$id,
					'label'=>'order_status',
					'content'=>json_encode($content),
					'date'=>date('Y-m-d H:i:s'),
				);
				$this->order_m->_table_name = "orders_histories";
				if($this->order_m->save($data_his))
				{
					$customer = $this->order_m->getUser($id);
					
					//$this->load->library('email');
					
					//params shortcode
					$params = array(
						'username'=>$customer->username,
						'email'=>$customer->email,
						'date'=>date('Y-m-d H:i:s'),
						'total'=>$customer->total,
						'order_number'=>$customer->order_number,
						'status'=>$type,
					);
					
					//config email.
					// send email to customer 
//					$config = array(
//						'mailtype' => 'html',
//						'charset'  => 'utf-8',
//						'priority' => '1'
//					);
					$subject = configEmail('sub_order_status', $params);
					$message = configEmail('order_status', $params);
					
					$this->load->library('email');
//					$this->email->initialize($config);
					$this->email->from(getEmail(config_item('admin_email')), getSiteName(config_item('site_name')));
					$this->email->to($customer->email);    
					$this->email->subject ( $subject);
					$this->email->message ($message);   
				
					if ($this->email->send())
						$this->session->set_flashdata('msg', lang('orders_admin_email_change_status_order_msg').$type);
					else
						$this->session->set_flashdata('error', lang('orders_admin_change_status_not_send_email_msg'));
					redirect($_SERVER['HTTP_REFERER']);
				}
			}
                    
                }
                
                //echo 'history.go(-1)';
                //redirect('admin/orders/detail/'.$id);
                redirect($_SERVER['HTTP_REFERER']);

	}
        
        function artwork($id = '')
	{		
                if ($id == '')
                    redirect('admin/orders/schedules');
                
		$this->data['breadcrumb'] = 'artwork';
                $this->data['meta_title'] = 'Artwork';
                $this->data['sub_title'] = '';
		$this->load->model('artwork_schedule_m');
                $items = $this->order_m->getItems($id);
                foreach ($items as $key=>$item){
                    $items[$key]->artwork = $this->order_m->getArtworkByItem($item->id) != null ? $this->order_m->getArtworkByItem($item->id) : '';
                    if(isset($items[$key]->artwork->id)){
                        $items[$key]->artworkImage = $this->order_m->getArtworkImageByItem($items[$key]->artwork->id) != null ? $this->order_m->getArtworkImageByItem($items[$key]->artwork->id) : '';
                        $items[$key]->artworkSchedule = $this->artwork_schedule_m->getData($items[$key]->artwork->id);
                    }
                        
                }
                
		$this->data['items'] = $items;
                
                $order = $this->order_m->getOrderSchedule($id); 
                $this->data['order'] = $order;
                
                $this->load->model('comment_m');
                $this->load->helper('comment');
                $comments = $this->comment_m->getByOrder($id);
                $cm_box  = comment_box($comments, $id, 0);
                $this->data['comment'] = $cm_box;
                
                
                
		// Load view
		$this->data['subview'] = 'admin/order/artwork';
		$this->load->view('admin/_layout_main', $this->data);
	}
        
        
        function proof($id = '')
	{		
                if ($id == '')
                    redirect('admin/orders/schedules');
                
		$this->data['breadcrumb'] = 'proof';
                $this->data['meta_title'] = 'Proof';
                $this->data['sub_title'] = '';
		
//                $items = $this->order_m->getItems($id);
//                foreach ($items as $key=>$item){
//                    $items[$key]->artwork = $this->order_m->getArtworkByItem($item->id) != null ? $this->order_m->getArtworkByItem($item->id) : '';
//                }
                $items = $this->order_m->getItems($id);
                foreach ($items as $key=>$item){
                    $items[$key]->artwork = $this->order_m->getProofByItem($item->id) != null ? $this->order_m->getProofByItem($item->id) : '';
                    if(isset($items[$key]->artwork->id))
                        $items[$key]->artworkImage = $this->order_m->getProofImageByItem($items[$key]->artwork->id) != null ? $this->order_m->getProofImageByItem($items[$key]->artwork->id) : '';
                }
                
		$this->data['items'] = $items;
                
                $order = $this->order_m->getOrderSchedule($id); 
                $this->data['order'] = $order;
                
                $this->load->model('proof_m');
                $proof = $this->proof_m->getByOrder($id); 
                $this->data['proofs'] = $proof;
                
                $this->load->model('comment_m');
                $this->load->helper('comment');
                $comments = $this->comment_m->getByOrder($id);
                $cm_box  = comment_box($comments, $id);
                $this->data['comment'] = $cm_box;
                
                $this->load->model('settings_m');
		$setting_data		= $this->settings_m->getSetting();
                $setting		= json_decode($setting_data->settings);
                $this->data['max_size'] = settingValue($setting, 'site_upload_max', '50');
                
		// Load view
		$this->data['subview'] = 'admin/order/proof';
		$this->load->view('admin/_layout_main', $this->data);
	}

        function shipDate($id = '')
	{		
		if((int)$id == 0)
			redirect('admin/orders');
			
		$this->data['breadcrumb'] = 'Ship date';
                $this->data['meta_title'] = 'Ship date';
		
		// get order detail
		$order 	= $this->order_m->getOrderSchedule($id);
		
		if(count($order) == 0)
		{		
			$this->session->set_flashdata('error', lang('orders_admin_item_id_not_found_msg'.$id));
			redirect('admin/orders');			
		}		
		
		// get items
		$this->data['order'] = $order;
		$items = $this->order_m->getItems($id);
		$this->data['items'] = $items;
		
		
		$this->load->model('shipdate_m');
		$shipdate = $this->shipdate_m->getByOrder($id);
		$this->data['shipdate'] = $shipdate;
                
                $userInfo	= $this->order_m->getUserInfo($id);
		if ($userInfo !== false)
		{
			$address	= json_decode($userInfo->address);
		}
		else
		{
			$address	= false;
		}
		$this->data['address'] = $address;
		
		// get shipping method
		$this->load->model('shipping_m');
		$shipping	= $this->shipping_m->get($order->shipping_id, true);
		$this->data['shipping'] = $shipping;
		
                $this->load->model('comment_m');
                $this->load->helper('comment');
                $comments = $this->comment_m->getByOrder($id);
                $cm_box  = comment_box($comments, $id);
                $this->data['comment'] = $cm_box;
		
                //var_dump($this->user);
		// Load view
		$this->data['subview'] = 'admin/order/ship_date';
		$this->load->view('admin/_layout_main', $this->data);
	}
        
        function orderPrint($id = '')
	{		
                if ($id == '')
                    redirect('admin/orders/schedules');
                
		$this->data['breadcrumb'] = 'Print order';
                $this->data['meta_title'] = 'Print order';
                $this->data['sub_title'] = '';
		
                $items = $this->order_m->getItems($id);
                foreach ($items as $key=>$item){
                    $items[$key]->proof = $this->order_m->getProofByItem($item->id) != null ? $this->order_m->getProofByItem($item->id) : '';
                }
                
		$this->data['items'] = $items;
                
                $this->load->model('shipdate_m');
		$shipdate = $this->shipdate_m->getByOrder($id);
		$this->data['shipdate'] = $shipdate;
                
                $order = $this->order_m->getOrderSchedule($id); 
                $this->data['order'] = $order;
                
                $this->load->model('comment_m');
                $this->load->helper('comment');
                $comments = $this->comment_m->getByOrder($id);
                $cm_box  = comment_box($comments, $id);
                $this->data['comment'] = $cm_box;
                
                
                
		// Load view
		$this->data['subview'] = 'admin/order/order_print';
		$this->load->view('admin/_layout_main', $this->data);
	}
        
        
        function printorder($id = '')
	{		
                if ($id == '')
                    redirect('admin/orders/schedules');

		
                $items = $this->order_m->getItems($id);
                foreach ($items as $key=>$item){
                    $items[$key]->proof = $this->order_m->getProofByItem($item->id) != null ? $this->order_m->getProofByItem($item->id) : '';
                }
                
		$data['items'] = $items;
                
                $this->load->model('shipdate_m');
		$shipdate = $this->shipdate_m->getByOrder($id);
		$data['shipdate'] = $shipdate;
                
                $order = $this->order_m->getOrderSchedule($id); 
                $data['order'] = $order;
                
                
		//create pdf.
		$this->load->library('pdf/pdf.php');
		$config = array(
			'write_type'=>'I'
		);

		$pdf = new Pdf($config);
		$file_name = 'Print-Order-'.$order->order_number.'.pdf';
		$pdf->orderPrint($file_name, $data);
                
                
		// Load view
		//$this->data['subview'] = 'admin/order/order_print';
		//$this->load->view('admin/_layout_main', $this->data);
	}
        
        // view detail of design
	function edit_shipping($id = '')
	{
		// get user info
		$userInfo	= $this->order_m->getUserInfo($id);
		if ($userInfo !== false)
		{
			$address	= json_decode($userInfo->address);
		}
		else
		{
			$address	= false;
		}
		$this->data['address'] = $address;		
                $this->data['order'] = $id;
                //$order = $this->order_m->getItems($id);
                //$this->data['order'] = $order;
                
		$this->load->view('admin/order/edit_shipping', $this->data);
	}
        
        // view detail of design
	function newAddress()
	{
                $oder_id = $this->input->post('order_id');
                $data = $this->input->post('data');
                $arr = array();
                for ( $i = 0; $i < count($data); ){
                    $arr[$data[$i++]] = $data[$i++];
                }
                
                $order_info['address'] 	= json_encode($arr);
                
                $this->db->where('order_id', $oder_id);
                $this->db->update('orders_userinfo' , $order_info);
                
                $this->data['ql'] = 'true';
                $this->data['orderid'] = $oder_id;
                //redirect($_SERVER['HTTP_REFERER'].'?ql=true');
                $this->load->view('admin/order/addorder_success',$this->data);
	}
        
        function listproduct($orderid='')
	{
		$this->load->model('product_m');
		$row 	= $this->product_m->getProductsLite();
		$this->data['products'] = $row;		
                $this->data['orderid'] = $orderid;
                
                //$order = $this->order_m->getItems($id);
                //$this->data['order'] = $order;
                
		$this->load->view('admin/order/list_products', $this->data);
	}
        
        function editSize($id='')
	{
		$this->load->model('order_m');
		$row 	= $this->order_m->getItem($id);
		$this->data['size'] = json_decode($row->size);		
                $this->data['order_id'] = $row->order_id;
                $this->data['item_id'] = $id;
                //$order = $this->order_m->getItems($id);
                //$this->data['order'] = $order;
                
		$this->load->view('admin/order/pp/edit_size', $this->data);
	}
        
        function changeSize()
	{
		$size = $this->input->post('size');
                $id = $this->input->post('item_id');
                //$order = $this->order_m->getItems($id);
                //$this->data['order'] = $order;
                
                $this->db->where('id', $id);
                $this->db->update('order_items' , array('size'=>  json_encode($size)));
                
		$this->load->view('admin/order/addorder_success');
	}
        
        function addorder($id="",$orderid='')
	{
		
		// page not found
		$found 	= true;
		if ($id == 0)
		{
			$found 	= false;
		}
		else
		{
			// load product info
			$this->load->model('product_m');
                        $this->load->model('categories_m');
			$row	= $this->product_m->getProduct( array( 'id'=> $id, 'published' => 1 ) );
			if (empty($row[0]) || count($row[0]) == 0)
			{
				$found = false;
			}
		}
		
		$data 		= array();
		if ($found === false)
		{
			// load 404
			$data['subview'] = $this->load->view('layouts/404/404', array(), true);
		}
		else
		{
			$this->data			= array();
			$product 			= $row[0];
			
			// get attributes
			$attribute 			= $this->product_m->getAttribute($id);
			if (count($attribute)) 
			{
				$this->load->helper('product');
				$help_product 		= new helperProduct();
				
				$product->attributes	= $help_product->displayAttributes($attribute);
			}
			//set href URL
			$product->href = 'product';
			// get product design
			$design 	= $this->product_m->getProductDesign($id);
			if (count($design))
			{
				$product->design		= $help_product->getDesign($design);
			}
			//product price
                        $product->startPrice  = $this->product_m->getProductPrice($id);
                    
			// product color
			$this->data['color_load']	= false;
			$this->data['index']		= '';
			
			
			$this->data['product_m']	= $this->product_m;
                        $this->data['categories_m']	= $this->categories_m;
			$this->data['product']		= $product;
                        $this->data['orderid']		= $orderid;
			
			// load Related
			$product_cate = $this->product_m->getProductCate($id);
			$cate_id = array();
			foreach($product_cate as $cate)
			{
				$cate_id[] = $cate->cate_id;
			}
			$this->data['products'] = $this->product_m->getRelated($cate_id, $id);
			
			
		}
                
                //$order = $this->order_m->getItems($id);
                //$this->data['order'] = $order;
                
		$this->load->view('admin/order/add_order2', $this->data);
	}
        
        function addordermanual()
	{
                
		$this->user 	= $this->session->userdata('user');
			
		if(!$this->input->post('orderid'))
		{
			$data = $this->input->post();			
			
			
			// get design option
			//$this->load->driver('cache', array('adapter'=>'file')); 
			$session_id 	= $this->session->userdata('order_session_id');
			//$designs 		= $this->cache->get('orders_designs'.$session_id);
			
			$is_teams = 0;
			$items	= array();
			$i 		= 0;
			$total 		= 0;
			$subtotal 	= 0;	
                        $design_save    = array();
			
			// save order
			$order 			= $this->order_m->addNew('order');
			$order['order_number']	= $this->order_m->creteOrderNumberNew();
			$order['order_pass']	= $this->order_m->creteOrderNumber();
			$order['user_id']	= $this->user['id'];			
			$order['payment_id']	= 1 ;//TTT edit paymentid //$items['metod']->payment;
			$order['shipping_id']	= 1;// TTT edit $items['metod']->shipping->id;
			
                        
                         
                        //TTT edit add total product
                        $priceM = explode(',', $data['f-price']);
                        
                        $totalq = $data['quantity'];
                        
			$order['shipping_id']           = 1;
			$order['shipping_price']        = 0;
			$order['sub_total']		= $priceM[1];// TTT edit $items['metod']->subtotal;
			$order['total']			= $order['sub_total'];// TTT edit + $order['shipping_price'] - $order['discount'];			
			$order['status']		= 'pending';
                        $order['total_qty']		= $totalq;
                        $order['custom_file']		= $is_teams;
			$order_id 			= $this->order_m->save($order, null);
			
			
			// save order items
			$order_item				= $this->order_m->addNew('item');
			$order_item['order_id'] = $order_id;
			
			// get setting
			$this->load->model('settings_m');
			$row 	= $this->settings_m->getSetting();
			$setting = json_decode($row->settings);
			
			// get shipping method
			$this->load->model('shipping_m');
			$shipping	= $this->shipping_m->get(1, true);
			
			// get payment method
			$this->load->model('payment_m');
			$payment	= $this->payment_m->get(1, true);
			
			$discount	= array();

			// html email.
			$total = 0;
			$count = 1;
			$shipping_price = 0;
			$payment_price = 0.0;
                        $price_clipart	= 0;


                        $this->load->model('product_m');
 
                        $proinfo 	= $this->product_m->getProduct(array('id'=>$data['product_id']));
                                                
                        $this->load->helper('cart');
                        $cart 		= new dgCart();

                        $attributes	= $this->product_m->getAttribute($data['product_id']);                                

                        $customField 			= $cart->getPriceAttributesForManual($attributes, $data['attribute'][$attributes->id], $data['colors']);
                        //var_dump($customField);
                        $optionm 		= $customField->fields;




                        $design_color_s = array('color_hex' => $data['mcolor-hex'], 'color_name' => $data['mcolor-name']);
                        //$prices					= json_decode($item['prices']);
                        $order_item['design_id'] 		= '';
                        $order_item['product_id'] 		= $data['product_id'];				
                        $order_item['product_name']             = $proinfo[0]->title;				
                        $order_item['product_sku'] 		= $proinfo[0]->sku;				
                        $order_item['product_price']            = $priceM[2];//$prices->sale;				
                        $order_item['price_print'] 		= 0;				
                        $order_item['price_clipart']            = 0;				
                        $order_item['price_attributes']         = 0;				
                        $order_item['quantity'] 		= $totalq;			
                        $order_item['poduct_status']            = 'pending';				
                        $order_item['attributes'] 		= json_encode(json_encode($optionm));	
                        $order_item['design_option'] 		= json_encode(array('design_area'   =>"", 
                                                                                    'design_images' => '',
                                                                                    'print_number'  => '',
                                                                                    'colors'        => $design_color_s));

                        $this->order_m->save($order_item, null);
			
			// save user address shipping
			$order_info				= $this->order_m->addNew('info');
			$order_info['order_id'] = $order_id;
			$order_info['user_id'] 	= $this->user['id'];			
			$order_info['address'] 	= '{"First Name":"","Last Name":"","Address":"","Telephone":"","Company":"","Email Address":"","Country":"","State":"","Zip\/Postal Code":"","Invoice":""}';
			$this->order_m->save($order_info, null);
                        $this->data['status'] = 'new';
                        $this->data['orderid'] = $order_id;
			
		}
		else
		{
                        
			$data = $this->input->post();			
			//$this->load->model('order_m');
                        //$order_info = $this->order_m->getOrder($data['orderid']);
                        
                        //var_dump($order_info);
                        //exit();
			
			// get design option
			//$this->load->driver('cache', array('adapter'=>'file')); 
			$session_id 	= $this->session->userdata('order_session_id');
			//$designs 		= $this->cache->get('orders_designs'.$session_id);
			
			$is_teams = 0;
			$items	= array();
			$i 		= 0;
			$total 		= 0;
			$subtotal 	= 0;	
                        $design_save    = array();
			
						
			// save order items
			$order_item             = $this->order_m->addNew('item');
			$order_item['order_id'] = $data['orderid'];
			
			// get setting
			$this->load->model('settings_m');
			$row 	= $this->settings_m->getSetting();
			$setting = json_decode($row->settings);
			
			
			// html email.
			$total = 0;
			$count = 1;
			$shipping_price = 0;
			$payment_price = 0.0;
                        $price_clipart	= 0;


                        $this->load->model('product_m');
 
                        $proinfo 	= $this->product_m->getProduct(array('id'=>$data['product_id']));
                                                
                        $this->load->helper('cart');
                        $cart 		= new dgCart();

                        $attributes	= $this->product_m->getAttribute($data['product_id']);                                

                        $customField 			= $cart->getPriceAttributesForManual($attributes, $data['attribute'][$attributes->id], $data['colors']);
                        //var_dump($customField);
                        $optionm 		= $customField->fields;

                        //TTT edit add total product
                        $priceM = explode(',', $data['f-price']);
                        
                        $totalq = $data['quantity'];


                        $design_color_s = array('color_hex' => $data['mcolor-hex'], 'color_name' => $data['mcolor-name']);
                        //$prices					= json_decode($item['prices']);
                        $order_item['design_id'] 		= '';
                        $order_item['product_id'] 		= $data['product_id'];				
                        $order_item['product_name']             = $proinfo[0]->title;				
                        $order_item['product_sku'] 		= $proinfo[0]->sku;				
                        $order_item['product_price']            = $priceM[2];//$prices->sale;				
                        $order_item['price_print'] 		= 0;				
                        $order_item['price_clipart']            = 0;				
                        $order_item['price_attributes']         = 0;				
                        $order_item['quantity'] 		= $totalq;			
                        $order_item['poduct_status']            = 'pending';				
                        $order_item['attributes'] 		= json_encode(json_encode($optionm));	
                        $order_item['design_option'] 		= json_encode(array('design_area'   =>"", 
                                                                                    'design_images' => '',
                                                                                    'print_number'  => '',
                                                                                    'colors'        => $design_color_s));

                        $this->order_m->save($order_item, null);
			
                        $order_info = $this->order_m->getOrder($data['orderid']);
                        $order['sub_total']		= $priceM[1] + $order_info->sub_total;// TTT edit $items['metod']->subtotal;
			$order['total']			= $priceM[1] + $order_info->total;// TTT edit + $order['shipping_price'] - $order['discount'];			
			
                        $order['total_qty']		= $totalq + $order_info->total_qty;

                        $this->order_m->_table_name = 'orders';
                        $this->order_m->updateOrder(array('id'=>$data['orderid']), $order);
                        $this->data['status'] = 'edit';
                        $this->data['orderid'] = $order_item['order_id'];
		}		
                
                
		$this->load->view('admin/order/addorder_success',$this->data);
	}
        
        function addorderdefault($order_id = '')
	{
                
		$this->user 	= $this->session->userdata('user');
			
		if($order_id == '')
		{
			$data = $this->input->post();			
			
			
			// get design option
			//$this->load->driver('cache', array('adapter'=>'file')); 
			$session_id 	= $this->session->userdata('order_session_id');
			//$designs 		= $this->cache->get('orders_designs'.$session_id);
			
			$is_teams = 0;
			$items	= array();
			$i 		= 0;
			$total 		= 0;
			$subtotal 	= 0;	
                        $design_save    = array();
			
			// save order
			$order 			= $this->order_m->addNew('order');
			$order['order_number']	= $this->order_m->creteOrderNumberNew();
			$order['order_pass']	= $this->order_m->creteOrderNumber();
			$order['user_id']	= $this->user['id'];			
			$order['payment_id']	= 1 ;//TTT edit paymentid //$items['metod']->payment;
			$order['shipping_id']	= 1;// TTT edit $items['metod']->shipping->id;
			
                        
                         
                        //TTT edit add total product
                        //$priceM = explode(',', $data['f-price']);
                        
                        //$totalq = $data['quantity'];
                        
			$order['shipping_id']           = 1;
			$order['shipping_price']        = 0;
			$order['sub_total']		= 0;// TTT edit $items['metod']->subtotal;
			$order['total']			= 0;// TTT edit + $order['shipping_price'] - $order['discount'];			
			$order['status']		= 'pending';
                        $order['total_qty']		= 0;
                        $order['custom_file']		= $is_teams;
			$order_id 			= $this->order_m->save($order, null);
			
			
			// save order items
			$order_item				= $this->order_m->addNew('item');
			$order_item['order_id'] = $order_id;
			
			// get setting
			$this->load->model('settings_m');
			$row 	= $this->settings_m->getSetting();
			$setting = json_decode($row->settings);
			
			// get shipping method
			$this->load->model('shipping_m');
			$shipping	= $this->shipping_m->get(1, true);
			
			// get payment method
			$this->load->model('payment_m');
			$payment	= $this->payment_m->get(1, true);
			
			$discount	= array();

			// html email.
			$total = 0;
			$count = 1;
			$shipping_price = 0;
			$payment_price = 0.0;
                        $price_clipart	= 0;


//                        $this->load->model('product_m');
// 
//                        $proinfo 	= $this->product_m->getProduct(array('id'=>$data['product_id']));
//                                                
//                        $this->load->helper('cart');
//                        $cart 		= new dgCart();
//
//                        $attributes	= $this->product_m->getAttribute($data['product_id']);                                
//
//                        $customField 			= $cart->getPriceAttributesForManual($attributes, $data['attribute'][$attributes->id], $data['colors']);
//                        //var_dump($customField);
//                        $optionm 		= $customField->fields;




                        $design_color_s = array('color_hex' => '000000', 'color_name' => 'black');
                        //$prices					= json_decode($item['prices']);
                        $order_item['design_id'] 		= '';
                        $order_item['product_id'] 		= 0;				
                        $order_item['product_name']             = 'Custom product';				
                        $order_item['product_sku'] 		= 'custom';				
                        $order_item['product_price']            = 1;//$prices->sale;				
                        $order_item['price_print'] 		= 0;				
                        $order_item['price_clipart']            = 0;				
                        $order_item['price_attributes']         = 0;				
                        $order_item['quantity'] 		= 0;			
                        $order_item['poduct_status']            = 'pending';				
                        $order_item['attributes'] 		= json_encode(json_encode(array()));	
                        $order_item['design_option'] 		= json_encode(array('design_area'   =>"", 
                                                                                    'design_images' => '',
                                                                                    'print_number'  => '',
                                                                                    'colors'        => $design_color_s));

                        $this->order_m->save($order_item, null);
			
			// save user address shipping
			$order_info				= $this->order_m->addNew('info');
			$order_info['order_id'] = $order_id;
			$order_info['user_id'] 	= $this->user['id'];			
			$order_info['address'] 	= '{"First Name":"","Last Name":"","Address":"","Telephone":"","Company":"","Email Address":"","Country":"","State":"","Zip\/Postal Code":"","Invoice":""}';
			$this->order_m->save($order_info, null);
                        $this->data['status'] = 'new';
                        $this->data['orderid'] = $order_id;
			
		}
		else
		{
                        
			//$data = $this->input->post();			
			//$this->load->model('order_m');
                        //$order_info = $this->order_m->getOrder($data['orderid']);
                        
                        //var_dump($order_info);
                        //exit();
			
			// get design option
			//$this->load->driver('cache', array('adapter'=>'file')); 
			$session_id 	= $this->session->userdata('order_session_id');
			//$designs 		= $this->cache->get('orders_designs'.$session_id);
			
			$is_teams = 0;
			$items	= array();
			$i 		= 0;
			$total 		= 0;
			$subtotal 	= 0;	
                        $design_save    = array();
			
						
			// save order items
			$order_item             = $this->order_m->addNew('item');
			$order_item['order_id'] = $order_id;
			
			// get setting
			//$this->load->model('settings_m');
			//$row 	= $this->settings_m->getSetting();
			//$setting = json_decode($row->settings);
			
			
			// html email.
			$total = 0;
			$count = 1;
			$shipping_price = 0;
			$payment_price = 0.0;
                        $price_clipart	= 0;


                       // $this->load->model('product_m');
 
                       // $proinfo 	= $this->product_m->getProduct(array('id'=>$data['product_id']));
                                                
                       // $this->load->helper('cart');
                       // $cart 		= new dgCart();

                        //$attributes	= $this->product_m->getAttribute($data['product_id']);                                

                        //$customField 			= $cart->getPriceAttributesForManual($attributes, $data['attribute'][$attributes->id], $data['colors']);
                        //var_dump($customField);
                        //$optionm 		= $customField->fields;

                        //TTT edit add total product
                        //$priceM = explode(',', $data['f-price']);
                        
                        //$totalq = $data['quantity'];


                        $design_color_s = array('color_hex' => '000000', 'color_name' => 'black');
                        //$prices					= json_decode($item['prices']);
                        $order_item['design_id'] 		= '';
                        $order_item['product_id'] 		= 0;				
                        $order_item['product_name']             = 'Custom product';				
                        $order_item['product_sku'] 		= 'custom';				
                        $order_item['product_price']            = 1;//$prices->sale;				
                        $order_item['price_print'] 		= 0;				
                        $order_item['price_clipart']            = 0;				
                        $order_item['price_attributes']         = 0;				
                        $order_item['quantity'] 		= 0;			
                        $order_item['poduct_status']            = 'pending';				
                        $order_item['attributes'] 		= json_encode(json_encode(array()));	
                        $order_item['design_option'] 		= json_encode(array('design_area'   =>"", 
                                                                                    'design_images' => '',
                                                                                    'print_number'  => '',
                                                                                    'colors'        => $design_color_s));

                        $this->order_m->save($order_item, null);
			
//                        $order_info = $this->order_m->getOrder($data['orderid']);
//                        $order['sub_total']		= 0 + $order_info->sub_total;// TTT edit $items['metod']->subtotal;
//			$order['total']			= 0 + $order_info->total;// TTT edit + $order['shipping_price'] - $order['discount'];			
//			
//                        $order['total_qty']		= $totalq + $order_info->total_qty;
//
//                        $this->order_m->_table_name = 'orders';
//                        $this->order_m->updateOrder(array('id'=>$data['orderid']), $order);
                        $this->data['status'] = 'edit';
                        $this->data['orderid'] = $order_item['order_id'];
		}		
                
                
		$this->load->view('admin/order/addorder_success',$this->data);
	}
        
        function deleteitem($orderid='', $itemid='')
        {
            $item = $this->order_m->getItem($itemid);
            $ord = $this->order_m->getOrder($orderid);
            
            $order['sub_total']		= $ord->sub_total - $item->product_price*$item->quantity;// TTT edit $items['metod']->subtotal;
            $order['total']		= $ord->total - $item->product_price*$item->quantity;// TTT edit + $order['shipping_price'] - $order['discount'];			

            $order['total_qty']		= $ord->total_qty - $item->quantity;

            $this->order_m->_table_name = 'orders';
            $this->order_m->updateOrder(array('id'=>$orderid), $order);
            $this->order_m->deleteOrderIteam($itemid);
            
            redirect('/admin/orders/detail/'.$orderid);
        }
        
        
        function listPayment($orderid){
            $this->load->model('payment_m');
            $row 	= $this->payment_m->getData();
            $this->data['payments'] = $row;		
            $this->data['orderid'] = $orderid;

            //$order = $this->order_m->getItems($id);
            //$this->data['order'] = $order;

            $this->load->view('admin/order/list_payment', $this->data);
        }
        function changepayment(){
            $data = $this->input->post();
            $order_info = $this->order_m->getOrder($data['orderid']);
            
            $order['payment_id']		= $data['payment_id'];

            $this->order_m->_table_name = 'orders';
            $this->order_m->updateOrder(array('id'=>$data['orderid']), $order);
            $this->load->view('admin/order/addorder_success', $this->data);
        }
        
        function listShipping($orderid){
            $this->load->model('shipping_m');
            $row 	= $this->shipping_m->getData();
            $this->data['shippings'] = $row;		
            $this->data['orderid'] = $orderid;

            //$order = $this->order_m->getItems($id);
            //$this->data['order'] = $order;

            $this->load->view('admin/order/list_shipping', $this->data);
        }
        function changeshipping(){
            $data = $this->input->post();
//            
            $order_info = $this->order_m->getOrder($data['orderid']);
            
            $ship = explode(',', $data['shipping_id']);
//            
            $order['shipping_id']		= $ship[0];
            $order['shipping_price']		= number_format((($ship[1] * $order_info->sub_total )/ 100),2);

            $this->order_m->_table_name = 'orders';
            $this->order_m->updateOrder(array('id'=>$data['orderid']), $order);
            $this->load->view('admin/order/addorder_success', $this->data);
        }
        
        function listDiscount($orderid){
            		
            $this->data['orderid'] = $orderid;
            $this->load->view('admin/order/list_discount', $this->data);
        }
        function changediscount(){
            $data = $this->input->post();
            $order_info = $this->order_m->getOrder($data['orderid']);
//            
            $order['discount_id'] = 0;
            if ($data['discount_type'] == 't')
                $order['discount']		= $data['discount_value'];
            else{
                $order['discount']		= number_format($data['discount_value'] * $order_info->sub_total / 100,2);
            }

            $this->order_m->_table_name = 'orders';
            $this->order_m->updateOrder(array('id'=>$data['orderid']), $order);
            $this->load->view('admin/order/addorder_success', $this->data);
        }
        
        
        function listDeposit($orderid){
            		
            $this->data['orderid'] = $orderid;
            $this->load->view('admin/order/list_deposit', $this->data);
        }
        function changedeposit(){
            $data = $this->input->post();
            //$order_info = $this->order_m->getOrder($data['orderid']);
//            
            $order['deposit'] = $data['deposit'];

            $this->order_m->_table_name = 'orders';
            $this->order_m->updateOrder(array('id'=>$data['orderid']), $order);
            $this->load->view('admin/order/addorder_success', $this->data);
        }
        
        function listprice($itemid){
            		
            $this->data['order_item'] = $this->order_m->getItem($itemid);
            
            $this->data['itemid'] = $itemid;
            
            $this->load->view('admin/order/pp/edit_price', $this->data);
        }
        function changeprice(){
            $data = $this->input->post();
            //$order_info = $this->order_m->getOrder($data['orderid']);
//            
            $order['product_price'] = $data['price'];
            $order['quantity'] = $data['qty'];
            $order['product_name'] = $data['product_name'];
            $order['price_attributes'] = 0;
            $order['admin_edit'] = 1;
            $this->order_m->_table_name = 'order_items';
            $this->order_m->updateOrder(array('id'=>$data['itemid']), $order);
            
            $orderdl = $this->order_m->getOrder($data['orderid']);
            (int)$qua['total_qty'] = $data['qty'] + $orderdl->total_qty - $data['old_qty'];
            $this->order_m->_table_name = 'orders';
            $this->order_m->updateOrder(array('id'=>$data['orderid']), $qua);
            $this->data['ship'] = 'true';
            $this->data['orderid'] = $data['orderid'];
            $this->load->view('admin/order/addorder_success', $this->data);
        }
        
        function settracking(){
            $data = $this->input->post();
            
            $order['tracking_num']		= $data['tracknum'];

            $this->order_m->_table_name = 'orders';
            $this->order_m->updateOrder(array('id'=>$data['orderid']), $order);
            redirect($_SERVER['HTTP_REFERER']);
        }
}