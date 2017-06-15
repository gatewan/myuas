<?php $this->load->view('admin/header');?>

<div class="well" style="text-align:center">
<?php echo heading($title);?>
<a class="btn btn-default" href="<?=base_url()?>/auth/logout">Logout</a>
</div>
<div class="container">
<?php $this->load->view('admin/list_article');?>
 
 <form action="<?=base_url()?>admin/form/aksi_add" method="POST">
 	<div class="well">
 <div class="form-group">
    <input class="form-control" name="title" type="text" placeholder="Title?"/>
	<br/>
	 <input class="form-control" name="category" type="text" placeholder="Category?"/>
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

<?php $this->load->view('admin/footer');?>