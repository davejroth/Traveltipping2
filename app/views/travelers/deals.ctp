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

<div id="purchase_<?php echo $purchase['DealPurchase']['id']?>"  class="white_mod_694_wrap">
	<div class="white_mod_694_top"></div>
	<div class="white_mod_694_content clearfix">
		<div class="deal_img_section grid_8 alpha omega">
		<?php 
			echo $this->Html->image($purchase['Deal']['image1'], array('class'=>'grid_3','alt' => 'Featured Deal Image'));
			echo $this->Html->link($purchase['Deal']['Venue']['website'],'http://'.$purchase['Deal']['Venue']['website'],array('class' => 'grid_6'));
		?>
		</div>
		<div class="grid_13 traveler_destination_details">
			<h3 class="listing_desination_title"><?php echo $purchase['Deal']['destination'] ?></h3>
			<p><?php echo __('Reservation Details: ');?></p>
			<p><?php echo __("<span>Departure Date: </span>");
				echo date_format(date_create($purchase['DealPurchase']['start_date']), ' F j, Y');
				echo "<br/>";
				?>
				<?php 
				echo __('<span>Return Date:</span>');
				echo date_format(date_create($purchase['DealPurchase']['end_date']), ' F j, Y');; 
				?>
			</p>
			
			<p><?php echo __('Destination Details ');
				echo __('Company: ').$purchase['Deal']['Venue']['name']; echo "<br>";
				echo __('Address: ').$purchase['Deal']['Venue']['address1']; echo "<br>";
				echo $purchase['Deal']['Venue']['city'] . ", " . $purchase['Deal']['Venue']['state'] . " " . $purchase['Deal']['Venue']['postal_code']; echo "<br>";
				echo $purchase['Deal']['Venue']['Country']['name']; ?>
			</p>
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
