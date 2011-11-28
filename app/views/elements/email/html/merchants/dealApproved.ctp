   Dear <?php echo $Merchant['Merchant']['first_name'] . ' ' . $Merchant['Merchant']['last_name'] . ','?> <br /><br />
                            
                            The deal, <?php echo $Deal['Deal']['name'] ?>, is scheduled to be released and will go live shortly.<br /><br />
                            
                           RELEASE DATE<br /><br />
								<?php echo date_format(date_create($Deal['Deal']['deal_live']), 'l, F jS, Y'); ?><br />

								at 12:00AM Pacific Standard Time.
				</b><br /><br />
                            
                            Please contact your account manager if you have any questions.<br /><br />
                            
                            Best regards,<br /><br />
                            
                            The TravelTipping Team<br />
                            <a href="http://www.traveltipping.com" target="_blank" style="text-decoration:underline;">www.traveltipping.com</a>
 