<?php
$this->load->view('user/header');
echo br(3);

foreach($results as $d):
  echo "<div class='container'>";
  echo "<h3>";
  echo "<a href='".base_url()."C_Article/detail/".$d->id_article."'>".heading($d->title,3)."</a>";
  echo "</h3>";
  echo $this->markdown->parse($d->content); //mengimplementasikan markdown library untuk memprashing spesial sintaks
  echo br(1);
  echo "Date: ",$d->waktu;
  echo br(3);
  echo "</div>";
endforeach;
$this->load->view('user/pagination');
$this->load->view('user/footer');
?>


