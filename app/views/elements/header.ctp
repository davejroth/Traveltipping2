			<div id="header" class="container_30">
				<h1 class="logo grid_10"><?php echo $this->Html->link('', '/',array( 'alt'=>'TravelTipping')); ?></h1>
				<div class="grid_20 alpha omega">
					<div class="social_media">
						<?php echo $this->Html->link('', 'http://traveltipping.com',array('class'=>'facebook_ico', 'alt'=>'Like Us on Facebook')); ?>
						<?php echo $this->Html->link('', 'http://traveltipping.com',array('class'=>'twitter_ico', 'alt'=>'Follow Us on Twitter')); ?>
					</div>
					<ul class="main_nav">
					
					<?php 	if(!$this->Session->read('Auth.User')) { //Not logged in
								echo '<li>' . $this->Html->link('How it Works',array('controller'=>'pages', 'action'=>'how-it-works'),array( 'alt'=>'How it Works')) . '</li>';
								echo '<li>' . $this->Html->link('Create an Account', array('controller' => 'travelers', 'action' => 'signup'),array( 'alt'=>'Create an Account')) . '</li>';
								echo '<li>' . $this->Html->link('Login', array('controller' => 'users', 'action' => 'login'),array( 'alt'=>'Login')) . '</li>';
							}
						 
							elseif($this->Session->read('User.role_id') == Configure::Read('Role.Merchant_ID')) { //Merchant is logged in
								echo '<li>' . $this->Html->link('My Deals',array('controller'=>'pages', 'action'=>'how-it-works'),array( 'alt'=>'How it Works')) . '</li>';
								echo '<li>' . $this->Html->link('Account Details', array('controller' => 'merchants', 'action' => 'profile'),array( 'alt'=>'Create an Account')) . '</li>';
								echo '<li>' . $this->Html->link('Logout', array('controller' => 'users', 'action' => 'logout'),array( 'alt'=>'Logout')) . '</li>';
							}
							
							elseif($this->Session->read('User.role_id') == Configure::Read('Role.Traveler_ID')) { //Traveler is logged in
								echo '<li>' . $this->Html->link('My Trips',array('controller'=>'pages', 'action'=>'how-it-works'),array( 'alt'=>'How it Works')) . '</li>';
								echo '<li>' . $this->Html->link('Account Details', array('controller' => 'travelers', 'action' => 'profile'),array( 'alt'=>'Create an Account')) . '</li>';
								echo '<li>' . $this->Html->link('Logout', array('controller' => 'users', 'action' => 'logout'),array( 'alt'=>'Logout')) . '</li>';
							}
				?></ul>
					<div class="subscribe_cta">
						<?php 
							echo $this->Form->create('User',array(
									'inputDefaults' => array(
										'label' => false,
										'div'   => false
									),
									'class'=>'subscribe_form'
								)
							); 
							echo $this->Form->input('email',array('value'=>'enter your email...'));
							echo $this->Form->end('subscribe');
						?>
						<?php echo $this->Html->tag('h3', 'Never Miss an Opportunity to Travel.', array('class' => 'cta_text'));?>
					</div>
				</div>
			</div>