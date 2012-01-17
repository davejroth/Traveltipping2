<div id="layout_left" class="merchant_deals grid_22">
	<div id="traveler_menu" class="blue_rounded_mod clearfix">
	<ul class="deal_nav">
	<?php 
		if($this->params['pass'][0] == 'upcoming' ){
			echo '<li class="active">' . $this->Html->link('Upcoming Trips',array('controller'=>'travelers', 'action'=>'my_deals', 'upcoming'),array( 'alt'=>'Upcoming Deals')) . '<span></span></li>';
			echo '<li>' . $this->Html->link('Past Trips',array('controller'=>'travelers', 'action'=>'my_deals', 'past'),array( 'alt'=>'Past Deals')) . '<span></span></li>';
		}
		else if($this->params['pass'][0] == 'past'){
			echo '<li>' . $this->Html->link('Upcoming Trips',array('controller'=>'travelers', 'action'=>'my_deals', 'upcoming'),array( 'alt'=>'Upcoming Deals')) . '<span></span></li>';
			echo '<li class="active">' . $this->Html->link('Past Trips',array('controller'=>'travelers', 'action'=>'my_deals', 'past'),array( 'alt'=>'Past Deals')) . '<span></span></li>';
		}
	?>		
	</ul>	
	</div>

	
<?php
if(empty($purchases)) {
	echo '<div class="no_deal_message"><p class="sub_heading">You have no trips!</p></div>';
}

else{

foreach ($purchases as $purchase):
?>

<div id="purchase_<?php echo $purchase['DealPurchase']['id']?>"  class="traveler_purchase white_mod_694_wrap">
	<div class="white_mod_694_top"></div>
	<div class="white_mod_694_content clearfix">
		<div class="deal_img_section">
		<?php 
			echo $this->Html->image($purchase['Deal']['image1'], array('class'=>'grid_5','alt' => 'Featured Deal Image'));
		?>
		</div>
		<div class="traveler_destination_details">
			<h3 class="listing_desination_title"><?php echo $purchase['Deal']['destination'] ?><?php echo $this->Html->link('View Deal &raquo;', array('controller' => 'deals', 'action' => 'view', $purchase['Deal']['id']),array('escape' => false)); ?></h3>
			<div>
				<p><?php echo __('Reservation Details: ');?></p>
				<dl class="clearfix grid_8">
				<?php echo __('<dt>Departure Date:</dt>');
					echo '<dd>'.date_format(date_create($purchase['DealPurchase']['start_date']), ' F j, Y').'</dd>';

					echo __('<dt>Return Date:</dt>');
					echo '<dd>'.date_format(date_create($purchase['DealPurchase']['end_date']), ' F j, Y').'</dd>'; 
					echo __('<dt>Price Paid:</dt>');
					echo '<dd>$'.$purchase['DealPurchase']['purchase_amount'].'</dd>'; 
					//echo __('<dt>Purchase Date:</dt>');
					//echo '<dd>'.date_format(date_create($purchase['DealPurchase']['created']), ' F j, Y').'</dd>'; 
					?>
				</dl>
			</div>
			<div class="destination_details">
				<p><?php echo __('Destination Details')?></p>
				<dl class="clearfix grid_8">
				<?php echo __('<dt>Company:</dt><dd>').$purchase['Deal']['Venue']['name']; 
					echo '</dd>';
					echo __('<dt>Address:</dt><dd>').$purchase['Deal']['Venue']['address1'].'<br/>'; 
					
					echo $purchase['Deal']['Venue']['city'] . ", " . $purchase['Deal']['Venue']['state'] . " " . $purchase['Deal']['Venue']['postal_code']; echo "<br>";
					echo $purchase['Deal']['Venue']['Country']['name']; 
					echo '</dd>';
					?>
				</dl>
			</div>

			
		</div>

		

		
	</div>

</div>

<?php endforeach; }?>


</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
<?php   if($purchaseStatus == "upcoming") {
			echo $this->element('travelers_upcoming_deals');
		  }
		else {
			echo $this->element('traveler_past_deals');
		}?>

</div><!-- #layout_right -->

<script type="text/javascript"> 
$(document).ready(function() {
	

});
</script>