<?php

class CalendarHelper extends Helper {
	var $helpers = array('Html');
	
	function renderMonth($month,$year, $deal_valid, $deal_expire, $datesFull){
		
		$validTime = strtotime($deal_valid);
		$expireTime = strtotime($deal_expire);
		/**
		* Initialze Calendar Variables
		*/
		$firstdate = mktime(0, 0, 0, $month, 1, $year);
		$lastdate = mktime(0, 0, 0, $month+1, 0, $year);
		//echo($lastdate);
		$firstday = strftime("%a", $firstdate);
		$day = 1;
		$month_array = array(
			1 => 'January', 2 => 'February', 3 => 'March', 4 => 'April', 5 => 'May', 6 => 'June', 7 => 'July', 8 => 'August', 9 => 'September', 10 => 'October', 11 => 'November', 12 => 'December'
		);
		$days_array = array(
			0 => 'Sun', 1 => 'Mon', 2 => 'Tue', 3 => 'Wed', 4 => 'Thu', 5 => 'Fri', 6 => 'Sat',
		);
		
		/**
		* Initialize Calendar
		*/
		
		$month_padded = str_pad($month,2,"0",STR_PAD_LEFT);
		
		
		$calendar = '<div id="calendar_'.$year.'_'.$month_padded.'" class="month_wrap">';
		$calendar .= '<div class="calendar_heading clearfix"> <h3>'.$month_array[$month].' '.$year.'</h3>';
		$calendar .= '</div>'; 
		$calendar .= '<table class="calendar" cellspacing="0">';
		$calendar .= $this->Html->tableHeaders(array('Sun','Mon','Tue','Wed','Thu','Fri','Sat'));
		
		/**
		 * Iterate through each day
		 * If the day is not in the month
		 * Print a blank space
		 * If the day is in the month
		 * Print the date
		 */
		/**
		* First Week
		*/
		$currentTime = $firstdate; //Exclude days outside the range
		$calendar .= '<tr>';
		for($i=0; $i<=41; $i++){
			if($i % 7 ==0 && $i != 0)
			{
				$calendar .= '</tr><tr>';
			}
			if(($day <= 1 && $firstday != $days_array[$i]) || strftime("%d", $lastdate) < $day){
				$calendar .= '<td class="blank"><a href="#">&nbsp;</a></td>';
			}
			else{
				if($currentTime < $validTime || $currentTime >= $expireTime) {
					$calendar .= '<td class="outside_range"><a href="#">'.$day.'</a></td>';
				}
				elseif($datesFull[date('Y-m-d',$currentTime)] == true){
					$calendar .= '<td class="unavailable"><a href="#">'.$day.'</a></td>';
				}
				else
				{
					$day_padded = str_pad($day,2,"0",STR_PAD_LEFT);
					$calendar .= '<td id="'.$year.'-'.$month_padded.'-'.$day_padded.'" class="available"><a href="#">'.$day.'</a></td>';
				}

				$day++;
				$currentTime += 86400;  //Add num of seconds in a day
			}
			
			
		}
		$calendar .= '</tr>';
		
		/**
		* Second Week
		
		$calendar .= '<tr>';
		for($i=8; $i<=14; $i++){
			$calendar .= '<td><a href="#">'.$day.'</a></td>';
			$day++;
		}
		$calendar .= '</tr>';
		
		/**
		* Third Week
		
		$calendar .= '<tr>';
		for($i=15; $i<=21; $i++){
			$calendar .= '<td><a href="#">'.$day.'</a></td>';
			$day++;
		}
		$calendar .= '</tr>';
		
		/**
		* Fourth Week
		
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
		
		if(true){
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
		*/
		$calendar .= '</table></div>';
		
		return $this->output($calendar);
	}
	
	/**
	 *
	 * dealCalendars takes the $id of a deal and creates a calendar including the available, out of range, and booked dates.
	 * @params: $id of deal
	 * @returns: calendar object.
	 */
	function dealCalendars($id){
		App::import('model', 'Deal');
		$deal = new Deal();
		$thisDeal = $deal->findById($id);
		$deal_valid = $thisDeal['Deal']['deal_valid'];
		$deal_expire = $thisDeal['Deal']['deal_expire'];
		
		App::import('model','DealPurchase');
		$dealPurchase = new DealPurchase();
		$datesFull = $dealPurchase->getDatesFull($id);
		
		/**
		* Calculate how many calendar months to display.
		*/ 
		$firstDate = date_parse($deal_valid);
		$firstMonth = $firstDate['month'];
		$secondDate = date_parse($deal_expire);
		$secondMonth = $secondDate['month'];
		
		if($secondMonth < $firstMonth) {
			$secondMonth = $secondMonth + 12;  //This is assuming deals will only cross one year.
		}
		$interval = $secondMonth - $firstMonth;
		$calendar['months'] = $interval;
		
		$first_date = date_parse($deal_valid);
		$last_date = date_parse($deal_expire);
		
		/**
		* Create Calendar Objects
		*/
		$calendarObj = '<div class="calendar_wrap clearfix"><div class="calendar_controls"><a class="prev_cal" href="#"></a><a class="next_cal" href="#"></a></div><div class="calendar_slider clearfix">';
		for($i = 0; $i <= $calendar['months']; $i++){
			$calendarObj .= $this->renderMonth($first_date['month'],$first_date['year'], $deal_valid, $deal_expire, $datesFull);
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