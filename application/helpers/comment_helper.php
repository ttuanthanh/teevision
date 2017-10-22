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

function comment_box($comments, $order_id, $all = 1)
{
    $thml = '';
    $i = 0;
    
    foreach ($comments as $row){
        if($all == 0 && !strstr($row->text, "span style")) 
            continue;
        else {
            
            $newDate = DateTime::createFromFormat('Y-m-d H:i:s', $row->createdt);        
            $thml .= '<p class="cm-bg-'.(++$i%2).'"><b>'.$row->user_name.'</b> <small>('.$newDate->format('M j H:i A').')</small>: <i><b>'.$row->text.'</b></i></p>';
        }
    }
    
    $return =   '<div class="panel panel-default">
                    <div class="panel-heading">
                            <i class="fa fa-external-link-square icon-external-link-sign"></i>
                            Comment
                    </div>
                    <div class="comment-box">
                        <div class="comment-content">
                            <div class="col-md-12" id="comment-container">
                                '.$thml.'
                            </div>

                        </div>
                        <div class="comment-nav clearfix">
                            <div class="col-md-8">
                                <textarea placeholder="Enter your comment here..." class="form-control" rows="2" id="comment-text"></textarea>
                            </div>
                            <div class="col-md-4">
                                <button class="btn btn-primary btn-comment" id="comment-submit" onclick="add_comment()">Send</button>
                                <input type="hidden" id="order_id_cm" value="'.$order_id.'">
                            </div>
                        </div>

                    </div>
                </div>';
    return $return;
}

function profile()
{	
	$CI = &get_instance();
	$CI->db->join('user_profiles', 'user_profiles.user_id = users.id');
	$CI->db->where('id', $CI->user['id']);
	$query = $CI->db->get('users');
	return $query->row();
}
?>