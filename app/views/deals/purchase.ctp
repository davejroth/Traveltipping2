<?php //echo $html->script('prototype');
	  //echo $html->script('scriptaculous'); 
	  echo $this->Html->script('jquery');
	  //echo $this->Html->script('myscripts');
	 ?>

<div id="layout_left" class="grid_22">
	<h2 class="page_title">Summary</h2>
	<?php echo $deal['Deal']['title']; ?>
	Check-In:
	<br>
	Check-Out:
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
		loadPiece("/travelers/ajax_sign_in", "#reservationList");
		loadPiece("/travelers/ajax_signup", "#wtfTest");
		//$("#wtfTest").load("blah");
	//This loads the pagination links before a date is selected
	});
		</script>
<div id='reservationList'>

</div>

<div id='wtfTest'>
</div>

</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('book_reservation'); ?>
<div>


</div><!-- #layout_right -->
