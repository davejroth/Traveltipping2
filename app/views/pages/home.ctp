<?php
$this->layout = 'home'; 
$max_quantity = $deals['Deal']['max_purchases'];
$current_quantity = $deals['Deal']['current_purchases'];
$remaining_quantity = $max_quantity - $current_quantity;

//Progress Bar Calculation
$progress_value = ($current_quantity/$max_quantity)*100;

//debug($deals);
?>



<?php echo $this->Form->create('Deal',array('action'=>'index','class'=>'clearfix')); ?>
<div id="region_selection_map" class="clearfix">
	<div id="rgn_north_america" class="region">
		<div id="chk_north_america" class="checkbox_field clearfix">
			<div class="checkbox"></div>
			<p>North America &amp; Caribbean</p>
			<?php echo $this->Form->input('Deal.region.1',array('type'=>'hidden','value'=>0)); ?>
		</div>
	</div>
	
	
	
	<div id="rgn_latin_america" class="region">
		<div id="chk_latin_america" class="checkbox_field clearfix">
			<div class="checkbox"></div>
			<p><span>Latin</span>America</p>
			<?php echo $this->Form->input('Deal.region.2',array('type'=>'hidden','value'=>0)); ?>
		</div>
	</div>
	
	<div id="rgn_europe" class="region">
		<div id="chk_europe" class="checkbox_field clearfix">
			<div class="checkbox"></div>
			<p>Europe</p>
			<?php echo $this->Form->input('Deal.region.3',array('type'=>'hidden','value'=>0)); ?>
		</div>
	</div>
	<div id="rgn_africa" class="region">
		<div id="chk_africa" class="checkbox_field clearfix">
			<div class="checkbox"></div>
			<p><span>Africa</span> &amp; Arabia</p>
			<?php echo $this->Form->input('Deal.region.4',array('type'=>'hidden','value'=>0)); ?>
		</div>
	</div>
	<div id="rgn_asia" class="region">
		<div id="chk_asia" class="checkbox_field clearfix">
			<div class="checkbox"></div>
			<p>Asia</p>
			<?php echo $this->Form->input('Deal.region.5',array('type'=>'hidden','value'=>0)); ?>
		</div>
	</div>
	<div id="rgn_oceania" class="region">
		<div id="chk_oceania" class="checkbox_field clearfix">
			<div class="checkbox"></div>
			<p>Oceania</p>
			<?php echo $this->Form->input('Deal.region.6',array('type'=>'hidden','value'=>0)); ?>
		</div>
	</div>
</div>

</div>

<div id="find_deals" class="white_mod_960_wrap">
	<div class="white_mod_960_top"></div>
	<div class="white_mod_960_content">
		<div id="deal_search_bar" class="blue_rounded_mod clearfix">
			<div class="clearfix">
				<h3 class="grid_14 prefix_4">Where do you want to go?</h3>
				<div id="home_find_deals" class="submit"><input type="submit"  class="find_deals_btn suffix_4" value="Submit"></div>
			</div>
			<p class="clear grid_18 center">Select the destinations of your dreams and we'll find you amazing travel deals</p>
		</div>
	</div>
</div>

<h3 class="white_mod_title">Featured Destination Deal</h3>
<a href="/deals/view/<?php echo $deals['Deal']['id'] ?>" id="featured_deal" class="white_mod_960_wrap">
	<span class="white_mod_960_top"></span>
	<span class="white_mod_960_content clearfix">
		<span class="deal_content clearfix">
		<?php echo $this->Html->image($deals['Deal']['image1'], array('class'=>'grid_14 alpha omega','alt' => 'Featured Deal Image'))?>
			<span class="grid_14 push_1">
				<span class="desination_title"><?php echo $deals['Deal']['destination'] ?></span>
				<span class="featured_deal_description"><?php echo $deals['Deal']['title'] ?></span>
				<span class="progressbar">
					<span style="width:<?php echo $progress_value?>%" class="progress_val"></span>
				</span>
				<span class="grid_5 current_quantity"><?php echo __('Quantity Sold: ').$current_quantity; ?></span>
				<span class="grid_4 remaining_quantity"><?php echo __('Total Remaining: ').$remaining_quantity; ?></span>
			</span>
		</span>
	</span>
</a>