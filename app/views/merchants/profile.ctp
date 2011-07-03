

<div id="layout_left" class="grid_22">
	<h2 class="page_title">Account Profile </h2>
	
	<?php echo $this->Form->create('Merchant'); ?>
	
	<div class="grid_10 prefix_1 suffix_1">
	<h3>Business Information</h3>

<?php
  echo $this->Form->input('Merchant.business_name', array('label'=>'Corporate Business Name:'));
  echo $this->Form->input('Merchant.business_type_id', array('label'=>'Select Your Primary Business Type:')); 
  echo $this->Form->input('Merchant.address', array('label'=>'Address 1:')); 
  echo $this->Form->input('Merchant.second_address', array('label'=>'Address 2:'));
  echo $this->Form->input('Merchant.city', array('label'=>'City:'));
  echo $this->Form->input('Merchant.state', array('label'=>'State:'));
  echo $this->Form->input('Merchant.postal_code', array('label'=>'Postal Code:'));
  echo $this->Form->input('Merchant.country', array('label'=>'Country:'));
  echo $this->Form->input('Merchant.website', array('label'=>'Website:'));
?>

	</div>
	
	<div class="grid_9"> 
		<h3>Contact Information</h3>	
	<?php
		

        echo $this->Form->input('Merchant.first_name', array('label'=>'First Name:')); 
        echo $this->Form->input('Merchant.last_name', array('label'=>'Last Name:'));
        echo $this->Form->input('Merchant.phone', array('label'=>'Phone:')); 
        echo $this->Form->input('User.email', array('label'=>'Email:'));
  ?>    
    
	</div>

<?php echo $this->Form->end(array('value'=>'','class'=>'update_account_btn')); ?>
	
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
<?php echo $this->element('manage_account'); ?>

</div><!-- #layout_right -->
