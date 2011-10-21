                            Hi <?php echo $traveler['Traveler']['first_name']?>, <br /><br />
							
							Thanks for booking your destination deal with TravelTipping!<br /><br />
                            
                            Here are the details to your trip:<br /><br />
                            
							<?php echo $deal['Deal']['title']; ?><br />
							Price Paid: <?php echo $dealPurchase['DealPurchase']['purchase_amount'];?><br /><br />
							
							Check-in Date: <?php echo $dealPurchase['DealPurchase']['start_date']; ?><br />
							Departure Date: <?php echo $dealPurchase['DealPurchase']['end_date']; ?><br />
							
							<?php echo $deal['Venue']['name']; ?><br />
							<?php echo $deal['Venue']['address1']; ?><br />
							<?php echo (!empty($deal['Venue']['address2']) ? $deal['Venue']['address2'] . '<br />' : ''  ); ?>
							<?php echo $deal['Venue']['state']; ?><br />
							<?php echo $deal['Venue']['postal_code']; ?><br />
							<?php echo $deal['Venue']['country_id']; ?><br />
							<?php echo $deal['Venue']['email']; ?><br />
							<?php echo $deal['Venue']['website']; ?><br /><br />
							
							You can review the details of this deal by signing into your account and viewing your destination deal by going <a href="https://traveltipping.com/users/login">here</a>. <br /><br />
							
							If you have any further questions, please email us directly at support@traveltipping.com instead of replying to this email message.<br /><br />
							
							Best regards,<br /> <br />
							
						    The TravelTipping Team<br />
                            <a href="http://www.traveltipping.com" target="_blank" style="text-decoration:underline;">www.traveltipping.com</a>
 