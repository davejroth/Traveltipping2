<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php __('TravelTipping'); ?>
		<?php echo $title_for_layout; ?>
	</title>
	<?php
		echo $this->Html->meta('icon');
		
		echo $this->Html->css('styles');
		echo $this->Html->css('/css/ui-lightness/jquery-ui');
		echo $this->Html->script('jquery');
		echo $this->Html->script('helpers');
		echo $this->Html->script('site');
		echo $this->Html->script('jquery-ui');
		echo $this->Html->script('jquery.center');
		//$this->AssetCompress->script('');
		echo $this->AssetCompress->includeAssets('false');
		echo $scripts_for_layout;
	?>
	
	<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-25056365-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<script type="text/javascript">

/*
Count down until any date script-
By JavaScript Kit (www.javascriptkit.com)
Over 200+ free scripts here!
Modified by Robert M. Kuhnhenn, D.O. 
on 5/30/2006 to count down to a specific date AND time,
on 10/20/2007 to a new format, and 1/10/2010 to include
time zone offset.
*/

/*  Change the items below to create your countdown target date and announcement once the target date and time are reached.  */
var current="today!"    //-->enter what you want the script to display when the target date and time are reached, limit to 20 characters
var year=2012    //-->Enter the count down target date YEAR
var month=2      //-->Enter the count down target date MONTH
var day=21       //-->Enter the count down target date DAY
var hour=0      //-->Enter the count down target date HOUR (24 hour clock)
var minute=0    //-->Enter the count down target date MINUTE
var tz=-5        //-->Offset for your timezone in hours from UTC (see http://wwp.greenwichmeantime.com/index.htm to find the timezone offset for your location)

//-->    DO NOT CHANGE THE CODE BELOW!    <--
var montharray=new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")

function countdown(yr,m,d,hr,min){
theyear=yr;themonth=m;theday=d;thehour=hr;theminute=min
    var today=new Date()
    var todayy=today.getYear()
    if (todayy < 1000) {todayy+=1900}
    var todaym=today.getMonth()
    var todayd=today.getDate()
    var todayh=today.getHours()
    var todaymin=today.getMinutes()
    var todaysec=today.getSeconds()
    var todaystring1=montharray[todaym]+" "+todayd+", "+todayy+" "+todayh+":"+todaymin+":"+todaysec
    var todaystring=Date.parse(todaystring1)+(tz*1000*60*60)
    var futurestring1=(montharray[m-1]+" "+d+", "+yr+" "+hr+":"+min);
    var futurestring=Date.parse(futurestring1)-(today.getTimezoneOffset()*(1000*60));
    var dd=futurestring-todaystring
    var dday=Math.floor(dd/(60*60*1000*24)*1)
    var dhour=Math.floor((dd%(60*60*1000*24))/(60*60*1000)*1)
    var dmin=Math.floor(((dd%(60*60*1000*24))%(60*60*1000))/(60*1000)*1)
    var dsec=Math.floor((((dd%(60*60*1000*24))%(60*60*1000))%(60*1000))/1000*1)
    if(dday<=0&&dhour<=0&&dmin<=0&&dsec<=0){
        document.getElementById('count2').innerHTML=current;
        document.getElementById('count2').style.display="block";
        document.getElementById('count2').style.width="390px";
        document.getElementById('dday').style.display="none";
        document.getElementById('dhour').style.display="none";
        document.getElementById('dmin').style.display="none";
        document.getElementById('days').style.display="none";
        document.getElementById('hours').style.display="none";
        document.getElementById('minutes').style.display="none";
        document.getElementById('seconds').style.display="none";
        return;
    }
    else {
        document.getElementById('count2').style.display="none";
        document.getElementById('dday').innerHTML=dday;
        document.getElementById('dhour').innerHTML=dhour;
        document.getElementById('dmin').innerHTML=dmin;
        setTimeout("countdown(theyear,themonth,theday,thehour,theminute)",1000);
    }
}

</script>



</head>
<body onLoad="countdown(year,month,day,hour,minute);">
	<div id="overlay"></div>
	<div id="layout_container">
		<?php if(!$subscribed) { ?>
		<div id="subscribe_form_wrap" class="overlay_form_box">
			<?php echo $this->element('new_subscriber'); 		?>
			</div>
			<?php }?>
		<div id="layout_header">
			<?php echo $this->element('header'); ?>
			<div class="clouds"></div>
		</div><!-- #layout_header -->
		<div id="layout_main">
			<div id="layout_center" class="container_30 clearfix">
				<?php echo $this->Session->flash(); ?>
				<div id="layout_content">
					<?php echo $content_for_layout; ?>
				</div><!-- layout_content -->
			</div><!-- #layout_center -->
		</div><!-- #layout_main -->
		<div id="layout_footer">
			<?php echo $this->element('footer'); ?>
		</div><!-- #layout_footer -->	
	</div><!-- #layout_container -->
	
		<script type="text/javascript">
$(document).ready(function() {
		$('.notification').center();
	$('.notification').css('display','block')
$('.notification').fadeOut(3000,'easeInCubic',function(){
	$('.notification').remove()
});

});
</script>
</body>
</html>