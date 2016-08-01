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

class Comment_m extends MY_Model
{
	public $_table_name = 'comment';
	public $_primary_key = 'id';
	public $_timestamps = False;
	
	
	
	function getByOrder($id = '')
	{	
		if($id == '')
		{			
			return '';
		}
		else
		{
			$this->db->where('order_id ', $id);
			$query = $this->db->get('comment');
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