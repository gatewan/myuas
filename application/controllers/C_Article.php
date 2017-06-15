<?php
class C_Article extends CI_Controller{
 
 public function __construct()
 {
  parent::__construct();
  $this->load->model('M_Article','MA'); 
  $id = $this->uri->segment(4);
 }
 
 public function index(){
  $data["title"] = "<h1>Daftar Artikel</h1>";
  $data["array_emp"] = $this->MA->get_article();
  $this->load->view('v_article',$data);
 }
 
  public function detail($id){ //fungsi detail article
        //$data['title'] = 'Detail Artikel'; //judul title
        $data['isi'] = $this->MA->get_article_byid($id); //query model article sesuai id
        $this->load->view('s_article',$data); //meload views detail article
  }
 
}

?>