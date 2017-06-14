<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>UTS Rekayasa Web 2017</title>

    <!-- Bootstrap -->
    <link href="<?=base_url()?>assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="<?=base_url()?>assets/css/custom.css" rel="stylesheet">
	 <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	 <link href="<?=base_url()?>assets/css/bootstrap-markdown.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
 <!--Navbar-->
 <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container"> <!-- /.Membungkus navbar dengan Container agar tidak terlalu mepet pinggir -->
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="http://www.gatewan.com">
		<img alt="Brand" src="https://2.bp.blogspot.com/-PmUO7dv-KmM/WOjB1sTbDTI/AAAAAAAAPbE/ZhOyrRo-F7MyIeZBskkXwEu0ftbr0nkmgCLcB/s1600/logo.png">
	  </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
		<li><a href="#">Contact</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Menu<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Sitemap</a></li>
            <li><a href="#">Sinergi</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Forum</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Kamus HTML</a></li>
			<li><a href="#">Kamus PHP</a></li>
			<li><a href="#">Kamus DBMS</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-right">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Sign Up</a></li>
		<li><a href="#">Login</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav><!-- /navbar end -->