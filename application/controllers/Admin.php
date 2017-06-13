<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
 public function __construct()
 {
  parent::__construct();
  $this->load->model('M_Article','MA'); 
 
 }
	public function index()
	{
		$data["title"] = "<h1>Panel Admin</h1>";
		$data["array_emp"] = $this->MA->get_article();
		$this->load->view('admin/index',$data);
	}
	
}

?>