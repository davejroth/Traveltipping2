
<div id="layout_left" class="grid_22">
	<h2 class="page_title">Create Your Account </h2>
	
	<?php echo $this->Form->create('Traveler'); ?>
	
	<div class="grid_10 prefix_1 suffix_1">
	<h3>Enter Details Below</h3>
	<?php
		
        echo $this->Form->input('first_name', array('label'=>'First Name:'));
        echo $this->Form->input('last_name', array('label'=>'Last Name:'));
        echo $this->Form->input('User.email', array('label'=>'Email Address:'));
		echo $this->Form->input('User.password', array('label'=>'Password:','value'=>""));
		echo $this->Form->input('User.confirm_password', array('label'=>'Confirm Password:','value'=>"", 'type' =>'password'));
    ?>
	
	</div>
 
<?php echo $this->Form->end(array('value'=>'','class'=>'update_account_btn')); ?>
	
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
<?php echo $this->element('manage_account'); ?>

</div><!-- #layout_right -->
