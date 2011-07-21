<?php debug($venues)
?>
<div id="layout_left" class="grid_22">
	
	<h2 class="page_title">Create a New Deal</h2>
	
	<?php echo $this->Form->create('Venue',array('url'=>array('controller'=>'merchants')));?>
		<?php echo $this->Form->input('Venue.id',array('label'=>'Select a Venue','type'=>'select','options'=>$venues)); ?>
	<?php echo $this->Form->end(__('Create Deal', true));?>
	
</div><!-- layout_left -->