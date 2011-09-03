<?php //debug($purchases); 
?>

<div id="layout_left" class="merchant_deals grid_22">
	<div class="blue_rounded_mod clearfix">
	<ul class="deal_nav">
	<?php 
	echo '<li>' . $this->Html->link('Upcoming Deals',array('controller'=>'travelers', 'action'=>'deals', 'upcoming'),array( 'alt'=>'Upcoming Deals')) . '</li>';
	echo '<li>' . $this->Html->link('Past Deals',array('controller'=>'travelers', 'action'=>'deals', 'past'),array( 'alt'=>'Past Deals')) . '</li>';
		?>		
	</ul>	
	</div>

	
<?php
foreach ($purchases as $purchase):

?>

<div id="purchase_<?php echo $purchase['DealPurchase']['id']?>"  class="white_mod_694_wrap deal_listing">
	<div class="white_mod_694_top"></div>
	<div class="white_mod_694_content clearfix">
		<?php echo $this->Html->image($purchase['Deal']['image1'], array('class'=>'grid_3','alt' => 'Featured Deal Image'));
			  echo "<a class = grid_3 href = //" . $purchase['Deal']['Venue']['website'] . ">" . $purchase['Deal']['Venue']['website'] ."</a>"?>
		<div class="grid_14 push_1">
			<h3 class="listing_desination_title"><?php echo $purchase['Deal']['destination'] ?></h3>
			<p id="traveler_reservation_details"><?php echo __('Reservation Details: '); echo "<br>";
				echo __('Departure Date: ').date_format(date_create($purchase['DealPurchase']['start_date']), ' F j, Y'); echo "<br>";
				echo __('Return Date: ').date_format(date_create($purchase['DealPurchase']['end_date']), ' F j, Y');; ?></p>
			<p id="traveler_destination_details"><?php echo __('Destination Details '); echo "<br>";
				echo __('Company: ').$purchase['Deal']['Venue']['name']; echo "<br>";
				echo __('Address: ').$purchase['Deal']['Venue']['address1']; echo "<br>";
				echo $purchase['Deal']['Venue']['city'] . ", " . $purchase['Deal']['Venue']['state'] . " " . $purchase['Deal']['Venue']['postal_code']; echo "<br>";
				echo $purchase['Deal']['Venue']['Country']['name']; ?></p>
		</div>

		
	</div>

</div>
			<?php
		echo $this->Html->link('View Page', array('controller' => 'deals', 'action' => 'view', $purchase['Deal']['id']));
		echo __('Purchase Price: ') .'$'. $purchase['DealPurchase']['purchase_amount'];
		echo __('Purchase Date: ').date_format(date_create($purchase['DealPurchase']['created']), ' F j, Y');; ?>
<?php endforeach; ?>
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
<?php   if($purchaseStatus == "upcoming") {
			echo $this->element('upcoming_deals');
		  }
		else {
			echo $this->element('traveler_past_deals');
		}?>

</div><!-- #layout_right -->
