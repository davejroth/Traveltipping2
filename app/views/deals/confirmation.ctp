
<div id="layout_left" class="grid_22 confirmation_page">
	<h2 class="page_title">Purchase Completed!</h2>
	<?php
	echo '<div class="deal_summary clearfix">';
		echo $this->Html->image($deal['Deal']['image1'], array('class'=>'grid_3','alt' => 'Featured Deal Image'));
		echo '<p class="grid_14 title">'.$deal['Deal']['title'].'</p>';  
		echo '<p class="grid_5 price">Amount Paid: $'.$deal['Deal']['cost'].'</p>';
		echo '</div>';
	?>
	
<div id="reservation_details">
	<p class="sub_heading">Reservation Details</p>
	<dl class="table_list">
<?php 
	echo '<dt>Departure Date:</dt><dd>'.date_format(date_create($reservation['trip_start_date']), 'l, F jS, Y').'</dd>';
	echo '<dt>Return Date:</dt><dd>'.date_format(date_create($reservation['trip_end_date']), 'l, F jS, Y').'</dd>';
?>
</dl>
</div>

<div id="destination_details">
		<p class="sub_heading">Reservation Details</p>
	<dl class="table_list">
<?php 
	  echo '<dt>Company:</dt><dd>'.$deal['Venue']['name'].'</dd>';
	  echo '<dt>Address:</dt><dd>'.$deal['Venue']['address1'].'<br/>'.$deal['Venue']['city'].', '.$deal['Venue']['state'].' '.$deal['Venue']['postal_code'].'</dd>';
	  echo '<dt>Email:</dt><dd>'.$deal['Venue']['email'].'</dd>';
	  if($deal['Venue']['website']) {
			echo '<dt>Website:</dt><dd><a href="http://'.$deal['Venue']['website'].'">'.$deal['Venue']['website'].'</a></dd>';
	  }?>
	</dl>
</div>

</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('book_reservation'); ?>
<div>


</div><!-- #layout_right -->
