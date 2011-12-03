<div id="layout_left" class="grid_22">
	<h2 class="page_title">Reservations Fixed Page</h2>
	<?php 
		if(!empty($errors)) {
				echo $errors[array_rand($errors)] . '<br />'; //Both error messages are the same so this picks one.
		}
		echo '<div class="deal_summary clearfix">';
		echo $this->Html->image($deal['Deal']['image1'], array('class'=>'grid_3','alt' => 'Featured Deal Image'));
		echo '<p class="grid_14 title">'.$deal['Deal']['title'].'</p>';  
		echo '<p class="grid_3 price"> $'.$deal['Deal']['discounted_price'].'<span class="span_block">'.$deal['Deal']['max_nights'].' nights</span></p>';
		echo '</div>';
		
		echo $this->Form->create('Deal', array(
		'url' => array('controller' => 'deals', 'action' => 'book',$deal['Deal']['id']),
		'class' => 'clearfix'
		));
		echo $this->Calendar->dealCalendars($deal['Deal']['id']);
		echo '<a class="clear_dates" href="#">'.$this->Html->image('/img/site/clear_dates.png').'</a>';
	?>
	<div class="reservation_info">
		<div><div class="date_legend"></div><p>Check In Date: <span class="check_in"></span></p></div>
		<div><div class="date_legend"></div><p>Check Out Date: <span class="check_out"></span></p></div>
		<p># of Nights: <span class="num_of_nights"></span></p>
	</div>
	<div class="summary_total">Total<span class="summary_total_value"></span></div>
 <input class="resDates" name="data[DealPurchase][start_date]" type="hidden" value="" />
<input class="resDates" name="data[DealPurchase][end_date]" type="hidden" value="" />

<?php echo $this->Form->end(array('class' => 'continue_btn'))?>
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('book_reservation'); ?>

</div><!-- #layout_right -->

<script type="text/javascript">
$(document).ready(function() {
max_nights = null;
discounted_price = null;
reservation_type = null;
deal_expire = null;

	$.ajaxSetup({ cache: false });
	$.ajax({
		url: window.location.pathname, 
		dataType: 'json',
		success: function(data) {
			max_nights = data.Deal.max_nights;
			discounted_price = data.Deal.discounted_price;
			reservation_type = data.Deal.reservation_type_id;
			deal_expire = data.Deal.deal_expire;
		}
	});
});
</script>