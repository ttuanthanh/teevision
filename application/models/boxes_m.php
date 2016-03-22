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

class Boxes_m extends MY_Model {

    public $_table_name     = 'boxes';
    public $_order_by       = 'id desc';
    public $_primary_key    = 'id';
	
	
	public function getBoxes()
	{
            $this->db->select('*');
            $row = parent::get(null, true);	
            if ( isset($row->id) )
                    return $row;
            else
                    return false;
	}
}
?>