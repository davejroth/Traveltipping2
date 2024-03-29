<div id="layout_left" class="grid_22">
<div class="filter_bar">
	<ul id="sort_options">
		<li class="list_title"><strong>Sort By:</strong></li>
		<li><?php 
		/*Replace the paginator->sort links with links because CakePHP has a bug that prevents it from passing sort order 
			correctly for derived fields. */
		//echo $this->Paginator->sort('Remaining Quantity','current_purchases');
		echo $html->link(__('Remaining Quantity', true), array(
			'controller' => 'deals',
			'action' => 'index',
			'page' => (!empty($this->passedArgs['page']))?$this->passedArgs['page'] : '',
			'sort' => 'remaining_quantity',
			'direction' => (empty($this->passedArgs['direction']) || $this->passedArgs['direction'] == 'asc')?'desc' : 'asc',
			'limit' => (!empty($this->passedArgs['limit']))?$this->passedArgs['limit'] : '',
		));
		?></li>
		
		<li><?php //echo $this->Paginator->sort('Discounted %','discount_percentage');
			echo $html->link(__('Discounted %', true), array(
			'controller' => 'deals',
			'action' => 'index',
			'page' => (!empty($this->passedArgs['page']))?$this->passedArgs['page'] : '',
			'sort' => 'discount_percentage',
			'direction' => (empty($this->passedArgs['direction']) || $this->passedArgs['direction'] == 'asc')?'desc' : 'asc',
			'limit' => (!empty($this->passedArgs['limit']))?$this->passedArgs['limit'] : '',
		));
		?></li>
		
		<li><?php echo $this->Paginator->sort('Price','discounted_price');?></li> <!-- Discounted price is not derived -->
	</ul>
</div>
<?php
if(empty($deals)) {
	echo '<p class="no_results">Uh oh, it doesn\'t look like we have any deals in this region right now.  Come back again soon; we\'re constantly adding new deals as others expire.</p>';
}
else {
$i = 0;
foreach ($deals as $deal):

$image = $deal['Deal']['image1'];
$deal_id = $deal['Deal']['id'];
$max_quantity = $deal['Deal']['max_purchases'];
$current_quantity = $deal['Deal']['current_purchases'];
$remaining_quantity = $max_quantity - $current_quantity;

//Progress Bar Calculation
$progress_value = ($current_quantity/$max_quantity)*100;
//debug($deal['Deal']);

?>

<a href="/deals/view/<?php echo $deal_id?>" id="deal_<?php echo $deal_id?>"  class="white_mod_694_wrap deal_listing">
	<span class="white_mod_694_top"></span>
	<span class="white_mod_694_content clearfix">
		<span class="deal_content clearfix">
			<span>
				<?php echo $this->Html->image("$image", array('class'=>'grid_8 alpha omega','alt' => 'Featured Deal Image'))?>
				<span class="grid_12 deal_listing_info">
					<span class="listing_desination_title"><?php echo $deal['Deal']['destination']; ?></span>
					<span class="listing_deal_description"><?php echo $deal['Deal']['title']; ?></span>
					<span class="listing_prices grid_5"><?php echo __('Your Price: $').(int)$deal['Deal']['discounted_price']; ?></span>
					<span class="listing_prices grid_6"><?php echo __('Original Value: $').(int)$deal['Deal']['original_price']; ?></span>
					<span class="progressbar">
						<span style="width:<?php echo $progress_value?>%" class="progress_val"></span>
					</span>
					<span class="current_quantity grid_5"><?php echo __('Quantity Sold: ').$current_quantity; ?></span>
					<span class="remaining_quantity grid_4"><?php echo __('Total Remaining: ').$remaining_quantity; ?></span>
				</span>
			</span>
		</span>
		
	</span>
</a>

<?php endforeach; ?>


<!-- Shows the page numbers -->
<?php 
echo '<div class="pagination">';
echo $this->Paginator->prev('Previous', null, null, array('tag' => 'a','class' => 'prev disabled')); 
echo $this->Paginator->numbers(array('separator' => null,'class'=> 'numbers')); 
echo $this->Paginator->next('Next', null, null, array('tag' => 'a','class' => 'next disabled'));
echo '</div>'; 
}

?>

</div><!-- layout_left -->
<div id="layout_right" class="grid_8">
	<div id="search_mod"  class="white_mod_246_wrap">
	<div class="white_mod_246_top"></div>
	<div class="white_mod_246_content clearfix">
		<h3 class="module_title">Search</h3>
		<div class="module_content clearfix">
			<?php echo $this->Form->create('Deal',array('action'=>'index','class'=>'clearfix')); ?>
				<div class="checkbox_field">
					<div class="checkbox" ></div>
					<label class="double_line">North America <span>&amp; Caribbean</span></label>
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
					<div class="checkbox" ></div>
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
					<div class="checkbox" ></div>
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
					<div class="checkbox" ></div>
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
					<div class="checkbox" ></div>
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
					<div class="checkbox" ></div>
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
		</div>
	</div>
</div>

<div  class="white_mod_246_wrap">
	<div class="white_mod_246_top"></div>
	<div class="white_mod_246_content clearfix">
		<h3 class="module_title">FAQ</h3>
		<div class="module_content">
			<p class="sub_heading">How does this work?</p>
			<p>Click on a deal to the right and read more about the amazing location, great discount, and fun things to do.  Then book your reservation before the deal sells out!</p>
			<p class="divider">&nbsp;</p>
			<p class="sub_heading">How long do I have to book a destination deal?</p>
			<p>Each deal has a limited quantity, so make sure to book your destination before it sells out.  Some deals occasionally have an unlimited quantity, but these deals usually end within 7 days.</p>
			<p class="divider">&nbsp;</p>
			<p class="sub_heading">When will you have more deals?</p>
			<p>We are constantly adding new deals, while other deals are expiring. Check back frequently to see new deals and subscribe to our destination deal email alert.  </p>
		</div>
	</div>
</div>


</div><!-- #layout_right -->
<script type="text/javascript">
$(document).ready(function() {
	paging = $('.pagination .current').length;
	if(paging == 0){
		$('.pagination').css('display','none');
	}
	pagination_width = $('.pagination').width();
	$('.pagination').css({'width':pagination_width+'px','float':'none'});
	
	
	
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
