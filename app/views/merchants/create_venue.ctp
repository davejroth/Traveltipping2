<?php //debug($venues)
?>
<div id="layout_left" class="grid_22">
	<?php echo $this->Form->create('Venue',array('url'=>array('controller'=>'merchants','action'=>'create_venue')));?>
	<h2 class="page_title">Create a Venue</h2>
	<div class="grid_10 prefix_1 suffix_1">
		<h3>Create a New Venue</h3>
		<div class="venues form">

			<?php
				echo $this->Form->input('name');
				echo $this->Form->input('email');
				echo $this->Form->input('Venue.business_type_id');
				echo $this->Form->input('website');
			?>

		
		</div>
	</div>
	<div class="grid_9"> 
		<h3>Venue Address</h3>	
	<?php
				echo $this->Form->input('address1');
				echo $this->Form->input('address2');
				echo $this->Form->input('city');
				echo $this->Form->input('state');
				echo $this->Form->input('postal_code');
				echo $this->Form->input('Venue.country_id');
    ?>
	</div>
	
	<?php echo $this->Form->end(array('value'=>'','class'=>'create_deal_btn')); ?>
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
<?php echo $this->element('manage_account'); ?>

</div><!-- #layout_right -->