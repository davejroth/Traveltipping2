
<div id="layout_left" class="grid_22">
	
	<h2 class="page_title">Create a New Deal</h2>
	
	<?php echo $this->Form->create('Venue',array('url'=>array('controller'=>'merchants')));?>
	<div class="grid_10 prefix_1 suffix_1">
		<?php 
		
		echo $this->Form->input('Deal.name',array(
		'label'=>'<span>Create a title for you deal</span>(For you reference only)'
		));
		?>
		</div>
		<div class="grid_9"> 
		<?php

			echo $this->Form->input('Venue.id',array(
			'label'=>'<span>Venue you are advertising for</span> (Select from the list or create a new one)',
			'type'=>'select','options'=>$venues)
			); 
		?>
		</div>
	<?php echo $this->Form->end(array('value'=>'','class'=>'create_deal_btn')); ?>

	
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
<?php echo $this->element('manage_account'); ?>

</div><!-- #layout_right -->