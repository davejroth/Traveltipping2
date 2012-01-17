<div id="layout_left" class="grid_22">
	
	<h2 class="page_title">Create a New Deal</h2>

	<?php echo $this->Form->create('Venue',array('url'=>array('controller'=>'merchants')));?>
		<div class="field_column_wrap">
		<?php 
		
			echo '<div class="field_column clearfix">';
				echo $this->Form->input('Deal.name', array('label' => 'Name of your deal <em>(for your reference only)</em>'));
				echo $this->Form->input('Venue.name', array('label' => 'Name of the business being advertised'));
				echo $this->Form->input('Venue.email', array('label' => 'Public contact email for this deal'));
				echo $this->Form->input('Venue.business_type_id', array('label' => 'Business Type for this deal'));
				echo $this->Form->input('Venue.website', array('label' => 'Website for this deal'));
			echo '</div>';
			
			echo '<div class="field_column last_field_column clearfix">';
				echo $this->Form->input('Venue.address1', array('label' => 'Address 1'));
				echo $this->Form->input('Venue.address2', array('label' => 'Address 2'));
				echo $this->Form->input('Venue.city');
				echo $this->Form->input('Venue.state',array('label'=> 'State / Province'));
				echo $this->Form->input('Venue.postal_code');
				echo $this->Form->input('Venue.country_id');

			echo '</div>';
			
		?>
	</div>

	<?php echo $this->Form->end(array('class' => 'create_deal_btn'));?>

</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
<?php echo $this->element('initiate_deal'); ?>

</div><!-- #layout_right -->
