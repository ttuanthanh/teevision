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

class Services extends Frontend_Controller {
	
	public function __construct(){
        parent::__construct();	
    }
	
	// show all category of blog
	public function index()
	{
		$this->load->model('blog_m');
		$this->data['categories'] = $this->blog_m->getCategories();
		
		$this->data['articles'] = $this->blog_m->getLastestArticleServices();
		
		$content				= $this->load->view('components/services/index', $this->data, true);
		
		$this->data['content']	= $content;		
		$this->data['subview'] 	= $this->load->view('layouts/blog/category', array(), true);
		
		$this->theme($this->data, 'blog');
	}
	
	// List all post of category
	// $id: category id
	public function category($id = '')
	{
		$this->load->model('blog_m');
		
		// pagination
		$this->load->library('pagination'); 
		$this->load->helper('url');
                if ($id == 268)
                    $config['base_url'] = base_url('organizations/page/');
                else
                    $config['base_url'] = base_url('services/category/'.$id);
		
		//check $id.
		$id = (int)$id;
		if($id == 0)
			redirect(site_url().'services');
		$category = $this->blog_m->getCategory($id, true);
		// check data category.
		if(count($category) == 0)
		{
			// load 404
			$this->data['subview'] = $this->load->view('layouts/404/404', array(), true);
		}else
		{
			$config['total_rows'] = $this->blog_m->getArticles(true, $id);
			$config['per_page'] = 20;
				
			$config['uri_segment'] = 4; 
			$config['next_link'] = lang('next'); 
			$config['prev_link'] = lang('prev'); 
			$config['first_link'] = lang('first'); 
			$config['last_link'] = lang('last'); 
			$config['num_links']	= 2;                
			$this->pagination->initialize($config); 
			$this->data['links'] = $this->pagination->create_links();
			
			$articles = $this->blog_m->getArticles(false, $id, $config['per_page'], $this->uri->segment(4));
			
			$this->data['articles'] = $articles;
			$this->data['category'] = $category;
			$this->data['list_categories'] = $this->blog_m->getChildCategory($id);
			$this->data['title'] = $category->meta_title;
			$this->data['meta_description'] = $category->meta_description;
			$this->data['meta_keywords'] = $category->meta_keyword;
			
			$content				= $this->load->view('components/services/category', $this->data, true);
		
			$this->data['content']	= $content;		
			$this->data['subview'] 	= $this->load->view('layouts/blog/category', array(), true);
		}
		$this->theme($this->data, 'blog');
	}

	// post detail
	// $id: post id
	public function post($string = '')
	{
		$this->load->model('blog_m');
		$row = $this->blog_m->getBlogIdBySlug($string);                
                if(!isset($row->id)){
                    $id = (int)$string;
                    if($id == 0)    
                        redirect(site_url().'services');//redirect(site_url().'blog');
                }
                else {
                    $id = $row->id;
                }
		
		$article = $this->blog_m->getArticle($id, true);
		
		// check data page.
		if(count($article) == 0)
		{
			// load 404
			$this->data['subview'] = $this->load->view('layouts/404/404', array(), true);
		}else
		{	
			$this->data['article'] = $article;
			$this->data['title'] = $article->meta_title;
			$this->data['meta_description'] = $article->meta_description;
			$this->data['meta_keywords'] = $article->meta_keyword;
			
			// update view article.
			$view['view'] = $article->view+1;
			$this->blog_m->save($view, $article->id);
			
			// list article connection.
			$this->data['list_article'] = $this->blog_m->getListArticle(0, $article->cate_id);
                        $this->load->model('product_m');
                        $this->data['product_m'] = $this->product_m;
			
			$content				= $this->load->view('components/services/post', $this->data, true);
		
			$this->data['content']	= $content;	
			$this->data['subview'] 	= $this->load->view('layouts/blog/post', array(), true);
		}
		$this->theme($this->data, 'blog');
	}
}

?>