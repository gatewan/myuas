<?php $this->load->view('admin/header');
foreach($isi as $showdata):
   $id=$showdata->id_article;
   $jud=$showdata->title;
   $cat=$showdata->categories;
   $isi=$showdata->content;
endforeach;
?>

<div class="well" style="text-align:center">
<?php echo heading($title);?>
</div>
<div class="container">
 
 <form action="<?=base_url()?>admin/form/aksi_edit" method="POST">
 	<div class="well">
 <div class="form-group">
	<input type="hidden" name="id" class="form-control" value="<?=$id?>"/>
    <input class="form-control" name="title" type="text" value="<?=$jud?>"/>
	<br/>
	 <input class="form-control" name="category" type="text" value="<?=$cat?>"/>
	</div>
    <textarea name="content" data-provide="markdown" rows="10"><?=$isi?></textarea>
	  </div>
    <label class="checkbox">
      <input name="publish" type="checkbox"> Publish
    </label>
    <hr/>
    <button type="submit" class="btn">Submit</button>
  </form> 
</div>

<?php $this->load->view('admin/footer');?>