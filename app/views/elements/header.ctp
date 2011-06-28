			<div id="header" class="container_30">
				<h1 class="logo grid_10"><?php echo $this->Html->link('', '/',array( 'alt'=>'TravelTipping')); ?></h1>
				<div class="grid_20 alpha omega">
					<div class="social_media">
						<?php echo $this->Html->link('', 'http://traveltipping.com',array('class'=>'facebook_ico', 'alt'=>'Like Us on Facebook')); ?>
						<?php echo $this->Html->link('', 'http://traveltipping.com',array('class'=>'twitter_ico', 'alt'=>'Follow Us on Twitter')); ?>
					</div>
					<ul class="main_nav">
					<li><?php echo $this->Html->link('How it Works',array('controller'=>'pages', 'action'=>'how-it-works'),array( 'alt'=>'How it Works')); ?></li>
					<li><?php echo $this->Html->link('Create an Account', 'http://traveltipping.com',array( 'alt'=>'Create an Account')); ?></li>
					<li><?php echo $this->Html->link('Login', 'http://traveltipping.com',array( 'alt'=>'Login')); ?></li>
					</ul>
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