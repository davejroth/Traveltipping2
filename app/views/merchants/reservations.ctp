<div id="layout_left" class="grid_22">
	<div class="blue_rounded_mod clearfix">
	
	</div>
<?php if($deal['Deal']['reservation_type_id'] != 3) { //Print page for deal type 1 and 2?>
<table>
	<tr> 
		<th><?php echo "#"; ?></th> 
		<th><?php echo $this->Paginator->sort('First Name', 'Traveler.first_name'); ?></th> 
		<th><?php echo $this->Paginator->sort('Last Name', 'Traveler.last_name'); ?></th> 
		<th><?php echo $this->Paginator->sort('Amount Paid', 'Deal.discounted_price'); ?></th>
		<th><?php echo $this->Paginator->sort('Nights', 'nights'); //This field is a virtual field?></th> 		
		<th><?php echo $this->Paginator->sort('Check-In', 'start_date'); ?></th>
		<th><?php echo $this->Paginator->sort('Check-Out', 'end_date'); ?></th> 
	</tr> 
	   <?php $count = 1;
			foreach($reservations as $reservation): ?> 
	<tr> 
		<td><?php echo $count; $count++;?> </td> 
		<td><?php echo $reservation['Traveler']['first_name']; ?> </td> 
		<td><?php echo $reservation['Traveler']['last_name']; ?> </td> 
		<td><?php echo "$" . $reservation['Deal']['discounted_price']; ?> </td> 
		<td><?php echo $reservation['DealPurchase']['nights']; ?> </td> 
		<td><?php echo date_format(date_create($reservation['DealPurchase']['start_date']), 'l, F jS, Y'); ?> </td>
		<td><?php echo date_format(date_create($reservation['DealPurchase']['end_date']), 'l, F jS, Y'); ?> </td> 
	</tr> 
	<?php endforeach; //debug($reservation);?> 
</table> 

<?php } elseif($deal['Deal']['reservation_type_id'] == 3) { ?>
<table>
	<tr> 
		<th><?php echo $this->Paginator->sort('First Name', 'Passenger.first_name'); ?></th> 
		<th><?php echo $this->Paginator->sort('Last Name', 'Passenger.last_name'); ?></th> 
		<th><?php echo $this->Paginator->sort('Birth Date', 'Passenger.birthday'); ?></th>
		<th><?php echo $this->Paginator->sort('Age', 'Passenger.birthday'); ?></th> 		
		<th><?php echo $this->Paginator->sort('Citizenship', 'Passenger.country_id'); ?></th>
		<th><?php echo $this->Paginator->sort('Departure Date', 'DealPurchase.start_date'); ?></th> 
	</tr> 
	   <?php foreach($reservations as $reservation): 
				?> 
	<tr> 
		<td><?php echo $reservation['Passenger']['first_name']; ?> </td> 
		<td><?php echo $reservation['Passenger']['last_name']; ?> </td> 
		<td><?php echo date_format(date_create($reservation['Passenger']['birthday']), 'd-M-Y'); ?> </td> 
		<td><?php echo $reservation['Passenger']['age']; ?> </td> 
		<td><?php echo $reservation['Country']['name']; ?> </td> 
		<td><?php echo date_format(date_create($reservation['Passenger']['birthday']), 'l, F jS, Y'); ?> </td> 
	</tr> 
	<?php endforeach; //debug($reservation);
	} //End DealType 3?> 
</table>

<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page %page% of %pages%, showing %current% records out of %count% total, starting on record %start%, ending on %end%', true)
	));
	?>	</p>
<?php echo $this->Paginator->prev('<< ', array(), null, array('class'=>'disabled'));?>
<!-- Shows the page numbers --><?php echo $this->Paginator->numbers(); ?>
<!-- Shows the next and previous links -->
<?php echo $this->Paginator->next(' >>', array(), null, array('class' => 'disabled'));?>

</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('Manage_Reservations'); ?>
<div>


</div><!-- #layout_right -->
