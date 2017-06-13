<?php
class C_Article extends CI_Controller{
 
 public function __construct()
 {
  parent::__construct();
  $this->load->model('M_Article','MA'); 
 
 }
 
 public function index(){

  $data["title"] = "<h1>Daftar Artikel</h1>";
  $data["array_emp"] = $this->MA->get_article();
  $this->load->view('v_article',$data);
 }
 
}

?>