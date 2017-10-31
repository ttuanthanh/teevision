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

class Artwork_schedule_m extends MY_Model
{
	public $_table_name = 'order_artwork_schedule';
	public $_primary_key = 'id';
	public $_timestamps = False;
	
	
	
	function getData($id = '')
	{	
		if($id == '')
		{
			$query = $this->db->get('order_artwork_schedule');
			return $query->result();
		}
		else
		{
			$this->db->where('artwork_id', $id);
			$query = $this->db->get('order_artwork_schedule');
			return $query->row();
		}
	}
        
        // get all orders
	public function getartSchedule($count = false, $number = 5, $offset = 0, $search='', $option='')
	{
		$this->db->select('order_artwork_schedule.*, orders.order_number, orders_userinfo.address');
				
		$this->db->join('orders', 'orders.id = order_artwork_schedule.order_id');
                $this->db->join('orders_userinfo', 'orders.id = orders_userinfo.order_id');
		
		if($option == 'order_number' && $search != '')
		{
			$this->db->like('orders.order_number', $search);
		}
		
		elseif($option == 'date' && $search != '')
		{
			$this->db->like('orders.created_on', $search);
		}
		
		$this->db->order_by("orders.created_on", "DESC"); 
                
     
		
		if ( $count == true )
		{
			$query = $this->db->get('order_artwork_schedule');			
			return count($query->result());
		}
		else 
		{
			$query = $this->db->get('order_artwork_schedule', $number, $offset);			
			return $query->result();
		}
	}
	
	
	function delete($id = '')
	{
		if($id != ''){
			$this->db->where('id ',$id);
			if($this->db->delete('order_garment')) 
				return true; 
			else 
				return false;
		}else
		{
			return true;
		}
	}
	
}
?>