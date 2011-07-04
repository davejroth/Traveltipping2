<div id="layout_left" class="grid_22">
	<div class="blue_rounded_mod clearfix">
	<ul class="deal_nav">
		<li><a href="#">Upcoming Deals</a></li>
		<li><a href="#">Live Deals</a></li>
		<li><a href="#">Past Deals</a></li>
				
	</ul>	
	</div>

	
<?php
$i = 0;
foreach ($deals as $deal):

$image = $deal['Deal']['image1'];
$deal_id = $deal['Deal']['id'];
$max_quantity = $deal['Deal']['max_purchases'];
$current_quantity = $deal['Deal']['current_purchases'];
$remaining_quantity = $max_quantity - $current_quantity;

//Progress Bar Calculation
$progress_value = ($current_quantity/$max_quantity)*100;

?>

<div id="deal_<?php echo $deal_id?>"  class="white_mod_694_wrap deal_listing">
	<div class="white_mod_694_top"></div>
	<div class="white_mod_694_content clearfix">
		<?php echo $this->Html->image("/img/listing/$image", array('class'=>'grid_8 alpha omega','alt' => 'Featured Deal Image'))?>
		<div class="grid_12 push_1">
			<h3 class="listing_desination_title">Tuscany, Italy</h3>
			<p class="listing_deal_description"><?php echo $deal['Deal']['title']; ?></p>
			<p class="listing_prices grid_5"><?php echo __('Your Price: $').(int)$deal['Deal']['discounted_price']; ?></p>
			<p class="listing_prices grid_5"><?php echo __('Original Value: $').(int)$deal['Deal']['original_price']; ?></p>
			<div class="progressbar">
				<div style="width:<?php echo $progress_value?>%" class="progress_val"></div>
			</div>
			<p id="current_quantity" class="grid_5"><?php echo __('Quantity Sold: ').$current_quantity; ?></p>
			<p id="remaining_quantity" class="grid_4"><?php echo __('Total Remaining: ').$remaining_quantity; ?></p>
		</div>
		
		
	</div>
</div>

<?php endforeach; ?>
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('open_deals'); ?>

</div><!-- #layout_right -->
