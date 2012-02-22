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
		<p class="grid_7 title"><?php echo $deal['Deal']['title'] ?></p>
		<dl class="grid_7 dates">
			<dt>Check In: </dt><dd><?php echo $this->Time->format( $format = 'F d, Y',$this->Session->read('Trip.start_date')) ?></dd>
			<dt>Check Out: </dt><dd><?php echo $this->Time->format( $format = 'F d, Y',$this->Session->read('Trip.end_date')) ?></dd>
		</dl>
		
	</div>
	<dl class="deal_summary_total clearfix"><dt>Total:</dt> <dd>$<?php echo $this->Session->read('Trip.cost') ?></dd></dl>


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
$('#billing_info').hide();

$.getJSON('/users/check_session', function(json) {
		if(json.logged_in == true){
			$.ajax({
			url: "/users/ajax_logged_in",
			success: function(data){
			$('#ajax_account_info').append(data);
			$('#billing_info').show();
			}
			});
		}
		else{
			$.ajax({
			url: "/travelers/ajax_sign_in",
			success: function(data){
				$('#sign_in').append(data);
			}
			});
			
			$.ajax({
			url: "/travelers/ajax_signup",
			success: function(data){
				$('#new_account').append(data);
			}
			});
			$('#billing_info').hide();
		}		
});
	
	/**
	* Add Event Handlers for ajax login and ajax signup
	*/
	
	$('.ajax_sign_in').live('click', function(data) {
		$.post(
				'/travelers/ajax_sign_in',
				$("#TravelerAjaxSigninForm").serializeArray(),
				function(data){
					htmlData = data;
					$.getJSON('/users/check_session', function(json) {
						if(json.logged_in == true){
							$('#ajax_account_info').empty();
							$('#ajax_account_info').append(htmlData);
							$('#billing_info').show();
								
						}
						else{
							$('#sign_in').empty();
							$('#sign_in').append(htmlData);
							$('#billing_info').hide();
							$('.notification').fadeOut(3000,'easeInCubic',function(){ //Fade out the error message
								$('.notification').remove()
							});	
						}
					});
					
					$.ajax({
					url: "/pages/get_header",
					success: function(data){
						$('#header').replaceWith(data);
					}
					});
		});
		return false;
	});
	
	$('.ajax_signup').live('click', function() {
		$.post(
				'/travelers/ajax_signup',
				$("#TravelerAjaxSignupForm").serializeArray(),
				function(data){
					htmlData = data;
					$.getJSON('/users/check_session', function(json) {
						if(json.logged_in == true){
							$('#ajax_account_info').empty();
							$('#ajax_account_info').append(htmlData);
							$('#billing_info').show();
						}
						else{
							$('#new_account').empty();
							$('#new_account').append(data);
							$('#billing_info').hide();
						}
					});
					
					$.ajax({
					url: "/pages/get_header",
					success: function(data){
						$('#header').replaceWith(data);
					}
					});
		});
		return false;
	});
	
	
	
	
});
</script>

<div id='ajax_account_info' class="clearfix">
	<div id="sign_in"></div>
	<div id="new_account"></div>
</div>

<div id='billing_info'>
<h2 class="page_title">Billing Info</h2>
<?php echo $this->Form->create('Deal',  array('url' => '/deals/purchase/' . $deal['Deal']['id'],'class' => 'clearfix','id' => 'PurchaseForm'));
		
	echo '<div class="address_fields">';
	  echo $this->Form->input('Transaction.name', array('label'=>'Cardholder\'s Name'));
	  echo $this->Form->input('Transaction.address', array('label'=>'Billing Address'));
	  echo $this->Form->input('Transaction.city', array('label'=>'City'));
	  echo $this->Form->input('Transaction.state', array('label'=>'State'));
	  echo $this->Form->input('Transaction.zip', array('label' => 'Zip'));
	echo '</div>';
	echo '<div class="credit_fields">';
	  echo $this->Form->input('Transaction.cc_number', array('label' => 'Credit Card Number'));
	  echo $this->Form->input('Transaction.cvv', array('label' => 'CVV Number'));
	  echo $this->Form->label('Expiration Date');
	  echo $this->Form->input('Transaction.expiration_month', array('type' => 'select', 'options' => $months, 'label' => '', 'div' => false));
	  echo $this->Form->input('Transaction.expiration_year', array('type' => 'select', 'options' => $years, 'label' => '', 'div' => false));
	  
	 echo '</div>';

	  
	  ?>
	  <div class="billing_terms">
		<p>You have 7 days from purchase to cancel your reservation and receive a full refund.  If you need to change your 
			reservation in the future, you can do so by contacting the travel supplier directly, subject to availability.</p>
	  <?php 
	  		$term_link = $this->Html->link('Terms of Service',array('controller' => 'pages', 'action' => 'user-terms'), array());
			echo $this->Form->input('Transaction.tos', array('type'=>'checkbox','label' =>'I agree to TravelTippings '.$term_link));
			
		?>
	  </div>
	  <?php
	  echo $this->Form->end('Purchase')?>

</div>



</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('purchase_deal'); ?>

</div><!-- #layout_right -->
