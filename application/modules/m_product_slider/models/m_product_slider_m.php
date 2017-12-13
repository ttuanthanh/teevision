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

class M_product_slider_m extends MY_Model
{
	public $_table_name = 'modules';
	public $_primary_key = 'id';
	
	function __construct ()
	{
		parent::__construct();
		$this->db = $this->load->database('', true);
	}
	
	public function getm_product_sliders($count = false, $number = '', $segment = '')
	{
		$this->db->where('type', 'm_product_slider');
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
	
	public function getm_product_slider($id = '')
	{
		$this->db->where('id', $id);
		$this->db->where('type', 'm_product_slider');
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
		$this->db->where('type', 'm_product_slider');
		if($this->db->delete('modules'))
			return true;
		else
			return false;
	}
        
        public function geProductList()
	{
		$this->db->select('id, title, image, slug');
		
		$this->db->order_by('rand()');
                $this->db->where('published', 1);
                $this->db->limit(11);
                $query = $this->db->get('products');
                return $query->result();
	}
}
?>