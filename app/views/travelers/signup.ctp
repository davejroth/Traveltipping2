<div class="white_mod_960_wrap">
	<div class="white_mod_960_top"></div>
	<div class="white_mod_960_content">	
	<h2 class="page_title">Create Your Account </h2>
	<div class="page_content">

	<?php echo $this->Form->create('Traveler', array('class' => 'clearfix')); ?>
			<h3>Enter Details Below</h3>
	
		
			<?php
				echo '<div class="sign_up_fields">';
		        echo $this->Form->input('first_name', array('label'=>'First Name:'));
		        echo $this->Form->input('last_name', array('label'=>'Last Name:'));
		        echo $this->Form->input('User.email', array('label'=>'Email Address:'));
				echo $this->Form->input('User.password', array('label'=>'Password:','value'=>""));
				echo $this->Form->input('User.confirm_password', array('label'=>'Confirm Password:','value'=>"", 'type' =>'password'));
		    	echo $this->Html->link('Login with an existing account',array('controller' => 'users', 'action' => 'login'));
		    	echo '</div>';
		    ?>



	<?php echo $this->Form->end(array('value'=>'','class'=>'create_account_btn')); ?>
		</div>
</div>
</div>


