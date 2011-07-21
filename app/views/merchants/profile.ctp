

<div id="layout_left" class="grid_22">
	<h2 class="page_title">Account Details </h2>
	
	<?php echo $this->Form->create('Merchant'); ?>
	
	<div class="grid_10 prefix_1 suffix_1">
	<h3>Business Details</h3>
	<?php
        echo $this->Form->input('business_name');
        echo $this->Form->input('Merchant.business_type_id'); 
        echo $this->Form->input('address'); 
        echo $this->Form->input('second_address');
        echo $this->Form->input('city');
        echo $this->Form->input('state');
        echo $this->Form->input('postal_code');
        echo $this->Form->input('country');
        echo $this->Form->input('website');
    ?>
	
	</div>
	
	<div class="grid_9"> 
		<h3>Contact Details</h3>	
	<?php
		
        echo $this->Form->input('Merchant.first_name'); 
        echo $this->Form->input('last_name');
        echo $this->Form->input('phone'); 
        echo $this->Form->input('User.email');
		echo $this->Html->link(__('Change password', true), '/users/editPassword');
       // echo $this->Form->input('User.password', array('label'=>'New Password:',"value"=>""));
        //echo $this->Form->input('User.password2', array('label'=>'Confirm New Password:',"value"=>"", 'type' => 'password')); 
        
    ?>
	</div>
	
 
    
 
<?php echo $this->Form->end(array('value'=>'','class'=>'update_account_btn')); ?>
	
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
<?php echo $this->element('manage_account'); ?>

</div><!-- #layout_right -->
