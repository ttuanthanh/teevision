<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
    $config['protocol'] = 'smtp';
    $config['smtp_host'] = 'screenprintingphilad.ipage.com'; //change this
    $config['smtp_port'] = 587;
    $config['smtp_user'] = 'thanh@teevisionprinting.com'; //change this
    $config['smtp_pass'] = 'thanhA123'; //change this
    $config['mailtype'] = 'html';
    $config['charset'] = 'iso-8859-1';
    $config['wordwrap'] = TRUE;
    $config['newline'] = "\r\n"; //use double quotes to comply with RFC 822 standard

?>
