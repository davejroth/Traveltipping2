<?php //debug($deals); 
?>

<div id="layout_left" class="merchant_deals grid_22">
	<div class="blue_rounded_mod clearfix">
	<ul class="deal_nav">
	<?php 
	echo '<li>' . $this->Html->link('Upcoming Deals',array('controller'=>'merchants', 'action'=>'deals', 'upcoming'),array( 'alt'=>'Upcoming Deals')) . '</li>';
	echo '<li>' . $this->Html->link('Live Deals',array('controller'=>'merchants', 'action'=>'deals', 'live'),array( 'alt'=>'Live Deals')) . '</li>';
	echo '<li>' . $this->Html->link('Past Deals',array('controller'=>'merchants', 'action'=>'deals', 'past'),array( 'alt'=>'Past Deals')) . '</li>';
	echo '<li>' . $this->Html->link('Create New Deal >',array('controller'=>'merchants', 'action'=>'initiate'),array( 'alt'=>'Create Deal')) . '</li>';
	?>
	</ul>
	</div>
	
<?php
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
$dealLive = date_format(date_create($deal['Deal']['deal_live']), 'l, F jS, Y');
if(is_null($dealLive)) {
	$dealLive = "Not Set";
}

?>

<div id="deal_<?php echo $deal['Deal']['id']?>"  class="white_mod_694_wrap deal_listing">
	<div class="white_mod_694_top"></div>
	<div class="white_mod_694_content clearfix">
		<?php echo $this->Html->image($deal['Deal']['image1'], array('class'=>'grid_6 alpha omega','alt' => 'Featured Deal Image'))?>
		<div class="grid_14 push_1">
			<h3 class="listing_desination_title">Tuscany, Italy</h3>
			<table>
				<tr>
					<th> Deal Status </th>
					<th class="date"> Scheduled Release Date </th>
				</tr>
				<tr>
					<?php echo "<td class=" . $statusClass . "> " . $status . "</td>";
						  echo "<td>" . $dealLive . "</td>";
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
				<li><a href="#">View Details</a></li>
				<li><a href="#">View Sample</a></li>
			</ul>
			

		</div>
		
		
	</div>
</div>

<?php endforeach; ?>
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('open_deals'); ?>

</div><!-- #layout_right -->