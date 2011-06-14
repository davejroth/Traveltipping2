<div id="layout_left" class="grid_22">
	<h2 class="page_title">Account Details </h2>
	
	<?php echo $this->Form->create(); ?>
	
	<div class="grid_10">
	<h3>Business Details</h3>
	<?php
		// Data Variables
		$business_name = $merchant['Merchant']['business_name'];
		$address = $merchant['Merchant']['address'];
		$address2 = $merchant['Merchant']['second_address'];
		$city = $merchant['Merchant']['city'];
		$state = "";//$merchant['State']['name'];
		$postal_code = $merchant['Merchant']['postal_code'];
		//$country = $merchant['Country']['name'];
		$website = $merchant['Merchant']['website'];
		$user_name = $merchant['User']['name'];
		
        echo $this->Form->input('business_name', array('label'=>'Corporate Business Name:',"value"=>"$business_name")); 
        echo $this->Form->input('address', array('label'=>'Address 1:',"value"=>"$address")); 
        echo $this->Form->input('second_address', array('label'=>'Address 2:',"value"=>"$address2"));
        echo $this->Form->input('city', array('label'=>'City:',"value"=>"$city"));
        echo $this->Form->input('state', array('label'=>'State:',"value"=>"$state"));
        echo $this->Form->input('postal_code', array('label'=>'Postal Code:',"value"=>"$postal_code"));
        //echo $this->Form->input('country', array('label'=>'Country:',"value"=>"$country"));
        echo $this->Form->input('website', array('label'=>'Website:',"value"=>"$website"));
    ?>
	
	</div>
	
	<div class="grid_9"> 
		<h3>Contact Details</h3>	
	<?php
		
        echo $this->Form->input('name', array('label'=>'Name:',"value"=>"$user_name")); 
        echo $this->Form->input('address', array('label'=>'Address 1:',"value"=>"$address")); 
        echo $this->Form->input('second_address', array('label'=>'Address 2:',"value"=>"$address2"));
        echo $this->Form->input('city', array('label'=>'City:',"value"=>"$city"));
        echo $this->Form->input('state', array('label'=>'State:',"value"=>"$state"));
        echo $this->Form->input('postal_code', array('label'=>'Postal Code:',"value"=>"$postal_code"));
        //echo $this->Form->input('country', array('label'=>'Country:',"value"=>"$country"));
        echo $this->Form->input('website', array('label'=>'Website:',"value"=>"$website"));
    ?>
	</div>
	
 
    
 
<?php echo $this->Form->end('Submit'); ?>
	
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">

</div><!-- #layout_right -->
