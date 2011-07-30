<?php echo $this->Html->script('jquery');?>

<div id="layout_left" class="grid_22">
	<div class="blue_rounded_mod clearfix">
	
	</div>
	
	<?php 
	//print_r($availableDates);
	//print_r($reservedDates);
	
	echo $form->input('dateChosen',array('type'=>'select','options'=>$dates, 'id' => 'dateChosen')); 
	 ?> 
    <script type="text/javascript"> 
	/** 
 * Loads in a URL into a specified divName, and applies the function to 
 * all the links inside the pagination div of that page (to preserve the ajax-request) 
 * @param string href The URL of the page to load 
 * @param string divName The name of the DOM-element to load the data into 
 * @return boolean False To prevent the links from doing anything on their own. 
 */ 
function loadPiece(href,divName) {     
    $(divName).load(href, {}, function(){ 
        var divPaginationLinks = divName+" #pagination a"; 
        $(divPaginationLinks).click(function() {      
            var thisHref = $(this).attr("href"); 
            loadPiece(thisHref,divName); 
            return false; 
        }); 
    }); 
} 
	$(document).ready(function() {
		var thisPath = document.location.pathname;
		//We need to pull the id from the pathname to pass it to the reservation_paginate
		//This code assumes that the id of the deal will be the last URL parameter
		var lastSlash = thisPath.lastIndexOf("/") + 1;
		var dealID = thisPath.slice(lastSlash);

		loadPiece("/merchants/reservation_paginate/" + dealID, "#reservationList");  //This loads the pagination links before a date is selected
		$("#dateChosen").change(function() {
			var selectedDate = $(this).val();
			//original code - loadPiece("<?php echo $html->url(array('controller'=>'merchants','action'=>'reservations',1, '2011-06-11'));?>","#reservationList");
			loadPiece("/merchants/reservation_paginate/" + dealID +"/" + selectedDate, "#reservationList");
		});
	});
	
    </script> 
<div id="reservationList"> 

</div> 

</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('Manage_Reservations'); ?>
<div>


</div><!-- #layout_right -->
