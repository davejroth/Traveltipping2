<div id="layout_left" class="grid_22">
	
	<h2 class="page_title">Edit Existing Deal</h2>

<?php echo $this->Form->create('Deal',array('class'=>'add_deal'));?>

	<fieldset>
		<legend><?php __('Merchant Information'); ?></legend>

		<?php debug($this->data);
			echo $thisVenue['Merchant']['business_name'];
			echo $this->Form->input('Deal.id');
			echo $this->Form->input('Venue.id');?>
	</fieldset>
	
	<fieldset>
		<legend><?php __('Venue Information'); ?></legend>
		<?php 
		
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('Venue.name', array('label' => 'Name of the business being advertised'));
				echo $this->Form->input('Venue.address1', array('label' => 'Address 1'));
			echo '</div>';
			
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('Venue.email', array('label' => 'Contact email for this deal'));
				echo $this->Form->input('Venue.address2', array('label' => 'Address 2'));
			echo '</div>';
			
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('Venue.business_type_id', array('label' => 'Business Type for this deal'));
				echo $this->Form->input('Venue.city');
			echo '</div>';
			
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('Venue.website', array('label' => 'Website for this deal'));
				echo $this->Form->input('Venue.state');
			echo '</div>';
			
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('Venue.country_id');
				echo $this->Form->input('Venue.postal_code');
			echo '</div>';
			
		?>
	</fieldset>
	
	<fieldset>

		<legend><?php __('Deal Business Details'); ?></legend>
		<?php	
			
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('original_price');
				echo $this->Form->input('discounted_price');
			echo '</div>';
			
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('comission_percentage');
			echo '</div>';
			
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('deal_live');
				echo $this->Form->input('deal_close');
			echo '</div>';
			
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('deal_valid');
				echo $this->Form->input('deal_expire');
			echo '</div>';
			echo '<div class="field_row clearfix">';
			if(is_null($this->data['Deal']['deal_valid'])) {
					echo "Please save the deal in order to edit the reservation availability";
				}
				else {
					echo $this->Html->link('Edit Max Reservation Availability for this deal', '//deals/editAvailabilities/' . $this->data['Deal']['id']);
				}
			echo '</div>';
			
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('max_purchases');
				echo $this->Form->input('max_nights');
			echo '</div>';
			
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('is_timed',array(
				'type'=>'select',
				'label'=>'Deal Closing Type',
				'options'=>array('1'=>'Timed','0'=>'Quantity')
				));
				echo $this->Form->input('flat_fee');	
			echo '</div>';
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('Deal.average_reservations', array(
					'label' => 'Average Nightly Reservation Limit'
					));
				echo $this->Form->input('purchase_pad');	
			echo '</div>';
		?>
	</fieldset>
	
	<fieldset>
		<legend><?php __('Deal Details'); ?></legend>
		<?php
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('name', array('label' => 'Deal Name (for merchant reference only)'));
				echo $this->Form->input('reservation_type_id');
			echo '</div>';
			
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('title', array('label' => 'Deal Title (displayed publicly)'));
				echo $this->Form->input('slug');
			echo '</div>';
			
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('Region', array('multiple' => 'checkbox', 'class' => 'deal_checkboxes'));
				echo $this->Form->input('Category', array('multiple' => 'checkbox', 'class' => 'deal_checkboxes'));
			echo '</div>';
			
			echo $this->Form->input('description');
			echo $this->Form->input('fine_print');
			echo $this->Form->input('highlights');
			echo $this->Form->input('getting_there');
			echo $this->Form->input('things_to_do');
			echo $this->Form->input('things_to_do2');
			echo $this->Form->input('things_to_do3');
			echo $this->Form->input('things_to_do4');
			echo $this->Form->input('things_to_do5');
			echo $this->Html->link('View Uploaded Pictures', array('controller' => 'attachments', 'action' => 'admin_index', 'admin' => 1),
				array( 'title'=>'View Uploaded Pictures'));
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('image1');
				echo $this->Form->input('image2');
			echo '</div>';
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('image3');
				echo $this->Form->input('image4');
			echo '</div>';
			
			echo '<div class="field_row clearfix">';
				echo $this->Form->input('image5');
				echo $this->Form->input('image6');
			echo '</div>';
			
		?>
	</fieldset>

	<fieldset>
		<legend><?php __('Admin Details'); ?></legend>
		<?php
		echo '<div class="field_row clearfix">';
			echo $this->Form->input('deal_status_id');
		echo '</div>';
			echo $this->Form->input('private_note');
			
		?>
	</fieldset>

<?php echo $this->Form->end(__('Submit', true));?>

</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
<?php echo $this->element('manage_account'); ?>

</div><!-- #layout_right -->

<script type="text/javascript"> 
    tinyMCE.init({ 
        theme : "advanced", 
        mode : "textareas", 
        width:600,
        height:300,
        theme_advanced_toolbar_location : "top", 
        convert_urls : false 
    }); 
</script> 
