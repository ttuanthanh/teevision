<?php
/**
 * @author teevisionprinting - www.teevisionprinting.com
 * @date: 2015-01-10
 * 
 * Field
 * 
 * @copyright  Copyright (C) 2015 teevisionprinting.com. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE
 *
 */
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Print_price_m extends MY_Model {

    public $_table_name     = 'print_price';
    public $_order_by       = 'id desc';
    public $_primary_key    = 'id';
	
	
	public function getPrintPrices()
	{
		$query = $this->db->get('print_price');
		return $query->result();
	}
	
	public function getBackPrintPriceList()
	{            
            $this->db->select('*');
            $this->db->where('location', "back");
            $row = parent::get(null, true);	
            if ( isset($row->id) )
                    return $row;
            else
                    return false;
	}
        
        public function getFrontPrintPriceList()
	{            
            $this->db->select('*');
            $this->db->where('location', "front");
            $row = parent::get(null, true);	
            if ( isset($row->id) )
                    return $row;
            else
                    return false;
	}
	
}
?>