
<div id="layout_left" class="grid_22">
	<h2 class="page_title">Account Details </h2>
	
	<?php echo $this->Form->create('Traveler'); ?>
	
	<div class="grid_10 prefix_1 suffix_1">
	<h3>Contact Details</h3>
	<?php
		// Data Variables
		//print_r($errors);
		//print_r($this->Traveler->validationErrors);
		$first_name = $traveler['Traveler']['first_name'];
		$last_name = $traveler['Traveler']['last_name'];
		$email = $traveler['User']['email'];
		$id = $traveler['Traveler']['id'];
		
        echo $this->Form->input('first_name', array('label'=>'First Name:','value'=>"$first_name"));
        echo $this->Form->input('Traveler.last_name', array('label'=>'Last Name:','value'=>"$last_name"));
        echo $this->Form->input('User.email', array('label'=>'Email Address:','value'=>"$email"));
		echo $this->Html->link(__('Change password', true), '/users/editPassword');
    ?>
	
	</div>
	
	<div class="grid_9"> 
		<?php
				//echo $this->Form->input('User.password', array('label'=>'New Password:','value'=>""));
				//echo $this->Form->input('User.password2', array('label'=>'Confirm New Password:','value'=>"", 'type' =>'password'));
    ?>
	</div>
	
 
    
 
<?php echo $this->Form->end(array('value'=>'','class'=>'update_account_btn')); ?>
	
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
<?php echo $this->element('manage_account'); ?>

</div><!-- #layout_right -->
