<?php

class CalendarHelper extends Helper {
	var $helpers = array('Html');
	
	function renderMonth($month,$year){
		
		/**
		* Initialze Calendar Variables
		*/
		$firstdate = mktime(0, 0, 0, $month, 1, $year);
		$lastdate = mktime(0, 0, 0, $month+1, 0, $year);
		$firstday = strftime("%a", $firstdate);
		$day = 1;
		$month_array = array(
			1 => 'January', 2 => 'February', 3 => 'March', 4 => 'April', 5 => 'May', 6 => 'June', 7 => 'July', 8 => 'August', 9 => 'September', 10 => 'October', 11 => 'November', 12 => 'December'
		);
		$days_array = array(
			1 => 'Sun', 2 => 'Mon', 3 => 'Tue', 4 => 'Wed', 5 => 'Thu', 6 => 'Fri', 7 => 'Sat',
			8 => 'Sun', 9 => 'Mon', 10 => 'Tue', 11 => 'Wed', 12 => 'Thu', 13 => 'Fri', 14 => 'Sat',
			15 => 'Sun', 16 => 'Mon', 17 => 'Tue', 18 => 'Wed', 19 => 'Thu', 20 => 'Fri', 21 => 'Sat',
			22 => 'Sun', 23 => 'Mon', 24 => 'Tue', 25 => 'Wed', 26 => 'Thu', 27 => 'Fri', 28 => 'Sat',
			29 => 'Sun', 30 => 'Mon', 31 => 'Tue', 32 => 'Wed', 33 => 'Thu', 34 => 'Fri', 35 => 'Sat',
			36 => 'Sun', 37 => 'Mon', 38 => 'Tue', 39 => 'Wed', 40 => 'Thu', 41 => 'Fri', 42 => 'Sat'
		);
		
		/**
		* Initialize Calendar
		*/
		
		$calendar = '<div id="calendar_'.$year.'_'.$month.'" class="month_wrap">';
		$calendar .= '<div class="calendar_heading clearfix"> <h3>'.$month_array[$month].' '.$year.'</h3>';
		$calendar .= '</div>'; 
		$calendar .= '<table class="calendar" cellspacing="0">';
		$calendar .= $this->Html->tableHeaders(array('Sun','Mon','Tue','Wed','Thu','Fri','Sat'));
		
		
		/**
		* First Week
		*/
		$calendar .= '<tr>';
		for($i=1; $i<=7; $i++){
			if($day <= 1 && $firstday != $days_array[$i]){
				$calendar .= '<td class="blank"> <a href="">&nbsp;</a> </td>';
			}
			else{
				$calendar .= '<td><a href="#">'.$day.'</a></td>';
				$day++;
			}
			
		}
		$calendar .= '</tr>';
		
		/**
		* Second Week
		*/
		$calendar .= '<tr>';
		for($i=8; $i<=14; $i++){
			$calendar .= '<td><a href="#">'.$day.'</a></td>';
			$day++;
		}
		$calendar .= '</tr>';
		
		/**
		* Third Week
		*/
		$calendar .= '<tr>';
		for($i=15; $i<=21; $i++){
			$calendar .= '<td><a href="#">'.$day.'</a></td>';
			$day++;
		}
		$calendar .= '</tr>';
		
		/**
		* Fourth Week
		*/
		$calendar .= '<tr>';
		for($i=22; $i<=28; $i++){
			if(strftime("%d", $lastdate) < $day){
				$calendar .= '<td class="blank"> <a href="">&nbsp;</a> </td>';
			}
			else{
				$calendar .= '<td><a href="#">'.$day.'</a></td>';
				$day++;
			}
			
		}
		$calendar .= '</tr>';
		
		/**
		* Fifth Week
		*/
		if($day < strftime("%d", $lastdate)){
			$calendar .= '<tr>';
			for($i=29; $i<=35; $i++){
				if(strftime("%d", $lastdate) < $day){
					$calendar .= '<td class="blank"> <a href="">&nbsp;</a> </td>';
				}
				else{
					$calendar .= '<td><a href="#">'.$day.'</a></td>';
					$day++;
				}
			}
			$calendar .= '</tr>';
		}
		
		/**
		* Sixth Week
		*/
		if($day < strftime("%d", $lastdate)){
			$calendar .= '<tr>';
			for($i=36; $i<=42; $i++){
				if(strftime("%d", $lastdate) < $day){
					$calendar .= '<td class="blank"> <a href="">&nbsp;</a> </td>';
				}
				else{
					$calendar .= '<td><a href="#">'.$day.'</a></td>';
					$day++;
				}
			}
			$calendar .= '</tr>';
		}
		
		$calendar .= '</table></div>';
		
		return $this->output($calendar);
	}
	
	
	function dealCalendars($deal_valid,$deal_expire){
		
		/**
		* Calculate how many calendar months to display.
		*/
		$first = new DateTime($deal_valid); 
    $last = new DateTime($deal_expire); 
    $interval = $first->diff($last); 
    $calendar['months'] = $interval->format('%m'); 
    $calendar['days'] = $interval->format('%d');
    if($calendar['months'] == 0){
    	$calendar['months'] = 2;
    }
    else if($calendar['days'] > 0 || $calendar['months'] == 1){
    	$calendar['months'] += 1;
    }
    
    $first_date = date_parse($deal_valid);
    $last_date = date_parse($deal_expire);
    
    /**
    * Create Calendar Objects
    */
    $calendarObj = '<div class="calendar_wrap clearfix"><div class="calendar_controls"><a class="prev_cal" href="#"></a><a class="next_cal" href="#"></a></div><div class="calendar_slider clearfix">';
    for($i = 1; $i <= $calendar['months']; $i++){
  		$calendarObj .= $this->renderMonth($first_date['month'],$first_date['year']);
  		if($first_date['month'] == 12){
  			$first_date['month'] = 1;
  			$first_date['year']++;
  		}
  		else{
  			$first_date['month']++;
  		}	
    }
    $calendarObj .= '</div></div>';
    return $this->output($calendarObj);

	}
	
}
?>