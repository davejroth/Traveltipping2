

<div id="layout_left" class="grid_22">
	<h2 class="page_title">Create your account to start advertising </h2>
	
	<?php echo $this->Form->create('Merchant'); ?>
	
	<div class="grid_10 prefix_1 suffix_1">
	<h3>Business Details</h3>
	<?php

		echo $this->Form->input('Merchant.business_name');
		echo $this->Form->input('Merchant.business_type_id');
		echo $this->Form->input('Merchant.address');
		echo $this->Form->input('Merchant.second_address');
		echo $this->Form->input('Merchant.city');
		echo $this->Form->input('Merchant.state', array('label' => 'State / Province'));
		echo $this->Form->input('Merchant.postal_code');
		echo $this->Form->input('Merchant.country_id');
		echo $this->Form->input('Merchant.website');
   ?>
	
	</div>
	
	<div class="grid_9"> 
		<h3>Contact Details</h3>	
	<?php
		echo $this->Form->input('Merchant.first_name');
		echo $this->Form->input('Merchant.last_name');
		echo $this->Form->input('User.email', array('label' => 'Email - Username'));
		echo $this->Form->input('Merchant.phone');
		echo $this->Form->input('User.password', array('value' => ''));
		echo $this->Form->input('User.confirm_password',array('type' => 'password'));
    ?>
	</div>
	
 
    
 
<?php echo $this->Form->end(array('value'=>'','class'=>'create_merchant_account_btn')); ?>
	
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
<?php echo $this->element('create_merchant_account'); ?>

</div><!-- #layout_right -->