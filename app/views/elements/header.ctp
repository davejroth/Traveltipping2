			<div id="header" class="container_30">
				<h1 class="logo grid_10"><?php echo $this->Html->link('', '/',array( 'title'=>'TravelTipping')); ?></h1>
				<div class="grid_20 alpha omega">
					<div class="social_media">
						<?php echo $this->Html->link('', 'http://www.facebook.com/traveltipping',array('class'=>'facebook_ico', 'title'=>'Like Us on Facebook','target' => '_blank')); ?>
						<?php echo $this->Html->link('', 'http://twitter.com/travel_tipping',array('class'=>'twitter_ico', 'title'=>'Follow Us on Twitter','target' => '_blank')); ?>
					</div>
					<ul class="main_nav">

			<?php 	
			if(!$this->Session->read('Auth.User')) { //Not logged in
							echo '<li>' . $this->Html->link('How it Works',array('controller'=>'pages', 'action'=>'display', 'static'=> 'how-it-works'),array( 'title'=>'How it Works')) . '</li>';
							echo '<li>' . $this->Html->link('Create an Account', array('controller' => 'travelers', 'action' => 'signup'),array( 'title'=>'Create an Account')) . '</li>';
							echo '<li>' . $this->Html->link('Login', array('controller' => 'users', 'action' => 'login', 'admin' => 0),array( 'title'=>'Login')) . '</li>';
						}
					 
						elseif($this->Session->read('Auth.User.role_id') == Configure::Read('Role.Merchant_ID')) { //Merchant is logged in
							echo '<li>' . $this->Html->link('My Deals',array('controller'=>'merchants', 'action'=>'my_deals', '/upcoming'),array( 'title'=>'My Deals')) . '</li>';
							echo '<li>' . $this->Html->link('Account Details', array('controller' => 'merchants', 'action' => 'profile'),array( 'title'=>'Create an Account')) . '</li>';
							echo '<li>' . $this->Html->link('Logout', array('controller' => 'users', 'action' => 'logout'),array( 'title'=>'Logout')) . '</li>';
						}
						
						elseif($this->Session->read('Auth.User.role_id') == Configure::Read('Role.Traveler_ID')) { //Traveler is logged in
							echo '<li>' . $this->Html->link('My Trips',array('controller'=>'travelers', 'action'=>'my_deals', 'upcoming'),array( 'title'=>'How it Works')) . '</li>';
							echo '<li>' . $this->Html->link('Account Details', array('controller' => 'travelers', 'action' => 'profile'),array( 'title'=>'Create an Account')) . '</li>';
							echo '<li>' . $this->Html->link('Logout', array('controller' => 'users', 'action' => 'logout'),array( 'title'=>'Logout')) . '</li>';
						}
						elseif($this->Session->read('Auth.User.role_id') == Configure::Read('Role.Admin_ID')) { //Admin is logged in
							echo '<li>' . $this->Html->link('Manage Deals', array('controller' => 'deals', 'action' => 'admin_index', 'admin' => 1),array( 'title'=>'Manage Deals')) . '</li>';
							echo '<li>' . $this->Html->link('Logout', array('controller' => 'users', 'action' => 'logout', 'admin' => 0),array( 'title'=>'Logout')) . '</li>';
						}
						?></ul>
					<div class="subscribe_cta">

						<?php echo $this->Html->tag('h3', 'Get up to <span>75%</span> off travel deals in', array('class' => 'cta_text'));?>
						<table id="table" cellspacing="0" cellpadding="0" border="0">
    <tr>
        <td colspan="8"><div class="numbers" id="count2" style="text-align: center;"></div></td>
    </tr>
    <tr>
        <td align="right"><div class="numbers" id="dday"></div></td>        
        <td align="left"><div class="table-title" id="days">Days</div></td>
        <td align="right"><div class="numbers" id="dhour"></div></td>
        <td align="left"><div class="table-title" id="hours">Hours</div></td>
        <td align="right"><div class="numbers" id="dmin"></div></td>
        <td align="left"><div class="table-title" id="minutes">Minutes</div></td>
      
      
    </tr>
</table>

					</div>
				</div>
			</div>