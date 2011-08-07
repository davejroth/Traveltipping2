
<div id="layout_left" class="grid_22">
	<h2 class="page_title">Purchase Completed!</h2>
<div id="deal_info">
<?php echo $deal['Deal']['title'];
	  echo "<br>";
	  echo $deal['Deal']['cost'];
	  ?>
</div>
<div id="destination_details">
<?php 
	  echo "Company:" . $deal['Venue']['name'];
	  echo "<br>";
	  echo "Address:" . $deal['Venue']['address1'];
	  echo "<br>";
	  echo "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" . $deal['Venue']['city'] . ", " . $deal['Venue']['state'] . " " . $deal['Venue']['postal_code'];
	  echo "<br>";
	  echo "Email:" . $deal['Venue']['email'];
	  if($deal['Venue']['website']) {
		echo "<br>";
		echo "Website:" . $deal['Venue']['website'];
	  }?>
</div>
<div id="reservation_details">
<?php 
	echo "Departure Date:" . date_format(date_create($reservation['trip_start_date']), 'l, F jS, Y');
	echo "<br>";
	echo "Return Date:" . date_format(date_create($reservation['trip_end_date']), 'l, F jS, Y');
?>
</div>
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('book_reservation'); ?>
<div>


</div><!-- #layout_right -->
