<div id="layout_left" class="grid_22">
	<div class="blue_rounded_mod clearfix">
	
	</div>

<table>
	<tr> 
		<th><?php echo $this->Paginator->sort('First Name', 'Traveler.first_name'); ?></th> 
		<th><?php echo $this->Paginator->sort('Last Name', 'Traveler.last_name'); ?></th> 
		<th><?php echo $this->Paginator->sort('Amount Paid', 'Deal.discounted_price'); ?></th>
		<th><?php echo $this->Paginator->sort('Nights', 'nights'); ?></th> 		
		<th><?php echo $this->Paginator->sort('Check-In', 'start_date'); ?></th>
		<th><?php echo $this->Paginator->sort('Check-Out', 'end_date'); ?></th> 
	</tr> 
	   <?php foreach($reservations as $reservation): ?> 
	<tr> 
		<td><?php echo $reservation['Traveler']['first_name']; ?> </td> 
		<td><?php echo $reservation['Traveler']['last_name']; ?> </td> 
		<td><?php echo $reservation['Deal']['discounted_price']; ?> </td> 
		<td><?php echo $reservation['DealPurchase']['nights']; ?> </td> 
		<td><?php echo $reservation['DealPurchase']['start_date']; ?> </td> 
		<td><?php echo $reservation['DealPurchase']['end_date']; ?> </td> 
	</tr> 
	<?php endforeach; 
	//debug ($reservations);?> 
</table> 


</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('Manage_Reservations'); ?>
<div>


</div><!-- #layout_right -->
