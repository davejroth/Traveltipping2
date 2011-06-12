<?php 

$this->layout = 'deal_view'; 

$image = $deal['Deal']['image1'];
$deal_id = $deal['Deal']['id'];
$max_quantity = $deal['Deal']['max_purchases'];
//$current_quantity = $deal['Deal']['current_purchases'];
$current_quantity = $count;
$remaining_quantity = $max_quantity - $current_quantity;

$original_price = (int)$deal['Deal']['original_price'];
$discounted_price = (int)$deal['Deal']['discounted_price'];


$savings = $original_price - $discounted_price;
$discounted_price_pct = ($savings/$original_price)*100;

//Progress Bar Calculation
$progress_value = ($current_quantity/$max_quantity)*100;


?>

<div id="layout_left" class="grid_22">
	<div id="deal_view_details"  class="white_mod_694_wrap deal_listing">
		<div class="white_mod_694_top"></div>
		<div class="white_mod_694_content clearfix">
			<div class="thumb_nails">
					<?php echo $this->Html->image('/img/deals/deal-detail-1-tmb.png', array('class'=>'grid_3','alt' => 'Featured Deal Image'))?>
			</div>
			<?php echo $this->Html->image('/img/deals/deal-detail-1.png', array('class'=>'grid_18 omega','alt' => 'Featured Deal Image'))?>
			
			<div id="book_now_bar" class="blue_rounded_mod clearfix grid_21 alpha omega">
				<h3 class="grid_12"><?php echo $deal['Deal']['title']; ?></h3>
				<div id="deal_detail_cta" class="grid_8 clearfix">
					<p class="grid_3"><?php echo __('$').$discounted_price; ?></p>
					<a href="#" class="book_now_btn"></a>
				</div>
			</div>
			<div id="progressbar_wrap" class="grid_12">
				<div class="progressbar">
					<div style="width:<?php echo $progress_value?>%" class="progress_val"></div>
				</div>
				<p id="current_quantity" class="grid_5"><?php echo __('Quantity Sold: ').$current_quantity; ?></p>
				<p id="remaining_quantity" class="grid_4"><?php echo __('Total Remaining: ').$remaining_quantity; ?></p>
			</div>
			<div id="detail_prices" class="grid_8 push_1">
				<p>
					<span class="grid_3"><?php echo __('Original Price')?></span>
					<span class="grid_3"><?php echo __('Discount')?></span>
					<span class="grid_2"><?php echo __('Savings')?></span>
				</p>
				<p id="original_price" class="grid_3 prices"><span class="strike"></span><?php echo __('$').$original_price; ?></p>
				<p id="discount_price" class="grid_3 prices"><?php echo $discounted_price_pct.'%'; ?></p>
				<p id="savings" class="grid_2 prices"><?php echo __('$').$savings; ?></p>
			</div>
		</div>
	</div>
	

	<div id="deal_view_description"  class="white_mod_694_wrap deal_listing">
	
		<div class="white_mod_694_top"></div>
		
		<div class="white_mod_694_content clearfix">
			<div class="grid_14">
				<h3>Description</h3>
				<?php echo $deal['Deal']['description']; ?>
				
				<h3>The Fine Print</h3>
				<?php echo $deal['Deal']['details']; ?>
			</div>
			<div class="grid_7">
				<div class="highlights_mod">
					<h3>Highlights</h3>
					<?php echo $deal['Deal']['highlights']; ?>
					
				</div>
			</div>
		</div>
	</div>
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	<div  class="white_mod_246_wrap deal_listing">
	<div class="white_mod_246_top"></div>
	<div class="white_mod_246_content clearfix">
		<h3 class="module_title">About Your Host</h3>
		<div class="module_content">
			<?php echo $deal['Deal']['about_host']; ?>
		</div>
	</div>
</div>

<div  class="white_mod_246_wrap deal_listing">
	<div class="white_mod_246_top"></div>
	<div class="white_mod_246_content clearfix">
		<h3 class="module_title">Things To Do</h3>
		<div class="module_content">
		</div>
	</div>
</div>

<div  class="white_mod_246_wrap deal_listing">
	<div class="white_mod_246_top"></div>
	<div class="white_mod_246_content clearfix">
		<h3 class="module_title">Getting There</h3>
		<div class="module_content">
			<?php echo $deal['Deal']['getting_there']; ?>
		</div>
	</div>
</div>
</div><!-- #layout_right -->
