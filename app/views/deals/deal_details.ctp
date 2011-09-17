<div class="deals view">
		
		<h2 class="page_title">Deal Details</h2>
<div class="deal_label_div">
<?php //print_r($deal);
 echo "<ul class='deal_labels'>";
		echo "<li> <div class='details_title'><span class='deal_bold'>Name of Deal</span></div> <div class='details_info'><span class='deal_bold'>" . $deal['Deal']['name'] . "</li>";
		echo "<li> <div class='details_title'><span class='deal_bold'>Scheduled Release Date</span></div> <div class='details_info'><span class='deal_date'>" . date_format(date_create($deal['Deal']['deal_live']), 'l, F jS, Y') . "</li>";
	  echo "</ul>";
	  
	  echo "<h4 class='deal_details_header'>Business Details </h4>";
	  
	  echo "<ul class='deal_labels'>";
		echo "<li> <div class='details_title'>Business Being Advertised</div> <div class='details_info'>" . $deal['Venue']['name'] . "</li>";
		echo "<li> <div class='details_title'>Regions</div> <div class='details_info'>" . $deal['Deal']['deal_live'] . "</li>";
		echo "<li> <div class='details_title'>Deal Type</div> <div class='details_info'>" . $deal['Deal']['name'] . "</li>";
		echo "<li> <div class='details_title'>Contact Email</div> <div class='details_info'>" . $deal['Venue']['email'] . "</li>";
		echo "<li> <div class='details_title'>Website</div> <div class='details_info'>" . $deal['Venue']['website'] . "</li>";
		echo "<li> <div class='details_title'>Address 1</div> <div class='details_info'>" . $deal['Venue']['address1'] . "</li>";
		echo "<li> <div class='details_title'>Address 2</div> <div><div class='details_info'>" . $deal['Venue']['address2'] . "</div></li>";
		echo "<li> <div class='details_title'>City</div> <div class='details_info'>" . $deal['Venue']['city'] . "</li>";
		echo "<li> <div class='details_title'>State/Province</div> <div class='details_info'>" . $deal['Venue']['state'] . "</li>";
		echo "<li> <div class='details_title'>Postal Code</div> <div class='details_info'>" . $deal['Venue']['postal_code'] . "</li>";
		echo "<li> <div class='details_title'>Country</div> <div class='details_info'>" . $deal['Venue']['Country']['name'] . "</li>";
	  echo "</ul>";
	  
	  echo "<h4 class='deal_details_header'>Purchase Details </h4>";
	  
	  echo "<ul class='deal_labels'>";
		echo "<li> <div class='details_title'>Deal Pricing Type</div> <div class='details_info'>" . $deal['Deal']['reservation_type_id'] . "</li>";
		echo "<li> <div class='details_title'>Deal Maximum</div> <div class='details_info'>" . $deal['Deal']['max_purchases'] . "</li>";
		echo "<li> <div class='details_title'>Time Limit</div> <div class='details_info'>" . $deal['Deal']['max_nights'] . "</li>";
		//echo "<li> <div class='details_title'>Fixed Departure Dates</div> <div class='details_info'>" . $deal['Deal']['deal_live'] . "</li>";
		echo "<li> <div class='details_title'>Price</div> <div class='details_info'>$" . $deal['Deal']['discounted_price'] . "</li>";
		echo "<li> <div class='details_title'>Original Price Value</div> <div class='details_info'>$" . $deal['Deal']['original_price'] . "</li>";
		echo "<li> <div class='details_title'>Discount %</div> <div class='details_info'>" . $deal['Deal']['name'] . "</li>";
		echo "<li> <div class='details_title'>Flat Fee</div> <div class='details_info'>$" . $deal['Deal']['flat_fee'] . "</li>";
		echo "<li> <div class='details_title'>Commission Rate</div> <div class='details_info'>" . $deal['Deal']['comission_percentage'] . "%</li>";
	  echo "</ul>";
	  
	  echo "<h4 class='deal_details_header'>Deal Content</h4>";
	  
	  echo "<ul class='deal_labels'>";
		echo "<li> <div class='details_title'>Destination Title</div> <div class='details_info'>" . $deal['Deal']['destination'] . "</li>";
		echo "<li> <div class='details_title'>Venue Description</div> <div class='details_info'>" . $deal['Deal']['venue_info'] . "</li>";
		echo "<li> <div class='details_title'>Highlights</div> <div class='details_info'>" . $deal['Deal']['highlights'] . "</li>";
		echo "<li> <div class='details_title'>Things To Do</div> <div class='details_info'>" . $deal['Deal']['things_to_do'] . "</li>";
		echo "<li> <div class='details_title'>Getting There</div> <div class='details_info'>" . $deal['Deal']['getting_there'] . "</li>";
		echo "<li> <div class='details_title'>Fine Print</div> <div class='details_info'>" . $deal['Deal']['fine_print'] . "</li>";
		echo "<li> <div class='details_title'>Description Field</div> <div class='details_info'>" . $deal['Deal']['description'] . "</li>";
	  echo "</ul>";
?>
</div>
