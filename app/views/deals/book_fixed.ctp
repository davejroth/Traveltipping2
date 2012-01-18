<div id="layout_left" class="grid_22 booking_calendar">
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
		echo '<div class="loader"></div>';
		echo '<div class="clearfix">';
		echo '<p class="unavailable_legend">Unavailable</p>';
		echo '<a class="clear_dates" href="#">'.$this->Html->image('/img/site/clear_dates.png').'</a>';
		echo '</div>';
	?>
	<div class="reservation_info">
		<div><div class="date_legend"></div><p>Check In Date: <span class="check_in"></span></p></div>
		<div><div class="date_legend"></div><p>Check Out Date: <span class="check_out"></span></p></div>
		<p># of Nights: <span class="num_of_nights"></span></p>
	</div>
	<div class="summary_total">Total<span class="summary_total_value"></span></div>
 <input class="resDates" name="data[DealPurchase][start_date]" type="hidden" value="" />
<input class="resDates" name="data[DealPurchase][end_date]" type="hidden" value="" />

<?php
	echo "<div style='float:right;font-weight:bold;' id='book_merchant_logout'>Come back soon to purchase this deal!</div>";
	/*if(!$this->Session->read('Merchant.id')) {
		echo $this->Form->end(array('class' => 'continue_btn'));
	}
	else {
		echo "<div id='book_merchant_logout'>Please sign out of your merchant account in order to continue to the purchase page.</div>";
	} */
?>
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
deal_buffer = 7;
deal_valid = null;
deal_valid_obj = null;

current_date_obj = new Date();
current_date = current_date_obj.toString("yyyy-MM-dd");

	$.ajaxSetup({
		cache: false,
		beforeSend: function() {
			$('.loader').show();
			$('.calendar_wrap').css({'visibility': 'hidden'});
		},
		complete: function(){
			$('.loader').hide();
			$('.calendar_wrap').css({'visibility': 'visible'});
		}
	});
	
	$.ajax({
		url: window.location.pathname, 
		dataType: 'json',
		success: function(data) {
			max_nights = data.Deal.max_nights;
			discounted_price = data.Deal.discounted_price;
			reservation_type = data.Deal.reservation_type_id;
			deal_expire = data.Deal.deal_expire;
			deal_valid = data.Deal.deal_valid;
			
			deal_valid_obj =  Date.parse(deal_valid);
			deal_valid_obj2 =  Date.parse(deal_valid);
			
			month_diff = monthDiff(deal_valid_obj, current_date_obj);
			num_calendar = $('.month_wrap').length;
			
			if(num_calendar == 1){
				$('.calendar_controls').css({'display': 'none'})
			}
			
			/* Check to see if current date is past deal valid date */
			if(current_date_obj.compareTo(deal_valid_obj) == 1){
				
				
				calendar_pos = month_diff * 330;
				$('.calendar_slider').css({
					'left' : -calendar_pos
				});
				
				start_position = -calendar_pos;
				
				for(x = 1; x <= month_diff; x++){
					$('.month_wrap').eq(x-1).css({'visibility': 'hidden'});
				}
				j = 0;
				outside_days = current_date_obj.getDate()
				temp_days = current_date_obj.add(-outside_days).days();	
				
				//initializeCalendar()
				
				while(j < (outside_days + deal_buffer)){
					temp_days = temp_days.add(1).days()
					temp_date = temp_days.toString("yyyy-MM-dd")
					$('#'+temp_date).addClass('outside_range').removeClass('available').removeClass('unavailable')
					temp_days = Date.parse(temp_date);
					j++;
				}
				$('.calendar_wrap').css({'visibility': 'visible'});
			}else{
				$('.calendar_wrap').css({'visibility': 'visible'});
			}
		}
	});
	


});
</script>