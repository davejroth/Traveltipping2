<?php $this->layout = 'home'; ?>

<div id="region_selection_map" class="clearfix">
	<div id="rgn_north_america" class="region">
	</div>
	<div id="rgn_latin_america" class="region">
	</div>
	<div id="rgn_europe" class="region">
	</div>
	<div id="rgn_africa" class="region">
	</div>
	<div id="rgn_asia" class="region">
	</div>
	<div id="rgn_oceania" class="region">
	</div>
</div>
<div id="region_selection_text" class="clearfix">
	<div id="chk_north_america" class="checkbox_field clearfix">
		<div class="checkbox"></div>
		<p>North America &amp; Carribean</p>
	</div>
	<div id="chk_latin_america" class="checkbox_field clearfix">
		<div class="checkbox"></div>
		<p><span>Latin</span>America</p>
	</div>
	<div id="chk_europe" class="checkbox_field clearfix">
		<div class="checkbox"></div>
		<p>Europe</p>
	</div>
	<div id="chk_africa" class="checkbox_field clearfix">
		<div class="checkbox"></div>
		<p><span>Africa</span>&amp; Arabia</p>
	</div>
	<div id="chk_asia" class="checkbox_field clearfix">
		<div class="checkbox"></div>
		<p>Asia</p>
	</div>
	<div id="chk_oceania" class="checkbox_field clearfix">
		<div class="checkbox"></div>
		<p>Oceania</p>
	</div>
</div>

<div id="find_deals" class="white_mod_960_wrap container_16">
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
			<p class="deal_description">67% Off One Week Stay at Tuscany Villa In The Heart Of Italy</p>
		</div>
	</div>
</div>