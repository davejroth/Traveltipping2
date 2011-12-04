<div id="layout_left" class="merchant_deals grid_22">
<?php echo $this->element('merchant_menu'); ?>
	
<?php
if(empty($deals)) {
	echo '<div class="no_deal_message"><p class="sub_heading">You have no deals yet!</p><p>Your dedicated Account Manager will contact you shortly to help develop your new deal.</p></div>';
}
else {
$i = 0;
foreach ($deals as $deal):
$status = '';
if($deal['Deal']['deal_status_id'] == Configure :: read('Deal.Status_Initiated')) {
$status = 'Initiated';
$statusClass = 'initiated';
}
elseif($deal['Deal']['deal_status_id'] == Configure :: read('Deal.Status_Submitted')) {
$status = 'Waiting for your approval';
$statusClass = 'waiting';
}
elseif($deal['Deal']['deal_status_id'] == Configure :: read('Deal.Status_Approved')) {
$status = 'Will be released on';
$statusClass = 'initiated';
}
if(is_null($deal['Deal']['deal_live'])) {
	$dealLive = "Not Set";
}
else {
	$dealLive = date_format(date_create($deal['Deal']['deal_live']), 'l, F jS, Y');	
}

?>

<div id="deal_<?php echo $deal['Deal']['id']?>"  class="white_mod_694_wrap">
	<div class="white_mod_694_top"></div>
	<div class="white_mod_694_content clearfix">
		<?php echo $this->Html->image($deal['Deal']['image1'], array('class'=>'grid_6 alpha omega','alt' => 'Featured Deal Image'))?>
		<div class="grid_14 push_1">
			<h3 class="listing_desination_title"><?php echo $deal['Deal']['name']; ?></h3>
			<table>
				<tr>
					<th class="deal_status"> Deal Status </th>
					<th class="deal_date"> Scheduled Release Date </th>
				</tr>
				<tr>
					<?php echo "<td class=" . $statusClass . "> " . $status . "</td>";
						  echo "<td class=date>" . $dealLive . "</td>";
				/*
				echo $this->Html->tableHeaders(array('Deal Status','Scheduled Release Date'));
				 echo $this->Html->tableCells(
						array(
							array( array($status, array('class'=> $statusClass)),$dealLive 
							)
						)
					); */?>
				</tr>
			</table>
			<ul class="horizontal_list">
			<?php	
				if($deal['Deal']['deal_status_id'] == Configure :: read('Deal.Status_Submitted') || $deal['Deal']['deal_status_id'] == Configure :: read('Deal.Status_Approved')) {
					echo "<li>" .  $this->Html->link(
						'View Details',array('controller' => 'deals', 'action' => 'deal_details', $deal['Deal']['id']
						)) . "</li>";
					echo "<li>" .  $this->Html->link(
						'View Sample',array('controller' => 'deals', 'action' => 'view', $deal['Deal']['id']
						),array('target' => '_blank')) . "</li>";
					 if($deal['Deal']['deal_status_id'] == Configure :: read('Deal.Status_Submitted')) {
						echo "<li>" .  $this->Html->link(
						'Approve',array('controller' => 'merchants', 'action' => 'approve', $deal['Deal']['id']), array('class' => 'approve_btn')) . "</li>";
					}
				}
				?>
			</ul>
			

		</div>
		
		
	</div>
</div>

<?php endforeach; }//end If(empty) - Else statement ?>
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('upcoming_deals'); ?>

</div><!-- #layout_right -->
