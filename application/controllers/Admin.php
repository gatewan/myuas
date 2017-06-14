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
	
	 public function form(){
        //ambil variabel URL
        $mau_ke                 = $this->uri->segment(3);
        $id                    = $this->uri->segment(4);
         
        //ambil variabel dari form
		$ide					= addslashes($this->input->post('id'));
        $judul                  = addslashes($this->input->post('title'));
        $kategori               = addslashes($this->input->post('category'));
        $konten                 = addslashes($this->input->post('content'));

//mengarahkan fungsi form sesuai dengan uri segmentnya
        if ($mau_ke == "add") {//jika uri segmentnya add
            $data['title'] = 'Tambah Article';
            $data['aksi'] = 'aksi_add';
            $this->load->view('admin/index',$data);
        } else if ($mau_ke == "edit") {//jika uri segmentnya edit
            $data['isi']  = $this->MA->get_article_byid($id);
            $data['title'] = 'Edit Article';
            $data['aksi'] = 'aksi_edit';
            $this->load->view('admin/edit',$data);
        } else if ($mau_ke == "aksi_add") {//jika uri segmentnya aksi_add sebagai fungsi untuk insert
            $data = array(
                'title'  		=> $judul,
                'categories'  	=> $kategori,
                'content' 		=> $konten
            );
            $this->MA->get_insert($data); //model insert data article
            $this->session->set_flashdata("pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data berhasil di insert</div>"); //pesan yang tampil setalah berhasil di insert
            redirect('Admin');
        } else if ($mau_ke == "aksi_edit") { //jika uri segmentnya aksi_edit sebagai fungsi untuk update
          $data = array(				
                'title'  		=> $judul,
                'categories'  	=> $kategori,
                'content' 		=> $konten
            );
            $this->MA->get_update($ide,$data); //modal update data article
            $this->session->set_flashdata("pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data berhasil diupdate</div>"); //pesan yang tampil setelah berhasil di update
            redirect('Admin');
        }
 
    }
    public function detail($id){ //fungsi detail article
        $data['title'] = 'Detail Artikel'; //judul title
        $data['qarticle'] = $this->MA->get_article_byid($id); //query model article sesuai id
 
        $this->load->view('admin/index',$data); //meload views detail article
    }
	
    public function hapus($id){ //fungsi hapus article sesuai dengan id
 
        $this->MA->del_article($id);
        $this->session->set_flashdata("pesan", "<div class=\"alert alert-danger\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> article berhasil dihapus</div>");
        redirect('Admin');
    }

	
}

?>