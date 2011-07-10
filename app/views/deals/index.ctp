<?php debug($this->data); ?>

<div id="layout_left" class="grid_22">
<div class="filter_bar">
	<ul id="sort_options">
		<li class="list_title"><strong>Sort By:</strong></li>
		<li><?php echo $this->Paginator->sort('Availability','current_purchases');?></li>
		<li><?php echo $this->Paginator->sort('Discounted %','discounted_price');?></li>
		<li><?php echo $this->Paginator->sort('Price','discounted_price');?></li>
		<li><?php echo $this->Paginator->sort('Expiration','deal_end_date');?></li>
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
	<div id="search_mod"  class="white_mod_246_wrap">
	<div class="white_mod_246_top"></div>
	<div class="white_mod_246_content clearfix">
		<h3 class="module_title">Search</h3>
		<div class="module_content clearfix">
			<?php echo $this->Form->create('Deal',array('action'=>'index','class'=>'clearfix')); ?>
				<div class="checkbox_field">
					<div type="checkbox" class="checkbox" ></div>
					<label>North America &amp; Carribean</label>
					<?php 
					if(!empty($this->data['Deal']['region'][1])){
						echo $this->Form->input('Deal.region.1',array('type'=>'hidden','value'=>1,'class'=>'search_input'));
					}
					else{
						echo $this->Form->input('Deal.region.1',array('type'=>'hidden','value'=>0,'class'=>'search_input'));
					}
					?>

				</div>
				<div class="checkbox_field">
					<div type="checkbox" class="checkbox" ></div>
					<label>Latin America</label>
					<?php 
					if(!empty($this->data['Deal']['region'][2])){
						echo $this->Form->input('Deal.region.2',array('type'=>'hidden','value'=>1,'class'=>'search_input'));
					}
					else{
						echo $this->Form->input('Deal.region.2',array('type'=>'hidden','value'=>0,'class'=>'search_input'));
					}
					?>
				</div>
				<div class="checkbox_field">
					<div type="checkbox" class="checkbox" ></div>
					<label>Europe</label>
					<?php 
					if(!empty($this->data['Deal']['region'][3])){
						echo $this->Form->input('Deal.region.3',array('type'=>'hidden','value'=>1,'class'=>'search_input'));
					}
					else{
						echo $this->Form->input('Deal.region.3',array('type'=>'hidden','value'=>0,'class'=>'search_input'));
					}
					?>
				</div>
				<div class="checkbox_field">
					<div type="checkbox" class="checkbox" ></div>
					<label>Africa &amp; Arabia</label>
					<?php 
					if(!empty($this->data['Deal']['region'][4])){
						echo $this->Form->input('Deal.region.4',array('type'=>'hidden','value'=>1,'class'=>'search_input'));
					}
					else{
						echo $this->Form->input('Deal.region.4',array('type'=>'hidden','value'=>0,'class'=>'search_input'));
					}
					?>
				</div>
				<div class="checkbox_field">
					<div type="checkbox" class="checkbox" ></div>
					<label>Asia</label>
					<?php 
					if(!empty($this->data['Deal']['region'][5])){
						echo $this->Form->input('Deal.region.5',array('type'=>'hidden','value'=>1,'class'=>'search_input'));
					}
					else{
						echo $this->Form->input('Deal.region.5',array('type'=>'hidden','value'=>0,'class'=>'search_input'));
					}
					?>
				</div>
				<div class="checkbox_field">
					<div type="checkbox" class="checkbox" ></div>
					<label>Oceania</label>
					<?php 
					if(!empty($this->data['Deal']['region'][6])){
						echo $this->Form->input('Deal.region.6',array('type'=>'hidden','value'=>1,'class'=>'search_input'));
					}
					else{
						echo $this->Form->input('Deal.region.6',array('type'=>'hidden','value'=>0,'class'=>'search_input'));
					}
					?>
				</div>
<?php echo $this->Form->end(array('value'=>'','class'=>'find_more_deals','id'=>'index_find_deals')); ?>
				
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
<script>
$(document).ready(function() {
	
/* Deals Index Filter */
$('.checkbox_field input').each(function(e){
	//alert($(this).val());
	
	if($(this).val() == 1){
		$('.checkbox').eq(e).css({backgroundPosition: "0 0"});
	}
	else{
		$('.checkbox').eq(e).css({backgroundPosition: "0 -18px"});
	}

});


$('.checkbox_field').each(function(e){
	//alert('hello')
	$(this).toggle(
		function(){
			$('.checkbox').eq(e).css({backgroundPosition: "0 0"});
			$('#DealRegion'+(e+1)).val('1');
		},
		function(){
			$('.checkbox').eq(e).css({backgroundPosition: "0 -18px"});
			$('#DealRegion'+(e+1)).val('0');
		}
	);
	
});

/*
$(this).click(function(){
	$('#deal_region_filter').submit();
});
*/

});
</script>
