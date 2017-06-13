<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>UTS Rekayasa Web 2017</title>

    <!-- Bootstrap -->
    <link type="text/css" media="screen" href="assets/css/bootstrap.min.css" rel="stylesheet">
	 <link type="text/css" media="screen" href="assets/css/bootstrap-markdown.min.css" rel="stylesheet">
	 <link type="text/css" media="screen" href="assets/css/custom.css" rel="stylesheet">
	 <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
 
  <body>
<div class="well" style="text-align:center">
<?php echo heading($title);?>
</div>
<div class="container">
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
'Date',
'Time',
'Statistik',
'Edit',
'Delete'
);

  foreach($array_emp->result() as $row):
  $this->table->add_row(
   $row->id_article,
   $row->title,
   $row->categories,
   $row->date,
   $row->time,
   $row->stat,
   '<Button class="btn btn-success btn-sm">Edit</Button>',
   '<Button class="btn btn-warning btn-sm">Delete</Button>'
   );
  endforeach;
  echo $this->table->generate();

?>
 
 <form>
 	<div class="well">
 <div class="form-group">
    <input class="form-control" name="title" type="text" placeholder="Title?" />
	</div>

    <textarea name="content" data-provide="markdown" rows="10"></textarea>
	  </div>
    <label class="checkbox">
      <input name="publish" type="checkbox"> Publish
    </label>
    <hr/>
    <button type="submit" class="btn">Submit</button>
  </form> 
 
</div>
<div class="container">
<br /><br />
</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/bootstrap-markdown.js"></script>
  </body>
  <!--ADD FOOTER
  Sumber footer diambil dari http://bootsnipp.com/snippets/33WGq
  -->
<footer>
    <div class="footer-bottom">
        <div class="container">
         <p class="pull-left"> Copyright &copy; 12131294. All right reserved. </p>
        </div>
    </div>
    <!--/.footer-bottom--> 
</footer>
</html>