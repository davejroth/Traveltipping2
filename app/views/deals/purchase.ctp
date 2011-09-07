<?php 
			$years = array();
			$currentYear = date('Y');
		$endYear = date('Y') + 5;
			do {
			$years[$currentYear] = $currentYear;
			$currentYear = $currentYear + 1;
							}while($currentYear <= $endYear);
		
		$months = array(1 => '01', 2 => '02', 3 => '03', 4 => '04', 5 => '05', 6 => '06', 
			7 => '07', 8 => '08', 9 => '09', 10 => '10', 11 => '11', 12 => '12');
			/*$currentMonth = 1;
			$endMonth = 12;
			do {
				$months[$currentMonth] = $currentMonth;
		$currentMonth++;
				} while($currentMonth <= $endMonth); */
?>

<div id="layout_left" class="grid_22">
	<h2 class="page_title">Summary</h2>
	<div class="deal_summary clearfix">
		<p class="grid_10 title"><?php echo $deal['Deal']['title'] ?></p>
		<p class="grid_7 price">
			Check In: <?php echo $this->Session->read('Trip.start_date') ?><br/>
			Check Out: <?php echo $this->Session->read('Trip.end_date') ?><br/>
		</p>
		
	</div>
	<p>Total: <?php echo $this->Session->read('Trip.cost') ?></p>


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
<?php echo $this->Form->create('Deal',  array('url' => '/deals/purchase/' . $deal['Deal']['id']));

	  echo $this->Form->input('Transaction.name', array('label'=>'Cardholder\'s Name'));
	  echo $this->Form->input('Transaction.address', array('label'=>'Billing Address'));
	  echo $this->Form->input('Transaction.city', array('label'=>'City'));
	  echo $this->Form->input('Transaction.state', array('label'=>'State'));
	  echo $this->Form->input('Transaction.zip', array('label' => 'Zip'));
	  echo $this->Form->input('Transaction.cc_number', array('label' => 'Credit Card Number'));
	  echo $this->Form->input('Transaction.ccv', array('label' => 'CCV Number'));
	  echo $this->Form->label('Expiration Date');
	  echo "<br>";
	  echo $this->Form->input('Transaction.expiration_month', array('type' => 'select', 'options' => $months, 'label' => '', 'div' => false));
	  echo $this->Form->input('Transaction.expiration_year', array('type' => 'select', 'options' => $years, 'label' => '', 'div' => false));
	  //echo $this->Form->year('Transaction.expiration_year',date('Y')+5, date('Y'), date('Y'), array() , false );
	  echo $this->Form->end('Purchase')?>

</div>



</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('book_reservation'); ?>

</div><!-- #layout_right -->
