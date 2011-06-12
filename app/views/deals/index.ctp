
<div id="layout_left" class="grid_22">
<?php echo $test; ?>
<div class="filter_bar">
	<ul id="sort_options">
		<li class="list_title"><strong>Sort By:</strong></li>
		<li><a href="#">Availability</a></li>
		<li><?php echo $this->Paginator->sort('Discounted %','discounted_price');?></li>
		<li><a href="#">Price</a></li>
		<li><a href="#">Expiration</a></li>
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

<div id="deal_<?php echo$deal_id?>"  class="white_mod_694_wrap deal_listing">
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
	<div id="search_mod"  class="white_mod_246_wrap">
	<div class="white_mod_246_top"></div>
	<div class="white_mod_246_content clearfix">
		<h3 class="module_title">Search</h3>
		<div class="module_content clearfix">
			<form>
				<div class="checkbox_field">
					<div type="checkbox" class="checkbox" ></div>
					<label>Everywhere</label>
				</div>
				<div class="checkbox_field">
					<div type="checkbox" class="checkbox" ></div>
					<label>North America &amp; Carribean</label>
				</div>
				<div class="checkbox_field">
					<div type="checkbox" class="checkbox" ></div>
					<label>Latin America</label>
				</div>
				<div class="checkbox_field">
					<div type="checkbox" class="checkbox" ></div>
					<label>Europe</label>
				</div>
				<div class="checkbox_field">
					<div type="checkbox" class="checkbox" ></div>
					<label>Africa &amp; Arabia</label>
				</div>
				<div class="checkbox_field">
					<div type="checkbox" class="checkbox" ></div>
					<label>Asia</label>
				</div>
				<div class="checkbox_field">
					<div type="checkbox" class="checkbox" ></div>
					<label>Oceania</label>
				</div>
			</form>
		</div>
	</div>
</div>

<div  class="white_mod_246_wrap deal_listing">
	<div class="white_mod_246_top"></div>
	<div class="white_mod_246_content clearfix">
		<h3 class="module_title">FAQ</h3>
		<div class="module_content">
		</div>
	</div>
</div>


</div><!-- #layout_right -->
