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

class Tag_m extends MY_Model
{
	public $_table_name = 'tag';
	public $_primary_key = 'id';
	public $_timestamps 	= FALSE;
	
        function __construct ()
	{
		parent::__construct();
	}
	
	public function save_tag ($article, $arr)
	{
            $this->db->where('article_id ', $article);
            $this->db->delete('tag');
            foreach ($arr as $tag){
                $this->save(array('article_id'=>$article, 'tag'=>$tag));
            }
	}
}