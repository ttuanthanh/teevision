<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/* 
 * Config Email for SMTP sender
 * 
 */
//    $config['protocol'] = 'smtp';
//    $config['smtp_host'] = 'smtp.teevisionprinting.com'; //change this
//    $config['smtp_port'] = 25;
//    $config['smtp_user'] = 'info@teevisionprinting.com'; //change this
//    $config['smtp_pass'] = 'Tvision123'; //change this
    $config['mailtype'] = 'html';
    $config['charset'] = 'iso-8859-1';
    $config['wordwrap'] = TRUE;
    $config['newline'] = "\r\n"; //use double quotes to comply with RFC 822 standard

?>
