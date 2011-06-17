<?php
$this->layout = 'home'; 
$max_quantity = $deals['Deal']['max_purchases'];
$current_quantity = $deals['Deal']['current_purchases'];
$remaining_quantity = $max_quantity - $current_quantity;

//Progress Bar Calculation
$progress_value = ($current_quantity/$max_quantity)*100;
?>



<form id="region_search" accept-charset="utf-8" action="/deals" method="post">
<div id="region_selection_map" class="clearfix">
	<div id="rgn_north_america" class="region">
		<div id="chk_north_america" class="checkbox_field clearfix">
			<div class="checkbox"></div>
			<p>North America &amp; Carribean</p>
			<input type="hidden" value="0" name="region_select[]"/>
		</div>
	</div>
	
	
	
	<div id="rgn_latin_america" class="region">
		<div id="chk_latin_america" class="checkbox_field clearfix">
			<div class="checkbox"></div>
			<p><span>Latin</span>America</p>
			<input type="hidden" value="0" name="region_select[]"/>
		</div>
	</div>
	
	<div id="rgn_europe" class="region">
		<div id="chk_europe" class="checkbox_field clearfix">
			<div class="checkbox"></div>
			<p>Europe</p>
			<input type="hidden" value="0" name="region_select[]"/>
		</div>
	</div>
	<div id="rgn_africa" class="region">
		<div id="chk_africa" class="checkbox_field clearfix">
			<div class="checkbox"></div>
			<p><span>Africa</span> &amp; Arabia</p>
			<input type="hidden" value="0" name="region_select[]"/>
		</div>
	</div>
	<div id="rgn_asia" class="region">
		<div id="chk_asia" class="checkbox_field clearfix">
			<div class="checkbox"></div>
			<p>Asia</p>
			<input type="hidden" value="0" name="region_select[]"/>
		</div>
	</div>
	<div id="rgn_oceania" class="region">
		<div id="chk_oceania" class="checkbox_field clearfix">
			<div class="checkbox"></div>
			<p>Oceania</p>
			<input type="hidden" value="0" name="region_select[]"/>
		</div>
	</div>
</div>
<div id="region_selection_text" class="clearfix">
	
	
	
	
	
	
</div>
</form>
<div id="find_deals" class="white_mod_960_wrap">
	<div class="white_mod_960_top"></div>
	<div class="white_mod_960_content">
		<div id="deal_search_bar" class="blue_rounded_mod clearfix">
			<div class="clearfix">
				<h3 class="grid_14 prefix_4">Where do you want to go?</h3>
				<a href="#" class="find_deals_btn suffix_4"></a>
			</div>
			<p class="clear grid_17 center">Select the destinations of your dreams and we'll find you amazing travel deals</p>
		</div>
	</div>
</div>

<h3 class="white_mod_title">Featured Destination Deal</h3>
<div id="featured_deal" class="white_mod_960_wrap">
	<div class="white_mod_960_top"></div>
	<div class="white_mod_960_content clearfix">
		<?php echo $this->Html->image('/img/featured/featured_deal1.png', array('class'=>'grid_14 alpha omega','alt' => 'Featured Deal Image'))?>
		<div class="grid_13 push_1">
			<h3 class="desination_title">Tuscany, Italy</h3>
			<p class="featured_deal_description">67% Off One Week Stay at Tuscany Villa In The Heart Of Italy</p>
			<div class="progressbar">
				<div style="width:<?php echo $progress_value?>%" class="progress_val"></div>
			</div>
			<p id="current_quantity" class="grid_5"><?php echo __('Quantity Sold: ').$current_quantity; ?></p>
			<p id="remaining_quantity" class="grid_4"><?php echo __('Total Remaining: ').$remaining_quantity; ?></p>
		</div>
	</div>
</div>