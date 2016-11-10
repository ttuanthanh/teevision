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
					$this->load->library('email');
					//config email.
					$config = array(
						'mailtype' => 'html',
						'charset'  => 'utf-8',
						'priority' => '1'
					);
					$subject = 'Changed item order status';
					$message = '<p>Hello '.$customer->username.'</p><p>The status of product <a target="_blank" href="'.site_url('product/'.$id).'">'.$item_name.'</a> in your order number '.$customer->order_number.' is changed to completed.</p><p>Regards,</p><p><a href="'.site_url().'">'.site_url().'</a></p>';
					
					$this->load->library('email');
					$this->email->initialize($config);
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
					
					$this->load->library('email');
					
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
					$config = array(
						'mailtype' => 'html',
						'charset'  => 'utf-8',
						'priority' => '1'
					);
					$subject = configEmail('sub_order_status', $params);
					$message = configEmail('order_status', $params);
					
					$this->load->library('email');
					$this->email->initialize($config);
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
			$config['per_page'] 	= 20;
		
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
        
        function garment($id = '')
	{		
                if ($id == '')
                    redirect('admin/orders/schedules');
                
                $this->load->model('garment_m');
                
		$this->data['breadcrumb'] = 'Garment';
                $this->data['meta_title'] = 'Order Garment';
                $this->data['sub_title'] = '';
		
                if ($id != '')
                {
                    $order = $this->order_m->getOrder($id); 
                    $this->data['order'] = $order;
                    if ($order->apparel)
                        $this->data['garment'] = $this->garment_m->getData($order->apparel);
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
					
					$this->load->library('email');
					
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
					$config = array(
						'mailtype' => 'html',
						'charset'  => 'utf-8',
						'priority' => '1'
					);
					$subject = configEmail('sub_order_status', $params);
					$message = configEmail('order_status', $params);
					
					$this->load->library('email');
					$this->email->initialize($config);
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
		
                $items = $this->order_m->getItems($id);
                foreach ($items as $key=>$item){
                    $items[$key]->artwork = $this->order_m->getArtworkByItem($item->id) != null ? $this->order_m->getArtworkByItem($item->id) : '';
                }
                
		$this->data['items'] = $items;
                
                $order = $this->order_m->getOrder($id); 
                $this->data['order'] = $order;
                
                $this->load->model('comment_m');
                $this->load->helper('comment');
                $comments = $this->comment_m->getByOrder($id);
                $cm_box  = comment_box($comments, $id);
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
		
                $items = $this->order_m->getItems($id);
                foreach ($items as $key=>$item){
                    $items[$key]->artwork = $this->order_m->getArtworkByItem($item->id) != null ? $this->order_m->getArtworkByItem($item->id) : '';
                }
                
		$this->data['items'] = $items;
                
                $order = $this->order_m->getOrder($id); 
                $this->data['order'] = $order;
                
                $this->load->model('proof_m');
                $proof = $this->proof_m->getByOrder($id); 
                $this->data['proofs'] = $proof;
                
                $this->load->model('comment_m');
                $this->load->helper('comment');
                $comments = $this->comment_m->getByOrder($id);
                $cm_box  = comment_box($comments, $id);
                $this->data['comment'] = $cm_box;
                
                
                
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
  
                redirect($_SERVER['HTTP_REFERER']);
	}
        
        function listproduct()
	{
		$this->load->model('product_m');
		$row 	= $this->product_m->getProductsLite();
		$this->data['products'] = $row;		
                
                //$order = $this->order_m->getItems($id);
                //$this->data['order'] = $order;
                
		$this->load->view('admin/order/list_products', $this->data);
	}
        
        function addorder($id="")
	{
		//$id 	= (int) $string;
		
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
		$this->items 	= $this->cart->contents();
		
		if (count($this->items) == 0 || count($this->user) == 0)
			redirect('cart');
			
		if($this->input->post('payment'))
		{
			$data = $this->input->post();			
			
			// add payment to session
			if ($this->session->userdata('cart'))
			{
				$cart = $this->session->userdata('cart');
			}
			else
			{
				$cart = new stdClass();
			}
			$cart->payment = $data['payment'];				
			
			// update user profile
			$fields = $data['fields'];
			if (count($fields) == 0)
				redirect('cart/checkout');
							
			$user_profile	= array();
			foreach($fields as $key => $value)
			{
				$id 	= key($value);
				$user_profile[] = array(
					'field_id'=>$id,
					'form_field'=>'checkout',
					'value'=>$value[$id],
					'object'=>$this->user['id'],
				);				
			}
			$this->load->model('fields_m');
			if ( count($user_profile) > 0 )
			{
				$this->fields_m->add($user_profile);
			}			
			
			// get design option
			$this->load->driver('cache', array('adapter'=>'file')); 
			$session_id 	= $this->session->userdata('order_session_id');
			$designs 		= $this->cache->get('orders_designs'.$session_id);
			
			$is_teams = 0;
			$items	= array();
			$i 		= 0;
			$total 		= 0;
			$subtotal 	= 0;	
                        $design_save    = array();
			foreach($this->items as $key => $item)
			{                            
				$subtotal  = $subtotal + $item['subtotal'] + $item['customPrice'];
				$items['design'][$i] = $designs[$key];
				$items['cart'][$i]	= $item;
                                if(is_array($items['cart'][$i]['teams']) && count($items['cart'][$i]['teams']))
                                    $is_teams = 1;
				$items['cart'][$i]['teams']	= json_encode($items['cart'][$i]['teams']);
				$items['cart'][$i]['options']	= json_encode($items['cart'][$i]['options']);
                                
                                
				$i++;
									
			}
			$items['user'] 				= $this->user;
			$items['metod'] 			= $cart;				
			$items['metod']->subtotal 	= $subtotal;
			
		
			// save design
			$this->load->model('order_m');
			$design_ids = array();
			if (count($items['design']))
			{
				$this->load->model('design_m');
				foreach($items['design'] as $i=>$design)
				{
                                        $design_save = $design;
					$design_id 		= $this->order_m->creteOrderNumber(15);
					$design_ids[$i]         = $design_id;
					$insert = array(
						'title'		=> '', 
						'description'   => '',
						'design_id'	=> $design_id,						
						'modified'	=> '',
						'fonts'		=> $design['fonts'],
						'system_id'	=> 0,
						'user_id'	=> $this->user['id'], 
						'product_id'    => $items['cart'][$i]['product_id'], 
						'product_options' => $design['color'], 
						'vectors'	=> $design['vector'], 
						'teams'		=> json_encode($items['cart'][$i]['teams']), 
						'image'         => $design['images']['front'],						
						'created' 	=> date("Y-m-d H:i:s")
					);
					
					$this->design_m->save($insert, null);					
				}
			}
			
			
			// save order
			$order 					= $this->order_m->addNew('order');
			$order['order_number']	= $this->order_m->creteOrderNumberNew();
			$order['order_pass']	= $this->order_m->creteOrderNumber();
			$order['user_id']		= $this->user['id'];			
			$order['payment_id']	= $items['metod']->payment;
			$order['shipping_id']	= $items['metod']->shipping->id;
			
			if ( isset($items['metod']->discount) && isset($items['metod']->discount->id) )
			{
				// get discount
				$order['discount_id']	= $items['metod']->discount->id;
				if ( $items['metod']->discount->discount_type == 't' )
				{
					$order['discount']	=  $items['metod']->discount->value;
				}
				else
				{
					$order['discount']	=  ($subtotal * $items['metod']->discount->value)/100;
				}
				
				// update coupon
				$this->load->model('coupon_m');
				if ( $items['metod']->discount->type == 'g' )
				{
					$coupon 	= array(
						'count'	=> 1
					);
				}
				else
				{
					$row 		= $this->coupon_m->get($items['metod']->discount->id, true);
					$coupon 	= array(
						'count'	=> $row->count + 1
					);
				}
				$this->coupon_m->save($coupon, $items['metod']->discount->id);
			}
                        $totalq = 0;
                        foreach($items['cart'] as $item)
                            $totalq += $item['qty'];
                        
                        
			$order['shipping_id']	= $items['metod']->shipping->id;
			$order['shipping_price']= $items['metod']->shipping->price;
			$order['sub_total']		= $items['metod']->subtotal;
			$order['total']			= $order['sub_total'] + $order['shipping_price'] - $order['discount'];			
			$order['status']		= 'pending';
                        $order['total_qty']		= $totalq;
                        $order['custom_file']		= $is_teams;
			$order_id 				= $this->order_m->save($order, null);
			
			
			// save order items
			$order_item				= $this->order_m->addNew('item');
			$order_item['order_id'] = $order_id;
			
			// get setting
			$this->load->model('settings_m');
			$row 	= $this->settings_m->getSetting();
			$setting = json_decode($row->settings);
			
			// get shipping method
			$this->load->model('shipping_m');
			$shipping	= $this->shipping_m->get($items['metod']->shipping->id, true);
			
			// get payment method
			$this->load->model('payment_m');
			$payment	= $this->payment_m->get($items['metod']->payment, true);
			
			// get discount
			if (isset($items['metod']->discount->id))
			{
				$this->load->model('coupon_m');
				$discount	= $this->coupon_m->get($items['metod']->discount->id, true);
			}
			else
			{
				$discount	= array();
			}
			$this->data['discount'] = $discount;
			// html email.
			$total = 0;
			$count = 1;
			$shipping_price = $items['metod']->shipping->price;
			$payment_price = 0.0;
			
			$this->load->language('order');
			$html = '<table style="border-collapse:collapse; width:100%">';
			$html .= '<tr>';
			$html .= '<td style="border: 1px solid #ccc; padding: 5px;">'.lang("name").'</td>';
			$html .= '<td style="border: 1px solid #ccc; padding: 5px;">'.lang("sku").'</td>';
			$html .= '<td style="border: 1px solid #ccc; padding: 5px;">'.lang("orders_admin_product_price_title").'</td>';
			$html .= '<td style="border: 1px solid #ccc; padding: 5px;">'.lang("orders_admin_product_qty_title").'</td>';
			$html .= '<td style="border: 1px solid #ccc; padding: 5px;">'.lang("orders_admin_product_option_title").'</td>';
			$html .= '<td style="border: 1px solid #ccc; padding: 5px;">'.lang("total").'</td>';
			$html .= '</tr>';
			
			foreach($items['cart'] as $i=>$item)
			{
				$price_clipart					= 0;
				$cliparts						= json_decode($item['cliparts']);
				if (count($cliparts))
				{	
					// save order cliparts
					$arts 	= array();
					$ij = 0;
					foreach($cliparts as $view=>$art)
					{
						if (count($art))
						{
							foreach($art as $art_id=>$price)
							{
								if ($art_id > 0)
								{
									$price_clipart 	= $price_clipart + $price;
									$arts[$ij]		= array(										
										'clipart_id'=> $art_id,
										'order_id'	=> $order_id,
										'status'	=> 'pending',
										'created'	=> date("Y-m-d H:i:s")
									);
									$ij++;
								}
							}
						}
					}
					if (count($arts))
						$this->db->insert_batch('order_cliparts', $arts);
				}				
				$design_color_s = array('color_hex' => $design_save['color'], 'color_name' => $design_save['color_title']);
				$prices					= json_decode($item['prices']);
				$order_item['design_id'] 		= $design_ids[$i];
				$order_item['product_id'] 		= $item['product_id'];				
				$order_item['product_name']             = $item['name'];				
				$order_item['product_sku'] 		= $item['id'];				
				$order_item['product_price']            = $item['price'];//$prices->sale;				
				$order_item['price_print'] 		= $prices->prints;				
				$order_item['price_clipart']            = $price_clipart;				
				$order_item['price_attributes']         = $item['customPrice'];				
				$order_item['quantity'] 		= $item['qty'];			
				$order_item['poduct_status']            = 'pending';				
				$order_item['attributes'] 		= json_encode($item['options']);				
				//$order_item['design_area'] 		= json_encode($item['design_area']);
                                //$order_item['design_images'] 		= json_encode($item['design_images']);
                                //$order_item['print_number'] 		= json_encode($item['print_number']);
                                $order_item['design_option'] 		= json_encode(array('design_area'   =>$item['design_area'], 
                                                                                            'design_images' => $item['design_images'],
                                                                                            'print_number'  => $item['print_number'],
                                                                                            'colors'        => $design_color_s));
                                
				$this->order_m->save($order_item, null);
				
				// html email.
				$html .= '<tr>';
				$html .= '<td style="border: 1px solid #ccc; padding: 5px;">'.$item['name'].'</td>';
				$html .= '<td style="border: 1px solid #ccc; padding: 5px;">'.$item['id'].'</td>';				
				$html .= '<td style="border: 1px solid #ccc; padding: 5px;">'.$setting->currency_symbol.number_format($item['price'], 2).'</td>';
				$html .= '<td style="border: 1px solid #ccc; padding: 5px;">'.$item['qty'].'</td>';
				$html .= '<td style="border: 1px solid #ccc; padding: 5px;">';
                                $html .= '<p>'
                                               .'<strong>Color: </strong> '.$design_save['color_title'].'<br>'
                                               .'<span class="bg-colors" style="width:20px;height:20px;display:inline-block;border:1px solid #ccc;outline: 1px solid #337AB7;background-color:#'.$design_save['color'].'"></span>'
                                          .'</p>'
                                          .'<p>'
                                                .'<strong>Print </strong>Front: '.$item['print_number']['front'].' colors, Back: '.$item['print_number']['back'].' colors'
                                          .'</p>' ;
                                        
                                        if(isset($item['design_images']['front']))
                                            $imf = '<a href="'.site_url() .$item['design_images']['front'].'" target="_blank">View image</a>';
                                        else $imf =  'none';
                                        
                                        if(isset($item['design_images']['back']))
                                            $imb = '<a href="'.site_url() .$item['design_images']['back'].'" target="_blank">View image</a>';
                                        else $imb =  'none';
                                        
                                $html .=    '<p>                                                                    
                                                <strong>Design upload: </strong><br>
                                                <strong> - Front</strong>: '.$imf.'<br>
                                                <strong> - Back</strong>: '.$imb.' 
                                            </p>
                                            <p>
                                                <strong>Design describe: </strong><br>
                                                <strong> - Front</strong>: '.$item['design_area']['front'].'<br>
                                                <strong> - Back</strong>: '.$item['design_area']['back'].'
                                            </p>';        
                                
					if($item['options'] != '')
					{
						$size = json_decode($item['options'], true);										
						if (count($size) > 0)
						{
							foreach($size as $option) {
								$html .= '<div>
									<strong>'.$option['name'].': </strong><br>'; 
										if (is_string($option['value'])) 
										{
											$html .= $option['value'];
										}elseif (is_array($option['value']) && count($option['value']))
										{
											foreach($option['value'] as $v=>$value)
											{
												if ($option['type'] == 'textlist')
													$html .= $v .' - '.$value.'; ';
												else
													$html .= $value.'; ';
											}
										}
								$html .= '</div>';
							}
						}
					}
				$html .= '</td>';
				$total_row = $item['qty']*($item['price']+$prices->prints+$price_clipart)+$item['customPrice'];
				$html .= '<td style="border: 1px solid #ccc; text-align: right;">'.$setting->currency_symbol.number_format($total_row, 2).'</td>
				</tr>';
			}
			
			// html email.
			$html .= '<tr>
				<td  style="border: 1px solid #ccc; text-align: right; padding: 5px;" colspan="5">
					'.lang("orders_admin_shipment_fee_title");
					if (count($shipping)) {							
						$html .= '<br><small>'.lang("orders_admin_shipping_method").': <a href="'.site_url().'"><strong>'.$shipping->title.'</strong></a></small>
						<br><small>'.$shipping->description.'</small>';
					}
					
				$html .= '</td>
				<td style="border: 1px solid #ccc; text-align: right; padding: 5px;">'.$setting->currency_symbol.number_format($shipping_price, 2).'</td>
			</tr>
			<tr>
				<td  style="border: 1px solid #ccc; text-align: right; padding: 5px;" colspan="5">
					'.lang("orders_admin_payment_fee_title");
					if (count($payment)) {							
						$html .= '<br><small>'.lang("orders_admin_payment_method").': <a href="'.site_url().'"><strong>'.$payment->title.'</strong></a></small>
						<br><small>'.$payment->description.'</small>';
					}
				$html .= '</td>
				<td style="border: 1px solid #ccc; text-align: right; padding: 5px;">'.$setting->currency_symbol.number_format($payment_price, 2).'</td>
			</tr>
			<tr>
				<td colspan="5" style="border: 1px solid #ccc; text-align: right; padding: 5px;">
					'.lang("orders_admin_discount");
					if (count($discount)) {							
						$html .= '<br><small>'.$discount->name.': <a href="'.site_url().'"><strong>'.$discount->code.'</strong></a></small>';							
					}
				$html .= '</td>
				<td style="border: 1px solid #ccc; text-align: right; padding: 5px;">'.$setting->currency_symbol.number_format($order['discount'], 2).'</td>
			</tr>
			<tr>';
			$total = $order['total'];
			$html .= '<td colspan="5" style="border: 1px solid #ccc; text-align: right;">'.lang("orders_admin_total_title").'</td>
				<td style="border: 1px solid #ccc; text-align: right; padding: 5px;" colspan="7"><strong>'.$setting->currency_symbol.number_format($total, 2).'<strong></td>
			</tr></table>';
			
			// send email.
			$params = array(
				'username'=>$this->user['username'],
				'date'=>date('Y-m-d H:i:s'),
				'total'=>$setting->currency_symbol.number_format($total, 2),
				'order_number'=>$order['order_number'],
				'table'=>$html,
			);
			
			//config email.
			$config = array(
				'protocol' => 'smtp',
                                'smtp_host' => 'screenprintingphilad.ipage.com',
                                'smtp_port' => 587,
                                'smtp_user' => 'thanh@teevisionprinting.com',
                                'smtp_pass' => 'thanhA123',
                                'mailtype'  => 'html',
                                'charset'   => 'iso-8859-1'
			);
			$subject = configEmail('sub_order_detai', $params);
			$message = configEmail('order_detai', $params);
			
			$this->load->library('email', $config);
			$this->email->from(getEmail(config_item('admin_email')), getSiteName(config_item('site_name')));
			$this->email->to($this->user['email']);    
			$this->email->subject ( $subject);
			$this->email->message ($message);   
			$this->email->send();
			
			$this->email->clear();
			$this->email->from($this->user['email'], $this->user['username']);
			$this->email->to(getEmail(config_item('admin_email')));    
			$this->email->subject ($subject);
			$this->email->message ($message);   
			$this->email->send();
			
			
			// save user address shipping
			$order_info				= $this->order_m->addNew('info');
			$order_info['order_id'] = $order_id;
			$order_info['user_id'] 	= $this->user['id'];
			$profiles				= array();
			foreach($fields as $key => $value)
			{
				$id 	= key($value);
				$field	= $this->fields_m->getField($id);
				
				if ($field != '')
				{
					if ($field->type == 'country')
					{
						$profiles[$field->title]	= $this->fields_m->getCountry($value[$id]);
					}
					elseif ($field->type == 'state')
					{
						$profiles[$field->title]	= $this->fields_m->getState($value[$id]);
					}
					else
					{
						$profiles[$field->title]	= $value[$id];
					}
				}
			}
			$order_info['address'] 	= json_encode($profiles);
			$this->order_m->save($order_info, null);
			
			// Payment
			$this->load->model('payment_m');
			$row	= $this->payment_m->get($cart->payment, true);
			if (count($row) == 0)
			{
				redirect('cart/checkout');
			}
			$payment_method	= $row->type;
			$file = ROOTPATH .DS. 'application' .DS. 'payments' .DS. $payment_method .DS. $payment_method.'.php';
						
			// get currency
			$this->load->model('settings_m');
			$currency	= $this->settings_m->getCurrency();
			$product = array(
				'item_name'=> $order['order_number'],
				'item_number'=> $order['order_number'],
				'amount'=> ($subtotal - $order['discount']),
				'shipping'=> $items['metod']->shipping->price,
				'qty'=> 1,
				'currency_code'=> $currency->currency_code
			);
			
			//remove all session, cache			
			$this->session->unset_userdata('cart');
			$this->session->unset_userdata('order_session_id');
			$this->cart->destroy();
			$this->cache->delete('orders_designs'.$session_id);			
			
			if(file_exists($file))
			{
				include_once($file);
				$options	= json_decode($row->configs, true);				
				$pay = new $payment_method( $options );
				$pay->action($product, $data, $row->id);
			}
			else
			{
				redirect('cart/checkout');
			}
		}
		else
		{
			redirect('index.php');
		}		
                
                //$order = $this->order_m->getItems($id);
                //$this->data['order'] = $order;
                
		$this->load->view('admin/order/list_products', $this->data);
	}
}