<?php
$this->load->view('user/header');
echo heading($title,3);

  foreach($array_emp->result() as $d):
  echo "<div class='container'>";
  echo "<h3>";
  echo "<a href='$d->link_article'>".heading($d->title,3)."</a>";
  echo "</h3>";
  echo $this->markdown->parse($d->content); //mengimplementasikan markdown library untuk memprashing spesial sintaks
  echo br(2);
  echo "Date: ",$d->waktu;
  echo "</div>";
  endforeach;

$this->load->view('user/pagination');
$this->load->view('user/footer');
?>

