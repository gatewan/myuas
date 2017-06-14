<?php
$template = array(
        'table_open'            => '<table border="1" cellpadding="4" cellspacing="0" class="table table-bordered table table-hover">',
        'table_close'           => '</table>'
);
$this->table->set_template($template);

$this->table->set_heading(
'ID.',
'Title',
'Categories',
'Date/Time',
'Statistik',
'Edit',
'Detail',
'Delete'
);

  foreach($array_emp->result() as $row):
  $this->table->add_row(
   $row->id_article,
   $row->title,
   $row->categories,
   $row->waktu,
   $row->stat,
   '<a href="Admin/form/edit/'. $row->id_article .'" class="btn btn-info btn-sm"><i class="glyphicon glyphicon-pencil"></i></a>',
   '<a href="Admin/detail/'. $row->id_article .'" class="btn btn-warning btn-sm"><i class="glyphicon glyphicon-search"></i></a>',
   '<a href="Admin/hapus/'. $row->id_article .'" class="btn btn-danger btn-sm" onclick="return confirm("Anda Yakin menghapus data ini?")"><i class="glyphicon glyphicon-trash"></i></a>'
   );
 
  endforeach;
  echo $this->table->generate();

?>