<?php
class M_Article extends CI_Model{
 
 public function get_article(){
  return $this->db->get("article"); //cara 1
  
 }
 
}

?>