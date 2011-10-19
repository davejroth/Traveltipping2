<?php //debug($deals); 
?>

<div id="layout_left" class="merchant_deals grid_22">
	<div class="blue_rounded_mod clearfix">
	<ul class="deal_nav">
	<?php 
	echo '<li>' . $this->Html->link('Upcoming Deals',array('controller'=>'merchants', 'action'=>'deals', 'upcoming'),array( 'alt'=>'Upcoming Deals')) . '</li>';
	echo '<li>' . $this->Html->link('Live Deals',array('controller'=>'merchants', 'action'=>'deals', 'live'),array( 'alt'=>'Live Deals')) . '</li>';
	echo '<li>' . $this->Html->link('Past Deals',array('controller'=>'merchants', 'action'=>'deals', 'past'),array( 'alt'=>'Past Deals')) . '</li>';
	echo '<li class="last_action">' . $this->Html->link('Create New Deal >',array('controller'=>'merchants', 'action'=>'initiate'),array( 'alt'=>'Create Deal')) . '</li>';
	?>
	</ul>
	</div>

	
<?php
$i = 0;
foreach ($deals as $deal):
$remaining_quantity = $deal['Deal']['max_purchases'] - $deal['Deal']['current_purchases'];
$sales = $deal['Deal']['current_purchases'] * $deal['Deal']['discounted_price'];
$commissions = $sales * ($deal['Deal']['comission_percentage']/100);
$revenue = $sales - $commissions;
$progress_value = ($deal['Deal']['current_purchases']/$deal['Deal']['max_purchases'])*100;

//$time_remaining = $deal['Deal']['deal_end_date'];

?>

<div id="deal_<?php echo $deal['Deal']['id']?>"  class="white_mod_694_wrap">
	<div class="white_mod_694_top"></div>
	<div class="white_mod_694_content clearfix">
		<?php echo $this->Html->image($deal['Deal']['image1'], array('class'=>'grid_6 alpha omega','alt' => 'Featured Deal Image'))?>
		<div class="grid_14 push_1">
			<h3 class="listing_desination_title"><?php echo $deal['Deal']['name']; ?></h3>
			<table>
				<?php echo $this->Html->tableHeaders(array('Status','Sales','Commission','Total Revenue'));?>
				<?php echo $this->Html->tableCells(array(
				array(array($deal['DealStatus']['name'],array('class'=>'status')),"$".$sales,"$".$commissions,array("$".$revenue,array('class'=>'revenue')))));?>
			</table>
			<ul class="horizontal_list">
			<?php
				echo "<li>" .  $this->Html->link(
					'View Details',array('controller' => 'deals', 'action' => 'deal_details', $deal['Deal']['id']
					)) . "</li>";
				echo "<li>" .  $this->Html->link(
					'View Page',array('controller' => 'deals', 'action' => 'view', $deal['Deal']['id']
					),array('target' => '_blank')) . "</li>";
				echo "<li>" .  $this->Html->link('Reservations',array('action'=>'reservations',$deal['Deal']['id']),
				array('class'=>'reservations')) . "</li>"?>
			</ul>
			
			<div class="progressbar">
				<div style="width:<?php echo $progress_value?>%" class="progress_val"></div>
			</div>
			<p id="current_quantity" class="grid_5"><?php echo __('Quantity Sold: ').$deal['Deal']['current_purchases']; ?></p>
			<p id="remaining_quantity" class="grid_5 push_1"><?php echo __('Total Remaining: ').$remaining_quantity; ?></p>
		</div>
		
		
	</div>
</div>

<?php endforeach; ?>
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('past_deals'); ?>

</div><!-- #layout_right -->
