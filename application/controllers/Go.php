<?php
class Go extends CI_Controller 
{
    public function __construct() {
        parent:: __construct();
		$this->load->model("Pagination");
        $this->load->library("pagination");
    }

    public function example1() {
        $config = array();
        $config["base_url"] = base_url() . "Go/example1";
        $config["total_rows"] = $this->Pagination->record_count();
        $config["per_page"] = 3;
        $config["uri_segment"] = 3;
        $this->pagination->initialize($config);

        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $data["results"] = $this->Pagination->
            fetch_pagination($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();

        $this->load->view("p_article", $data);
    }
}