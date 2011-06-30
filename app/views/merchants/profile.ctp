

<div id="layout_left" class="grid_22">
	<h2 class="page_title">Account Details </h2>
	
	<?php echo $this->Form->create('Merchant'); ?>
	
	<div class="grid_10 prefix_1 suffix_1">
	<h3>Business Details</h3>
	<?php
		// Data Variables
		$business_name = $merchant['Merchant']['business_name'];
		$business_type = $merchant['Merchant']['business_type_id'];
		$address = $merchant['Merchant']['address'];
		$address2 = $merchant['Merchant']['second_address'];
		$city = $merchant['Merchant']['city'];
		$state = "";//$merchant['State']['name'];
		$postal_code = $merchant['Merchant']['postal_code'];
		$country = $merchant['Country']['name'];
		$website = $merchant['Merchant']['website'];
		$user_name = $merchant['User']['name'];
		$first_name = $merchant['Merchant']['first_name'];
		$last_name = $merchant['Merchant']['last_name'];
		$phone = $merchant['Merchant']['phone'];
		$email = $merchant['User']['email'];
		
		echo $this->Form->input('id');
		echo $this->Form->input('User.id');
		
        echo $this->Form->input('business_name', array('label'=>'Corporate Business Name:',"value"=>"$business_name"));
        echo $this->Form->input('Merchant.business_type_id', array('label'=>'Select Your Primary Business Type:',"value"=>"$business_type")); 
        echo $this->Form->input('address', array('label'=>'Address 1:',"value"=>"$address")); 
        echo $this->Form->input('second_address', array('label'=>'Address 2:',"value"=>"$address2"));
        echo $this->Form->input('city', array('label'=>'City:',"value"=>"$city"));
        echo $this->Form->input('state', array('label'=>'State:',"value"=>"$state"));
        echo $this->Form->input('postal_code', array('label'=>'Postal Code:',"value"=>"$postal_code"));
        echo $this->Form->input('country', array('label'=>'Country:',"value"=>"$country"));
        echo $this->Form->input('website', array('label'=>'Website:',"value"=>"$website"));
    ?>
	
	</div>
	
	<div class="grid_9"> 
		<h3>Contact Details</h3>	
	<?php
		
        echo $this->Form->input('first_name', array('label'=>'First Name:',"value"=>"$first_name")); 
        echo $this->Form->input('last_name', array('label'=>'Last Name:',"value"=>"$last_name"));
        echo $this->Form->input('phone', array('label'=>'Phone:',"value"=>"$phone")); 
        echo $this->Form->input('User.email', array('label'=>'Email:',"value"=>"$email"));
        echo $this->Form->input('new_password', array('label'=>'New Password:',"value"=>""));
        echo $this->Form->input('confirm_password', array('label'=>'Confirm New Password:',"value"=>"")); 
        
    ?>
	</div>
	
 
    
 
<?php echo $this->Form->end(array('value'=>'','class'=>'update_account_btn')); ?>
	
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
<?php echo $this->element('manage_account'); ?>

</div><!-- #layout_right -->
