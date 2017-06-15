<?php
$this->load->view('user/header');

foreach($isi as $showdata):
   $id=$showdata->id_article;
   $jud=$showdata->title;
   $cat=$showdata->categories;
   $isi=$showdata->content;
   $wkt=$showdata->waktu;
endforeach;

echo heading($jud,3);

  echo "<div class='container'>";
  echo "<h3>";
  echo "<a href='$showdata->link_article'>".heading($jud,3)."</a>";
  echo "</h3>";
  echo $this->markdown->parse($isi); //mengimplementasikan markdown library untuk memprashing spesial sintaks
  echo br(2);
  echo "Date: ",$wkt;
  echo "</div>";

$this->load->view('user/pagination');
$this->load->view('user/footer');
?>

