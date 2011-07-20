<?php echo $this->Html->script('jquery');

		$dates = array();
		for ($i = 1; $i<=31; $i++) {
			$dates['2011-6-'. $i] = '2011-6-' . $i;
		} 
?>

<div id="layout_left" class="grid_22">
	<div class="blue_rounded_mod clearfix">
	
	</div>
	
	<?php echo $form->input('dateChosen',array('type'=>'select','options'=>$dates, 'id' => 'dateChosen')); 
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
		$("#dateChosen").change(function() {
			var selectedDate = $(this).val();
			var thisPath = document.location.pathname;
			//We need to pull the id from the pathname to pass it to the reservation_paginate
			//This code assumes that the id of the deal will be the last URL parameter
			var lastSlash = thisPath.lastIndexOf("/") + 1;
			var dealID = thisPath.slice(lastSlash);
			$("#displayDate").html(selectedDate ? dealID : "");
			
			//loadPiece("<?php echo $html->url(array('controller'=>'merchants','action'=>'reservations',1, '2011-06-11'));?>","#reservationList");
			loadPiece("/merchants/reservations/" + dealID +"/" + selectedDate, "#reservationList");
		});
	});
	
	/*
		$(document).ready(function() {
		$("#dateChosen").change(function() {
			var src = $(this).val();
			var thisPath = document.location.pathname;
			//We need to pull the id from the pathname to pass it to the reservation_paginate
			var lastSlash = thisPath.lastIndexOf("/");
			var dealID = lastSlash.slice(lastSlash);
			$("#displayDate").html(src ? dealID : "");
			//loadPiece("<?php echo $html->url(array('controller'=>'merchants','action'=>'reservations',1, '2011-06-11'));?>","#reservationList");
			loadPiece("/merchants/reservations/1/" + src, "#reservationList");
			*/
	

	
    </script> 
<div id="reservationList"> 

</div> 

<div id = "displayDate">
</div>
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('Manage_Reservations'); ?>
<div>


</div><!-- #layout_right -->
