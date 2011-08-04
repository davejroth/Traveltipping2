<?php //echo $html->script('prototype');
	  //echo $html->script('scriptaculous'); 
	  echo $this->Html->script('jquery');
	  //echo $this->Html->script('myscripts');
	 
	 ?>

<div id="layout_left" class="grid_22">
	<h2 class="page_title">Summary</h2>
	<?php echo $deal['Deal']['title'];
		  echo "<br>";
		  echo "Check-in:" . date_format(date_create($deal['Deal']['trip_start_date']), 'l, F jS, Y');
		  echo "<br>";
		  echo "Check-out:" . date_format(date_create($deal['Deal']['trip_end_date']), 'l, F jS, Y');
		  echo "<br>";
		  echo "Days:" . $deal['Deal']['days'];
		  echo "<br>";
		  echo "Cost:$" . $deal['Deal']['cost'];
?>

	<h2 class="page_title">Account Info</h2>
	
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
		//json_encode converts the PHP variable to JS.
		if(<?php echo json_encode($this->Session->read('Auth.User')); ?>) {
			loadPiece("/users/ajax_logged_in", "#ajax_account_info");
		}
		else {
			loadPiece("/travelers/ajax_signup", "#ajax_account_info");
		}
	//This loads the pagination links before a date is selected
	});
		</script>

<div id='ajax_account_info'>
</div>
<div id='billing_info'>
<h2 class="page_title">Billing Info</h2>
</div>
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('book_reservation'); ?>
<div>


</div><!-- #layout_right -->
