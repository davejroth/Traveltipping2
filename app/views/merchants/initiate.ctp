
<div id="layout_left" class="grid_22">
	
	<h2 class="page_title">Create a New Deal</h2>
	<div class="grid_10 prefix_1 suffix_1">
	<?php echo $this->Form->create('Venue',array('url'=>array('controller'=>'merchants')));?>

		<?php echo $this->Form->input('Deal.venue_id',array('label'=>'Select a Venue','type'=>'select','options'=>$venues)); ?>
	<?php echo $this->Form->end(__('Create Deal', true));?>
	</div>
	<div class="grid_9">
	<?php echo $this->Html->link('Create Venue',
					array('controller' => 'merchants', 'action' => 'create_venue'));?>

	</div>
</div><!-- layout_left -->
