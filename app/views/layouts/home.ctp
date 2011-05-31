<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php __('CakePHP: the rapid development php framework:'); ?>
		<?php echo $title_for_layout; ?>
	</title>
	<?php
		echo $this->Html->meta('icon');
		$this->AssetCompress->css(array(
			'reset',
			'layout',
			'default',
			'generic',
			'site',
			'helper'
		));
		$this->AssetCompress->script('jquery');
		$this->AssetCompress->script('site');
		echo $this->AssetCompress->includeAssets('false');
		echo $scripts_for_layout;
	?>
</head>
<body>
	<div id="layout_container">
		<div id="layout_header">
			<div id="header" class="container_30">
				<h1 class="logo grid_10"><?php echo $this->Html->link('', 'http://traveltipping.com',array( 'alt'=>'TravelTipping')); ?></h1>
				<div class="grid_20 alpha omega">
					<div class="social_media">
						<?php echo $this->Html->link('', 'http://traveltipping.com',array('class'=>'facebook_ico', 'alt'=>'Like Us on Facebook')); ?>
						<?php echo $this->Html->link('', 'http://traveltipping.com',array('class'=>'twitter_ico', 'alt'=>'Follow Us on Twitter')); ?>
					</div>
					<ul class="main_nav">
					<li><?php echo $this->Html->link('How it Works', 'http://traveltipping.com',array( 'alt'=>'How it Works')); ?></li>
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
			<div class="clouds"></div>
		</div><!-- #layout_header -->
		<div id="layout_main">
			<div id="layout_center" class="container_30 clearfix">
				<?php echo $this->Session->flash(); ?>
				<div id="layout_content">
					<?php echo $content_for_layout; ?>
				</div><!-- layout_content -->
			</div><!-- #layout_center -->
		</div><!-- #layout_main -->
		<div id="layout_footer">
			<div id="footer1" class="footer container_30">
				<div class="footer_section grid_9">
					<h4 class="footer_section_title">About TravelTipping</h4>
				<p>We provide you the greatest destination deals from around the world, helping satisfy your wanderlust at half the cost. Subscribe today and never miss an opportunity to travel</p>
				</div>
				<div class="footer_section grid_9">
					<h4 class="footer_section_title">About TravelTipping</h4>
				<p>We provide you the greatest destination deals from around the world, helping satisfy your wanderlust at half the cost. Subscribe today and never miss an opportunity to travel</p>
				</div>
				<div class="footer_section grid_9">
					<h4 class="footer_section_title">About TravelTipping</h4>
				<p>We provide you the greatest destination deals from around the world, helping satisfy your wanderlust at half the cost. Subscribe today and never miss an opportunity to travel</p>
				</div>
			</div>
			<div id="footer2" class="footer ">
				<div class="container_30 clearfix ">
					<ul class="footer_nav grid_11">
						<li><a href="#">Partnerships</a></li>
						<li><a href="#">Terms</a></li>
						<li><a href="#">Policies</a></li>
						<li><a href="#">Press</a></li>
						<li><a href="#">Careers</a></li>
						<li class="last_li"><a href="#">Contact</a></li>
					</ul>
					<p class="copyright">&copy;2011 TravelTipping Inc.  All Rights Reserved</p>
				</div>
			</div>
		</div><!-- #layout_footer -->	
	</div><!-- #layout_container -->
</body>
</html>