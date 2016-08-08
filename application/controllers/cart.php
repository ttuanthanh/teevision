<?php
/**
 * @author teevisionprinting - www.teevisionprinting.com
 * @date: 2015-01-10
 * 
 * view cart, checkout
 * 
 * @copyright  Copyright (C) 2015 teevisionprinting.com. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE
 *
 */
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cart extends Frontend_Controller {
	
	public function __construct()
	{
        parent::__construct();	
		//$this->lang->load('cart');
		$this->load->driver('cache', array('adapter'=>'file')); 		
		
		if ($this->session->userdata('order_session_id'))
		{
			$this->session_id = $this->session->userdata('order_session_id');
		}
		else
		{
			$this->session_id = $this->session->userdata('session_id');
			$this->session->set_userdata('order_session_id', $this->session_id);
		}
				
    }
	
	function index()
	{
		$this->data['designs'] 	= $this->cache->get('orders_designs'.$this->session_id);
		$this->data['items'] 	= $this->cart->contents();
		$this->data['user'] 	= $this->session->userdata('user');
		
		$content				= $this->load->view('components/cart/index', $this->data, true);
		
		$data = array();		
		$data['content']	= $content;		
		$data['subview'] 	= $this->load->view('layouts/cart/cart', array(), true);
		
                
                
		$this->theme($data, 'cart');
	}
	
	public function checkout()
	{
		$user = $this->session->userdata('user');
		
		if (empty($user['loggedin']) || $user['loggedin'] == 0)
		{
			redirect('user/login');
		}

		$this->data['designs'] 	= $this->cache->get('orders_designs'.$this->session_id);
		$this->data['items'] 	= $this->cart->contents();		
		$this->data['user'] 	= $user;
		
		if ( count($this->data['items']) == 0)
			redirect('cart');

		// user info		
		$this->load->model('fields_m');
		$profiles	= $this->fields_m->getFiels('checkout', $user['id']);
		$this->data['profiles']	= $profiles;
			
		// get from
		$this->load->model('users_m');
		$this->data['forms'] = $this->users_m->getFormField('checkout');
		$this->load->helper('fields');
		$fields	= new Field();
		$this->data['fields']	= $fields;
		
		// load shipping method
		$this->load->model('shipping_m');
		$this->shipping_m->db->where('published', 1);
		$shipping 					= $this->shipping_m->get();
		$this->data['shipping'] 	= $shipping;
		
		if ($this->session->userdata('shipping') === false)
		{
		}
		
		// load payment method
		$this->load->model('payment_m');
		$this->payment_m->db->where('published', 1);
		$payments 					= $this->payment_m->get();
		$this->data['payments'] 	= $payments;
		
		$content				= $this->load->view('components/cart/checkout', $this->data, true);
		
		$data = array();		
		$data['content']	= $content;		
		$data['subview'] 	= $this->load->view('layouts/cart/checkout', array(), true);
		
		$this->theme($data, 'cart');
	}	
	
	// add to cart in designer
	public function addJs(){		
		$data = $this->input->post();
		
		// get data post
		$product_id		= $data['product_id'];
		$colors			= $data['colors'];
		$print			= $data['print'];		
		$quantity		= $data['quantity'];		
		$teamList               = isset($data['teamlist']) ? $data['teamlist'] : '';
		// get attribute
		if ( isset( $data['attribute'] ) )
		{
			$attribute		= $data['attribute'];
		}
		else
		{
			$attribute		= false;
		}
				
		if ($quantity < 1 ) $quantity = 1;
		
		$time = strtotime("now");
		
		if (isset($data['attribute'])) $attribute = $data['attribute'];
		else $attribute = false;
		
		if (isset($data['cliparts'])) $cliparts = $data['cliparts'];
		else $cliparts = false;			
		
		$content = array();
		$content['error'] = 1;
		$this->load->model('product_m');
			
		// check product and user shop
		$options = array(
			'id' => $data['product_id']				
		);
		$product 		= $this->product_m->getProduct($options);
		if ($product == false)
		{
			$content['msg'] = 'Product could not be found';
		}
		else
		{
			$product 		= $product[0];
			$content['error'] = 0;
			$this->load->helper('cart');
			$cart 		= new dgCart();
			
			$post 		= array(
				'colors' 		=> $colors,
				'print' 		=> $print,
				'attribute' 	=> $attribute,
				'quantity' 		=> $quantity,
				'product_id' 	=> $product_id					
			);
			
			// load setting
			$this->load->model('settings_m');
			$row 			= $this->settings_m->getSetting();			
			$setting		= json_decode($row->settings);
			$result 		= $cart->totalPrice($this->product_m, $product, $post, $setting);
			$result->product	= new stdClass();
			$result->product->name 	= $product->title;
			$result->product->sku 	= $product->sku;
			
			// get cliparts
			$clipartsPrice = array();			
			if ( isset($data['cliparts']) )
			{
				$this->load->model('art_m');
				
				$cliparts = $data['cliparts'];
				foreach($cliparts as $view => $arts)
				{
					if (count($arts))
					{
						$art = array();
						foreach($arts as $art_id)
						{
							// check admin shop and desginer
							$clipart 		= $this->art_m->getArt($art_id, 'system, add_price');
							
							if ( empty($clipart) ) continue;
							if ($clipart->add_price == 0) continue;
							
							$prices 		= $clipart->add_price;
							$art[$art_id] 	= $prices;							
						}
						$clipartsPrice[$view] = $art;
					}
				}
			}
			
			$result->cliparts = $clipartsPrice;	                        
                        
                        $color_num = json_decode($print['colors']);
                        $print_num = array(sizeof($color_num->front),sizeof($color_num->back));
                        $nprice = $this->getQuote($product_id, $colors, $attribute, $print_num);
                        
			$total	= new stdClass();
			//$total->old = $result->price->base + $result->price->colors + $result->price->prints + $result->price->attribute;
			//$total->sale = $result->price->sale + $result->price->colors + $result->price->prints+ $result->price->attribute;
			
                        $total->old     = $nprice['unit_price'];
                        $total->sale    = $nprice['unit_price_full'];
                        
                        $price_cus = 0;
                        if (isset($data['teamcheck'])) {
                            $teamc = $data['teamcheck'];                            
                            if ($teamc['name'] == 'true' && isset($teamList['name']))
                            {
                                $price_cus += (count($teamList['name']) - $this->countArrayValue($teamList['name'])) * 5;
                            }
                            if ($teamc['number'] == 'true' && isset($teamList['number']))
                            {

                                $price_cus += (count($teamList['number'])- $this->countArrayValue($teamList['number'])) * 4;
                            }
                                                            
                        }
                        
                        
			if (count($result->cliparts))
			{
				foreach($result->cliparts as $view=>$art)
				{
					foreach($art as $id=>$amount)
					{
						$total->old 	= $total->old + $amount;
						$total->sale 	= $total->sale + $amount;
					}
				}
			}
			
			$result->total 	= $total;
			
			// get symbol
			if (!isset($setting->currency_symbol))
				$setting->currency_symbol = '$';
			$result->symbol = $setting->currency_symbol;
			
			// save file image design
			$design = array();
			if (isset($data['design']['images']['front']))
				$design['images']['front'] 	= createFile($data['design']['images']['front'], 'front', $time);
					
			if (isset($data['design']['images']['back']))	
				$design['images']['back'] 	= createFile($data['design']['images']['back'], 'back', $time);
				
			if (isset($data['design']['images']['left']))
				$design['images']['left'] 	= createFile($data['design']['images']['left'], 'left', $time);
				
			if (isset($data['design']['images']['right']))
				$design['images']['right']	= createFile($data['design']['images']['right'], 'right', $time);
			
				
			// add session design
			$rowid			= md5($result->product->sku . $time);
			$designs 		= $this->cache->get('orders_designs'.$this->session_id);
			
			$designs[$rowid]	= array(
				'color'         => $data['colors'][key($data['colors'])],
                                'color_title'   => $data['color_title'],
				'images'        => $design['images'],
				'vector'        => $data['design']['vectors'],
				'fonts'         => $data['fonts']
			);
			$this->cache->save('orders_designs'.$this->session_id, $designs, 36000);
				
			if (empty($result->options)) $result->options = array();
			
			if (isset($data['teams'])) $teams = $data['teams'];
                        else $teams = array();
			
			// add cart
			$item 	= array(
				'id'      		=> $result->product->sku,
				'product_id'    => $data['product_id'],
				'qty'     		=> $data['quantity'],
				'teams'     	=> $teams,
				'price'   		=> $result->total->sale,
				'prices'   		=> json_encode($result->price),
				'cliparts'   	=> json_encode($result->cliparts),
				'symbol'   		=> $result->symbol,
				'customPrice'   => $price_cus,//$result->price->attribute,
				'name'    		=> $result->product->name,
                                'print_number'          => array('front'=>$print_num[0], 'back'=>$print_num[1]),
				'time'    		=> $time,
				'options' 		=> json_decode(json_encode($result->options), true)
			);
			$this->cart->product_name_rules = '[:print:]';
			$this->cart->insert($item);
			
			$content['product'] = array(
				'name'=> $result->product->name,
				'quantity'=> $data['quantity'],
				'image'=> base_url().$design['images']['front']
			);
		}
		
		echo json_encode($content);
	}
	
        // add to cart in after quote page
	public function addToCart(){		
		$data = $this->input->post();
		//exit();
		// get data post
		$product_id		= $data['product_id'];
		$colors[$data['colors']]= $data['color-name'];
                $data['colors']          = $colors;
		$print			= $data['print'];		
		$quantity		= $data['quantity'];		
		$design_area            = array('front'=> $data['design-area-front'], 'back'=> $data['design-area-back']);       
		// get attribute
		if ( isset( $data['attribute'] ) )
		{
			$attribute		= $data['attribute'];
		}
		else
		{
			$attribute		= false;
		}
				
		if ($quantity < 1 ) $quantity = 1;
		
		$time = strtotime("now");
		
		if (isset($data['attribute'])) $attribute = $data['attribute'];
		else $attribute = false;
		
		if (isset($data['cliparts'])) $cliparts = $data['cliparts'];
		else $cliparts = false;			
		
		$content = array();
		$content['error'] = 1;
		$this->load->model('product_m');
			
		// check product and user shop
		$options = array(
			'id' => $data['product_id']				
		);
		$product 		= $this->product_m->getProduct($options);
		if ($product == false)
		{
			$content['msg'] = 'Product could not be found';
		}
		else
		{
			$product 		= $product[0];
			$content['error'] = 0;
			$this->load->helper('cart');
			$cart 		= new dgCart();
			
			$post 		= array(
				'colors' 		=> $colors,
				'print' 		=> $print,
				'attribute' 	=> $attribute,
				'quantity' 		=> $quantity,
				'product_id' 	=> $product_id					
			);
			
			// load setting
			$this->load->model('settings_m');
			$row 			= $this->settings_m->getSetting();			
			$setting		= json_decode($row->settings);
			$result 		= $cart->totalPrice($this->product_m, $product, $post, $setting);
			$result->product	= new stdClass();
			$result->product->name 	= $product->title;
			$result->product->sku 	= $product->sku;
			
			// get cliparts
			$clipartsPrice = array();			
			if ( isset($data['cliparts']) )
			{
				$this->load->model('art_m');
				
				$cliparts = $data['cliparts'];
				foreach($cliparts as $view => $arts)
				{
					if (count($arts))
					{
						$art = array();
						foreach($arts as $art_id)
						{
							// check admin shop and desginer
							$clipart 		= $this->art_m->getArt($art_id, 'system, add_price');
							
							if ( empty($clipart) ) continue;
							if ($clipart->add_price == 0) continue;
							
							$prices 		= $clipart->add_price;
							$art[$art_id] 	= $prices;							
						}
						$clipartsPrice[$view] = $art;
					}
				}
			}
			
			$result->cliparts = $clipartsPrice;							
				
			$total	= new stdClass();
			$total->old = $data['total_price'];
			$total->sale = $data['unit-price-full'];
			
			if (count($result->cliparts))
			{
				foreach($result->cliparts as $view=>$art)
				{
					foreach($art as $id=>$amount)
					{
						$total->old 	= $total->old + $amount;
						$total->sale 	= $total->sale + $amount;
					}
				}
			}
			
			$result->total 	= $total;
			
			// get symbol
			if (!isset($setting->currency_symbol))
				$setting->currency_symbol = '$';
			$result->symbol = $setting->currency_symbol;
			
			// save file image design                        
			$design = array();
                        $design['images']['front'] = '/media/assets/not-uploaded.jpg';
                        //var_dump($data['design']);
                        //exit();
			if (isset($data['design']['images']['front']) && $data['design']['images']['front'] != '')
				$design['images']['front'] 	= $data['design']['images']['front'];
					
			if (isset($data['design']['images']['back']) && $data['design']['images']['back'] != '')	
				$design['images']['back'] 	= $data['design']['images']['back'];
				
			if (isset($data['design']['images']['left']))
				$design['images']['left'] 	= createFile($data['design']['images']['left'], 'left', $time);
				
			if (isset($data['design']['images']['right']))
				$design['images']['right']	= createFile($data['design']['images']['right'], 'right', $time);
			
				
			// add session design
			$rowid			= md5($result->product->sku . $time);
			$designs 		= $this->cache->get('orders_designs'.$this->session_id);
			
			$designs[$rowid]	= array(
				'color' => $data['colors'][key($data['colors'])],
                                'color_title' => $data['color-title'],
				'images' => $design['images'],
				'vector' => '{"front":{}}',//$data['design']['vectors'],
				'fonts' => ''
			);
			$this->cache->save('orders_designs'.$this->session_id, $designs, 36000);
				
			if (empty($result->options)) $result->options = array();
			
			if (isset($data['teams'])) $teams = $data['teams'];
			else $teams = array();
			
			// add cart
			$item 	= array(
				'id'      		=> $result->product->sku,
				'product_id'            => $data['product_id'],
				'qty'     		=> $data['quantity'],
				'teams'                 => $teams,
				'price'   		=> $result->total->sale,
				'prices'   		=> json_encode($result->price),
				'cliparts'              => json_encode($result->cliparts),
				'symbol'   		=> $result->symbol,
				'customPrice'           => 0,//$result->price->attribute,
				'name'    		=> $result->product->name,
				'time'    		=> $time,
                                'design_area'           => $design_area,
                                'design_images'         => $design['images'],
                                'print_number'          => array('front'=>$data['print-front-num'], 'back'=>$data['print-back-num']),
				'options' 		=> json_decode(json_encode($result->options), true)
			);
			$this->cart->product_name_rules = '[:print:]';
			$this->cart->insert($item);
			
			$content['product'] = array(
				'name'=> $result->product->name,
				'quantity'=> $data['quantity'],
				'image'=> base_url().$design['images']['front']
			);
		}
		redirect('cart');
		//echo json_encode($content);
	}
        
        
	public function prices()
	{
		$data 	= $this->input->post();
		
		// get data post
		$product_id		= $data['product_id'];
		$colors			= $data['colors'];
		$print			= $data['print'];		
		$quantity		= $data['quantity'];
                $teams                  = $data['teams'];
                $teamList               = isset($data['teamlist']) ? $data['teamlist'] : array();
		
		// get attribute
		if ( isset( $data['attribute'] ) )
		{
			$attribute		= $data['attribute'];
		}
		else
		{
			$attribute		= false;
		}
				
		if ($quantity < 1 ) $quantity = 1;
		
		// load product
		$this->load->model('product_m');					
		$options = array(
			'id' => $product_id				
		);
		$product 		= $this->product_m->getProduct($options);
		
		if ($product == false)
		{
			echo json_encode( array('error' => 'Product could not be found') );
			exit;
		}
		else
		{
			// load cart
			$this->load->helper('cart');
			$cart 		= new dgCart();	
			$post 		= array(
				'colors' 		=> $colors,
				'print' 		=> $print,
				'attribute' 	=> $attribute,
				'quantity' 		=> $quantity,
				'product_id' 	=> $product_id					
			);
			
			// load setting
			$this->load->model('settings_m');
			$row 		= $this->settings_m->getSetting();			
			$setting	= json_decode($row->settings);
			$result 		= $cart->totalPrice($this->product_m, $product[0], $post, $setting);
			
			// get cliparts
			$clipartsPrice = array();
			/*
			if ( isset($data['cliparts']) )
			{
				$this->load->model('art_m');
				
				$cliparts = $data['cliparts'];
				foreach($cliparts as $view => $arts)
				{
					if (count($arts))
					{
						$art = array();
						foreach($arts as $art_id)
						{
							// check admin shop and desginer
							$clipart 		= $this->art_m->getArt($art_id, 'system, add_price');
							
							if ( empty($clipart[0]) ) continue;
							if ($clipart[0]->add_price == 0) continue;
							
							$prices 		= $clipart[0]->add_price;
							$art[$art_id] 	= $prices;							
						}
						$clipartsPrice[$view] = $art;
					}
				}
			}
			*/
			
			$result->cliparts = $clipartsPrice;
			$result->quantity = $quantity;	
                        
			$color_num = json_decode($print['colors']);
	                $print_num = array(sizeof($color_num->front),sizeof($color_num->back));
	                $nprice = $this->getQuote($product_id, $colors, $attribute, $print_num);
	                        
			$total	= new stdClass();
			//$total->old = $result->price->base + $result->price->colors + $result->price->prints;
			//$total->sale = $result->price->sale + $result->price->colors + $result->price->prints;
                        
			$total->old     = $nprice['unit_price'];
                        $total->sale    = $nprice['unit_price_full'];	
			if (count($result->cliparts))
			{
				foreach($result->cliparts as $view=>$art)
				{
					foreach($art as $id=>$amount)
					{
						$total->old 	= $total->old + $amount;
						$total->sale 	= $total->sale + $amount;
					}
				}
			}
                        
                        
			
			$total->old 	= ($total->old * $quantity);// + $result->price->attribute;
			$total->sale 	= ($total->sale * $quantity);// + $result->price->attribute;
			
                        //------- new price add --------
                        //calculator price with team number
                        // name + $5
                        // number + $4
                        if ($teams['name'] == 'true' && isset($teamList['name']))
                        {
                            $price_name = (count($teamList['name']) - $this->countArrayValue($teamList['name'])) * 5;
                            $total->old     += $price_name;
                            $total->sale    += $price_name;
                        }
                        if ($teams['number'] == 'true' && isset($teamList['number']))
                        {
                            
                            $price_num = (count($teamList['number'])- $this->countArrayValue($teamList['number'])) * 4;
                            $total->old     += $price_num;
                            $total->sale    += $price_num;
                        }
			
                        
			$total->old 	= number_format($total->old, 2, '.', ',');
			$total->sale 	= number_format($total->sale, 2, '.', ',');
			
			echo json_encode($total);
			exit;
		}	
	}
        
        private function countArrayValue($arr){
            $count = 0;
            foreach ($arr as $a){
                if ($a == "")
                    $count++;
            }
            return $count;
        }

        public function shipping($id = '')
	{
		$id	= (int) $id;
		
		$this->load->model('shipping_m');		
		$shipping 	= $this->shipping_m->get($id, true);		
		
		if ($this->session->userdata('cart') === false)
		{
			$cart 		= new stdClass();
			$cart->shipping	= new stdClass();
			
		}
		else
		{
			$cart	= $this->session->userdata('cart');
			if (empty($cart->shipping))
				$cart->shipping		= new stdClass();
		}
                $ses = $this->session->userdata('cart_contents');
                
		$cart->shipping->id 	= $id;
		$cart->shipping->price 	= ($shipping->price * $ses['cart_total'])/100;
		$this->session->set_userdata('cart', $cart);
				
		$this->data['designs'] 	= $this->cache->get('orders_designs'.$this->session_id);
		$this->data['items'] 	= $this->cart->contents();
		
		$this->load->view('components/cart/items', $this->data);
	}
	
	// get coupon
	public function coupon($code = '')
	{		
		$this->load->model('coupon_m');
		$this->coupon_m->db->where('code', $code);
		$this->coupon_m->db->where('publish', 1);		
		$this->coupon_m->db->where('end_date > Now()');
		
		$coupon 				= $this->coupon_m->get();
		if ($this->session->userdata('cart') === false)
		{
			$cart 					= new stdClass();
			$cart->discount			= new stdClass();
		}
		else
		{
			$cart	= $this->session->userdata('cart');
			if (empty($cart->discount))
				$cart->discount		= new stdClass();
		}			
		
		$discount		= true;
		if ( count($coupon) == 0)
		{
			$discount	= false;
		}
		else
		{
			if ($coupon[0]->coupon_type == 'g' && $coupon[0]->count != 0)
			{
				$discount	= false;
			}
			
			// check min total discount
			$total 	= $this->cart->total();
			if ($coupon[0]->minimum > $total)
			{
				$discount	= false;
			}
		}
		
		if ($discount === true)
		{
			$cart->discount->id 			= $coupon[0]->id;
			$cart->discount->type 			= $coupon[0]->coupon_type;
			$cart->discount->discount_type 	= $coupon[0]->discount_type;
			$cart->discount->value 			= $coupon[0]->value;
			$cart->discount->code 			= $coupon[0]->code;
		}
		else
		{
			$cart->discount		= new stdClass();
		}
		$this->session->set_userdata('cart', $cart);
				
		$this->data['designs'] 	= $this->cache->get('orders_designs'.$this->session_id);
		$this->data['items'] 	= $this->cart->contents();
		
		$this->load->view('components/cart/items', $this->data);
	}
	
	function show()
	{	
		echo '<pre>';		
		print_r($this->cache->get('orders_designs'.$this->session_id));
		print_r($this->cart->contents());
		//print_r($this->session->all_userdata());
		echo '</pre>';
	}
	function test(){
		$data = array(
               'id'      => 'sku_123ABC',
               'qty'     => 1,
               'price'   => 39.95,
               'name'    => 'T-Shirt',
			   'time'	=> strtotime("now"),
               'options' => array('Size' => 'L', 'Color' => 'Red')
            );

		$this->cart->insert($data);
	}
	
	function remove($rowid = '')
	{
		if ($rowid != '')
		{
			$data = array(
				'rowid' => $rowid,
				'qty' => '0'
			);
			$this->cart->update($data);
			
			$designs 		= $this->cache->get('orders_designs'.$this->session_id);
			unset($designs[$rowid]);
			$this->cache->save('orders_designs'.$this->session_id, $designs, 86400);
		}
	}
	
	function destroy()
	{
		$this->cart->destroy();
		if ($this->cache->get('orders_designs'.$this->session_id))
			$this->cache->delete('orders_designs'.$this->session_id);
	}
        
        /**
         * 
         * Calculate shirt price
         * 
         * total = quantity * ( base price + print front + print back ) + 8% tax
         * 
         */
        function getQuote($product_id, $colors, $attribute, $print)
        {
            //$product_id 	= $this->input->post('product_id', TRUE);
            //$color = $this->input->post('color');
            //$size = $this->input->post('size');
            //$print = $this->input->post('print');
            
            /*
            $product_id = 1;
            $color = 0;
            $size = [12,0,0,0,0,0];
            $print = [2,2];
            */
            $color =  (strtoupper( $colors[key($colors)]) == 'FFFFFF') ? 0 : 1;
                        
            foreach ($attribute as $a)
                foreach ($a as $b)
                    foreach ($b as $value)
                        $size[] = $value;
            
            $price_total = 0;
            $this->load->model('product_m');
            $this->load->model('print_price_m');
            $attribute          = $this->product_m->getAttribute($product_id);
            $arr_attribute['prices'] 		= json_decode($attribute->prices);
            $arr_attribute['prices_color'] 	= json_decode($attribute->prices_color);
             //Get print list
            $pfront                 = $this->print_price_m->getFrontPrintPriceList();
            $arr_front['id']        = $pfront->id;
            $arr_front['quantity']  = json_decode($pfront->quantity);
            $arr_front['prices']    = json_decode($pfront->prices);                        

            $pback                  = $this->print_price_m->getBackPrintPriceList();
            $arr_back['id']         = $pback->id;
            $arr_back['quantity']   = json_decode($pback->quantity);
            $arr_back['prices']     = json_decode($pback->prices);           
            
            $price_product = 0;
            $quantity = 0;
            if($color == 0){ //white
                for($i = 0; $i < count($size); $i++){                    
                    $price_product += $size[$i] * $arr_attribute['prices'][0][$i];
                    $quantity += $size[$i];
                }
            }else{ //color
                for($i = 0; $i < count($size); $i++){                    
                    $price_product += $size[$i] * $arr_attribute['prices_color'][0][$i];
                    $quantity += $size[$i];
                }
            }
            
            if($quantity == 0){
                $data['quantity'] = $data['total_price'] = $data['unit_price'] = $data['unit_price_full'] = 0;
                return $data;
            }
            
            // SELECT THE LARGER PRINT LOCAT FOR FRONT PRICE
            if ($print[0] < $print[1] )
            {
                $stem = $print[0]; $print[0] = $print[1]; $print[1] = $stem;
            }
            
            
            $price_front = 0;            
            for($i = 0; $i < count($arr_front['quantity']); $i++){
                if($quantity >= $arr_front['quantity'][$i][0] && $quantity <= $arr_front['quantity'][$i][1]){                    
                    $price_front = $arr_front['prices'][$i][$print[0]];
                    break;
                }
            }
            $price_back = 0;
            for($i = 0; $i < count($arr_back['quantity']); $i++){
                if($quantity >= $arr_back['quantity'][$i][0] && $quantity <= $arr_back['quantity'][$i][1]){
                    $price_back = $arr_back['prices'][$i][$print[1]];
                    break;
                }                    
            }
            $price_print = ($price_front + $price_back) * $quantity;
            $price_total = $price_product + $price_print;
            
            
            // Adding Setup charges : num of color * $20
            $price_total += ( $print[0] + $print[1] ) * 20;            
            
            // Addding 8% tax            
            $price_total += ($price_total * 8 ) /100;  
            
            //Add ship price - trangttm - 03/22/2016
            $this->load->model('boxes_m');
            $boxes = $this->boxes_m->getBoxes();
            $arr_boxes['quantity']  = json_decode($boxes->quantity);
            $arr_boxes['boxes']    = json_decode($boxes->boxes);
            $number_boxes = 0;
            for($i = 0; $i < count($arr_boxes['quantity']); $i++){
                if($quantity >= $arr_boxes['quantity'][$i][0] && $quantity <= $arr_boxes['quantity'][$i][1]){                    
                    $number_boxes = $arr_boxes['boxes'][$i];
                    break;
                }
            }    
            $this->load->model('settings_m');
            $setting = $this->settings_m->getSetting();
            $setting = json_decode($setting->settings);
            $price_boxes = $setting->shippingbox;
            
            $price_total += ($number_boxes * $price_boxes);
            
            $data['quantity']           = $quantity;
            $data['total_price']        = number_format(round($price_total,2),2);
            $data['unit_price']         = number_format(round($price_total/$quantity, 2),2);
            $data['unit_price_full']    = $price_total/$quantity;
            
            return $data;
        }
}

?>