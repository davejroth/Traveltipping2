   Dear <?php echo $Merchant['Merchant']['first_name'] . ' ' . $Merchant['Merchant']['last_name'] . ','?> <br /><br />
                            
   The deal, <?php echo $Deal['Deal']['name'] ?>, has received reservations today. Below are the booking details. You can also find all reservation information in your account.<br /><br />
                            
	<table align="center" cellpadding="0" cellspacing="0" style="padding-top:0px;margin-bottom:0px;" width="520">
                              <tbody>                   
                                 <!-- Header Row -->
                                 <tr>
                                	  <td width="121" align="left" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:5px;padding-left:0px;font-family:'arial';font-size:12px;color:#3CAACC;font-weight:bold;text-decoration:underline;" valign="top">
                                   First Name
                                  </td>
                                  <td width="151" align="left" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:5px;padding-left:0px;font-family:'arial';font-size:12px;color:#3CAACC;font-weight:bold;text-decoration:underline;" valign="top">
                                    Last Name
                                  </td>
                                  <td width="63" align="left" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:5px;padding-left:0px;font-family:'arial';font-size:12px;color:#3CAACC;font-weight:bold;text-decoration:underline;" valign="top">
                                    Nights
                                  </td>
                                   <td width="91" align="left" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:5px;padding-left:0px;font-family:'arial';font-size:12px;color:#3CAACC;font-weight:bold;text-decoration:underline;" valign="top">
                                    Check-In
                                  </td>
                                   <td width="92" align="left" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:5px;padding-left:0px;font-family:'arial';font-size:12px;color:#3CAACC;font-weight:bold;text-decoration:underline;" valign="top">
                                    Check-Out
                                  </td>
                                </tr>
                                <!-- End Header Row -->
						<?php for($i = 0; $i < count($DealPurchases); $i++) { ?>
								<!-- Repeating Row -->
                                  <tr>
                                	  <td width="121" align="left" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;font-family:'arial';font-size:12px;color:#444545;font-weight:normal;" valign="top">
                                   <?php echo $DealPurchases[$i]['Traveler']['first_name'] ?>
                                    
                                  </td>
                                  <td width="151" align="left" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;font-family:'arial';font-size:12px;color:#444545;font-weight:normal;" valign="top">
                                    <?php echo $DealPurchases[$i]['Traveler']['last_name'] ?>
                                   
                                  </td>
                                  <td width="63" align="left" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;font-weight:normal;font-family:'arial';font-size:12px;color:#444545;" valign="top">
                                    <?php echo $DealPurchases[$i]['DealPurchase']['nights'] ?>
                                    
                                  </td>
                                   <td width="91" align="left" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;font-weight:normal;font-family:'arial';font-size:12px;color:#444545;" valign="top">
                                    <?php echo date_format(date_create($DealPurchases[$i]['DealPurchase']['start_date']), 'F jS, Y'); ?>
                                    
                                  </td>
                                   <td width="92" align="left" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;font-weight:normal;font-family:'arial';font-size:12px;color:#444545;" valign="top">
                                    <?php echo date_format(date_create($DealPurchases[$i]['DealPurchase']['end_date']), 'F jS, Y'); ?>
                                    
                                  </td>
                                </tr>
						<?php } //Close repeating row loop ?>
						
								</tbody>
                            </table> 
                            <br /><br />
                            
                            Best regards,<br /><br />
                            
                            The TravelTipping Team<br />
                            <a href="http://www.traveltipping.com" target="_blank" style="text-decoration:underline;">www.traveltipping.com</a>
 