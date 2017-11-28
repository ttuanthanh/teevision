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

class M_home_hilight_m extends MY_Model
{
	public $_table_name = 'modules';
	public $_primary_key = 'id';
	
	function __construct ()
	{
		parent::__construct();
		$this->db = $this->load->database('', true);
	}
	
	public function getm_home_hilights($count = false, $number = '', $segment = '')
	{
		$this->db->where('type', 'm_home_hilight');
		$this->db->order_by('title', 'ASC');
		if($count == true)
		{
			$query = $this->db->get('modules');
			return count($query->result());
		}else
		{
			$query = $this->db->get('modules', $number, $segment);
			return $query->result();
		}
	}
	
	public function getm_home_hilight($id = '')
	{
		$this->db->where('id', $id);
		$this->db->where('type', 'm_home_hilight');
		$query = $this->db->get('modules');
		return $query->row();
	}
	
	public function getNew()
	{
		$m_home_hilight = new stdClass();
		$m_home_hilight->title = '';
		$m_home_hilight->content = '[]';
		$m_home_hilight->options = '';
		$m_home_hilight->params = '[]';
		return $m_home_hilight;
	}
	
	public function delete($id = '')
	{
		$this->db->where('id', $id);
		$this->db->where('type', 'm_home_hilight');
		if($this->db->delete('modules'))
			return true;
		else
			return false;
	}
        public function getProductSlugById($id)
	{
		$this->db->select('slug' );              
                $this->db->where('id', $id);
                $this->db->limit(1);
//                return parent::get(null, true);
                $query = $this->db->get('products');
                return $query->row();
	}
        
        public function getChildren($id, $published = 1)
	{
		$this->db->where('parent_id', $id);
		$this->db->where('published', $published);
		
		$query = $this->db->get('categories');		
		return $query->result();
	}
}
?>