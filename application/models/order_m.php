<?php
/**
 * @author teevisionprinting - www.teevisionprinting.com
 * @date: 2015-01-10
 * 
 * order
 * 
 * @copyright  Copyright (C) 2015 teevisionprinting.com. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE
 *
 */
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Order_m extends MY_Model
{
	
	public $_table_name = 'orders';
	public $_order_by 	= 'id';
	public $_primary_key = 'id';
	
	function __construct ()
	{
		parent::__construct();
	}
	
	// convert object to array
	public function fields($fields)
	{
		$this->load->helper('security');
		
		$data = array();
		if (count($fields))
		{
			foreach($fields as $key=>$value)
			{
				$data[$key]	= xss_clean(strip_tags($value));
			}
		}
		
		return $data;
	}
	
	// set new order
	public function addNew($type)
	{		
	
		switch($type)
		{
			case 'order':
				$this->_table_name 			= 'orders';
				$data = array(
					'order_number' 			=> '',
					'user_id' 				=> 0,					
					'order_pass' 			=> '',
					'payment_id' 			=> 0,
					'payment_price' 		=> 0,
					'shipping_id' 			=> 0,
					'shipping_price' 		=> '',
					'sub_total' 			=> 0,
					'total' 				=> 0,
					'discount_id' 			=> 0,
					'discount' 				=> 0,
					'tax' 					=> '',
					'status' 				=> '',
					'created_on' 			=> date('Y-m-d h:i:s'),
					'modified_on' 			=> date('Y-m-d h:i:s'),
					'client_note' 			=> ''
				);
			break;
			
			case 'item':
				$this->_table_name 			= 'order_items';
				$data = array(
					'order_id' 				=> 0,
					'design_id' 			=> 0,
					'product_id' 			=> 0,
					'product_name' 			=> '',
					'product_sku' 			=> '',
					'product_price' 		=> 0,					
					'price_print' 			=> 0,
					'price_clipart' 		=> 0,
					'price_attributes' 		=> 0,
					'quantity' 				=> 0,
					'poduct_status' 		=> '',
					'attributes' 			=> '',
					'created_on' 			=> date('Y-m-d h:i:s'),
					'modified_on' 			=> date('Y-m-d h:i:s')					
				);
			break;
			
			case 'info':
				$this->_table_name 			= 'orders_userinfo';
				$data = array(
					'order_id' 				=> 0,
					'user_id' 				=> 0,					
					'address' 				=> '',					
					'created_on' 			=> date('Y-m-d h:i:s'),
					'modified_on' 			=> date('Y-m-d h:i:s')					
				);
			break;
			
			case 'histories':
				$this->_table_name 			= 'orders_histories';
				$data = array(
					'order_id' 				=> 0,
					'lable' 				=> '',					
					'content' 				=> '',					
					'date' 					=> date('Y-m-d h:i:s')
				);
			break;
		}
		
		return $data;
	}
	
	
	// get all orders
	public function getOrders($count = false, $number = 5, $offset = 1, $search='', $option='')
	{
		$this->db->select('orders.*, name, (created_on + INTERVAL ship_day DAY ) ship_date');
				
		$this->db->join('users', 'orders.user_id = users.id');
                
                $this->db->join('shippings', 'orders.shipping_id = shippings.id');
		
		if($option == 'order_number' && $search != '')
		{
			$this->db->like('orders.order_number', $search);
		}
		elseif( $option == 'customer' && $search != '')
		{			
			$this->db->like('users.username', $search);
		}
		elseif($option == 'date' && $search != '')
		{
			$this->db->like('orders.created_on', $search);
		}
		
		$this->db->order_by("created_on", "DESC"); 
		
		if ( $count == true )
		{
			$query = $this->db->get('orders');			
			return count($query->result());
		}
		else 
		{
			$query = $this->db->get('orders', $number, $offset);			
			return $query->result();
		}
	}
	
        
	// get all orders
	public function getOrdersSched($count = false, $number = 5, $offset = 1, $search='', $option='')
	{
		$this->db->select('orders.*, name, shippings.ship_day, (dg_orders.created_on + INTERVAL ship_day DAY ) ship_date, design_option, order_shipdate.due_date duedate, order_shipdate.ship_date shipdate, orders_userinfo.address');
				
		$this->db->join('users', 'orders.user_id = users.id');
                
                $this->db->join('shippings', 'orders.shipping_id = shippings.id');
                
                $this->db->join('order_shipdate', 'orders.id = order_shipdate.order_id', 'left');
                
                $this->db->join('order_items', 'orders.id = order_items.order_id');
                
                $this->db->join('orders_userinfo', 'orders.id = orders_userinfo.order_id');
		
		if($option == 'order_number' && $search != '')
		{
			$this->db->like('orders.order_number', $search);
		}
		elseif( $option == 'customer' && $search != '')
		{			
			$this->db->like('users.name', $search);
		}
		elseif($option == 'date' && $search != '')
		{
			$this->db->like('orders.created_on', $search);
		}
                elseif($option == 'order60h')
		{
			$this->db->where('orders.created_on > (NOW() - INTERVAL 60 HOUR)');
		}
                elseif($option == 'today')
		{
			$this->db->where('DATE(`dg_order_shipdate`.ship_date) LIKE DATE(NOW())');
		}
                elseif($option == 'online60h')
		{
			$this->db->where('orders.created_on > (NOW() - INTERVAL 60 HOUR)');
                        $this->db->where('order_items.design_id != ""');
		}
		 elseif($option == 'garments')
		{
			$this->db->where('orders.apparel = 1');
		}
		$this->db->order_by("created_on", "DESC"); 
                
                $this->db->group_by("id"); 
		
		if ( $count == true )
		{
			$query = $this->db->get('orders');			
			return count($query->result());
		}
		else 
		{
			$query = $this->db->get('orders', $number, $offset);			
			return $query->result();
		}
	}
        
	// get order detail
	function getOrder($id)
	{
		$this->db->select('orders.*, name, username, email');
		
		$this->db->where('orders.id', $id);
		
		$this->db->join('users', 'orders.user_id=users.id');
		
		$query = $this->db->get('orders');
		
		return $query->row();
	}
        
        // get order detail
	function getOrderSchedule($id)
	{
                $this->db->select('orders.*, shippings.ship_day, name, username, email, (dg_orders.created_on + INTERVAL ship_day DAY ) ship_date, design_option, order_shipdate.due_date duedate, order_shipdate.ship_date shipdate, orders_userinfo.address');
				
		$this->db->join('users', 'orders.user_id = users.id');
                
                $this->db->join('shippings', 'orders.shipping_id = shippings.id');
                
                $this->db->join('order_items', 'orders.id = order_items.order_id'); 
                
                $this->db->join('order_shipdate', 'orders.id = order_shipdate.order_id', 'left');
                
                $this->db->join('orders_userinfo', 'orders.id = orders_userinfo.order_id');
		
		$this->db->where('orders.id', $id);
		
		$query = $this->db->get('orders');
		
		return $query->row();
	}
	
	// get all items of order
	function getItems($order_id)
	{
            $this->db->select('order_items.*,order_proof.proof_file');
		$this->db->where('order_items.order_id', $order_id);
                $this->db->join('order_proof', 'order_items.order_id = order_proof.order_id and dg_order_items.id = dg_order_proof.item_id', 'left');
                
		$query = $this->db->get('order_items');
//                var_dump($query);
                //echo $this->db->last_query();
		return $query->result();
	}
	
	// get all item of order
	function getItem($id)
	{
		$this->db->where('id', $id);
		$query = $this->db->get('order_items');
		return $query->row();
	}
	
	// get cliparts
	function getCliparts($order_id)
	{		
		$this->db->select('cliparts.title, cliparts.add_price, cliparts.fle_url, cliparts.clipart_id, cliparts.file_name, cliparts.cate_id');
		$this->db->join('cliparts', 'cliparts.clipart_id = order_cliparts.clipart_id');		
		
		$this->db->where('order_cliparts.order_id', $order_id);		
		$query = $this->db->get('order_cliparts');
				
		return $query->result();
	}
	
	// get History
	function getHistory($id)
	{
		$this->db->where('order_id', $id);
		$query = $this->db->get('orders_histories');
		return $query->result();
	}
	
	// get user shipping info
	public function getUserInfo($order_id)
	{
		$this->_table_name	= 'orders_userinfo';
		$this->db->where('order_id', $order_id);
		$row = $this->get();
		
		if ( count($row) > 0 )
			return $row[0];
		else
			return false;
	}
	
	// get design of item
	function getDesign($id)
	{
		$this->db->select('users_designs.*');
		$this->db->join('users_designs', 'users_designs.design_id = order_items.design_id');
		$this->db->where('order_items.id', $id);
		$query = $this->db->get('order_items');
		return $query->row();
	}
	
	function getDesignDetail($id)
	{
		$this->db->select('users_designs.*');
		$this->db->where('id', $id);
		$query = $this->db->get('users_designs');
		return $query->row();
	}
	
	// check order or item status
	public function checkStatus($id, $status, $order = false)
	{
		$this->db->where('id', $id);
		if($order == true)
		{
			$this->db->where('status', $status);
			$query = $this->db->get('orders');
		}
		else
		{
			$this->db->where('poduct_status', $status);
			$query = $this->db->get('order_items');
		}
		if($query->num_rows() > 0)
			return true;
		else
			return false;
	}
	
	// get user of order
	public function getUser($order_id)
	{
		$this->db->select('users.email, users.username, orders.total, orders.order_number');
		$this->db->join('users', 'orders.user_id = users.id');
		
		$this->db->where('orders.id', $order_id);
		$query = $this->db->get('orders');
		return $query->row();
	}
	
	// get order number
	public function creteOrderNumber($length = 7)
	{
		$rand 			= strtoupper(uniqid(sha1(time())));
		$orderNumber 	= substr($rand, -1 * $length);	
		
		return $orderNumber;
	}
        
        // get order number
	public function creteOrderNumberNew()
	{
		$id = $this->getLatestIdNew();
                $num = 2000 + $id->id;
		$text = 'TVP'.$num;
		return $text;
	}
	
	// get design.
	public function getDesigns($id = '')
	{
		$this->db->select('users_designs.*');
		$this->db->join('users_designs', 'users_designs.design_id = order_items.design_id');
		$this->db->where('order_items.order_id', $id);
		$query = $this->db->get('order_items');
		return $query->result();
	}
	
	function updateOrder($where, $data)
	{
		$this->db->where($where);
		if($this->db->update($this->_table_name, $data))
			return true;
		else
			return false;
	}
	
	function deleteOrder($where)
	{
		$this->db->where($where);
		if($this->db->delete($this->_table_name))
			return true;
		else
			return false;
	}
        
                
        function deleteOrderIteam($id)
	{
		$this->db->where('id',$id);
		if($this->db->delete('order_items'))
			return true;
		else
			return false;
	}
	
	function listHistory($id)
	{
		$this->db->where('order_id', $id);
		$query = $this->db->get('orders_histories');
		return $query->result();
	}
	
	function getOrderNumber($order_number)
	{
		$this->db->where('order_number', $order_number);
		$query = $this->db->get('orders');
		return $query->row();
	}
        
        function getArtworkByItem($id = '')
	{	
		$this->db->where('item_id ', $id);
                $query = $this->db->get('order_artwork');
                return $query->row();
		
	}
        
        function getArtworkImageByItem($id = '')
	{	
		$this->db->where('artid ', $id);
                $query = $this->db->get('order_artwork_detail');
                return $query->result();
		
	}
        
        function getProofByItem($id = '')
	{	
		$this->db->where('item_id ', $id);
                $query = $this->db->get('order_proof');
                return $query->row();
		
	}
        function getProofImageByItem($id = '')
	{	
		$this->db->where('proofid ', $id);
                $query = $this->db->get('order_proof_detail');
                return $query->result();
		
	}
        
        function getLatestId()
	{
                $this->db->select('max(id) id');
		$query = $this->db->get('orders');
		return $query->row();
	}
        
        function getLatestIdNew()
	{
                $query = 'SELECT `AUTO_INCREMENT` id
                        FROM  INFORMATION_SCHEMA.TABLES
                        WHERE TABLE_SCHEMA = "'.$this->db->database.'" AND TABLE_NAME   = "dg_orders"';
//                $this->db->select('AUTO_INCREMENT id');
//		$query = $this->db->get('`INFORMATION_SCHEMA.TABLES`');
//                $this->db->where('TABLE_NAME', 'orders');
		return $this->db->query($query)->row();
	}
}