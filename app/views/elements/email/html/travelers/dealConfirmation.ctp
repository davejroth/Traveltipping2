 <!-- Scott's update below ------------------------------------------------------------------------------------>
       
                            Hi <?php echo $traveler['Traveler']['first_name']?>,<br /><br />
                            
                            Thanks for booking a destination deal with TravelTipping.  <br/><br />
                            
                            Here are the details of your trip:<br /><br />
                            
                                                      <table align="center" cellpadding="0" cellspacing="0" style="margin-top:10px;margin-bottom:20px;" width="554">
                              <tbody>
                                <tr>
                                  <td colspan="2" align="left" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:20px;padding-left:30px;font-family:'arial';font-size:14px;font-weight:bold;color:#444545;" valign="top">
                                    <?php echo $deal['Deal']['title']; ?> 
                                    
                                  </td>
                                </tr>
                                
                                <tr>
                                  <td width="115" align="right" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:30px;font-family:'arial';font-size:14px;color:#444545;" valign="top">
                                    Check-in Date:
                                    
                                  </td>
                                  <td align="left" width="377" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:30px;font-weight:bold;font-family:'arial';font-size:14px;color:#3CAACC;" valign="top">
                                    <?php echo date_format(date_create($dealPurchase['DealPurchase']['start_date']), 'l, F jS, Y'); ?>
                                     
                                  </td>
                                </tr>
                                
                                <tr>
                                  <td width="115" align="right" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:30px;font-family:'arial';font-size:14px;color:#444545;" valign="top">
                                    Check-out Date:
                                    
                                  </td>
                                  <td align="left" width="377" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:30px;font-family:'arial';font-weight:bold;font-size:14px;color:#3CAACC;" valign="top">
                                    <?php echo date_format(date_create($dealPurchase['DealPurchase']['end_date']), 'l, F jS, Y'); ?>                                    
                                  </td>
                                </tr>
                                
                                <tr>
                                  <td width="115" align="right" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:30px;font-family:'arial';font-size:14px;color:#444545;" valign="top">
                                    # of Nights
                                    
                                  </td>
                                  <td align="left" width="377" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:10px;padding-left:30px;font-family:'arial';font-size:14px;color:#444545;" valign="top">
                                   <?php echo $dealPurchase['DealPurchase']['nights'];?>                                  
                                  </td>
                                </tr> 
                                 
                                <tr>
                                  <td align="right" width="115" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:30px;font-family:'arial';font-size:14px;color:#444545;" valign="top">
                                      Price paid:
                                      
                                  </td>
                                  <td align="left" width="377" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:20px;padding-left:30px;font-family:'arial';font-size:14px;color:#444545;" valign="top">
                                      <?php echo '$' . $dealPurchase['DealPurchase']['purchase_amount'];?>
                                  </td>
                                </tr>
                                  
                                <tr>
                                  <td align="left" colspan="2" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:30px;font-family:'arial';font-size:14px;color:#444545;font-weight:bold;" valign="top">
                                    <?php echo $deal['Venue']['name']; ?>
                                    
                                  </td>
                                </tr>
                                
                                <tr>
                                  <td align="left" colspan="2" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:30px;font-family:'arial';font-size:14px;color:#444545;" valign="top">
                                    <?php echo $deal['Venue']['address1']; ?>
									<?php echo (!empty($deal['Venue']['address2']) ? $deal['Venue']['address2'] . '<br />' : ''  ); ?>
                                    
                                  </td>
                                </tr>
                                
                                <tr>
                                  <td align="left" colspan="2" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:30px;font-family:'arial';font-size:14px;color:#444545;" valign="top">
                                    <?php echo $deal['Venue']['city'] . ', ' . $deal['Venue']['state'] . ' ' . $deal['Venue']['postal_code']; ?>
                                    
                                  </td>
                                </tr>
                                
                                <tr>
                                  <td align="left" colspan="2" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:20px;padding-left:30px;font-family:'arial';font-size:14px;color:#444545;" valign="top">
                                    <?php echo $venue['Country']['name']; ?>
                                    
                                  </td>
                                </tr>
                                
                                <tr>
                                  <td align="left" colspan="2" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:30px;font-family:'arial';font-size:14px;color:#444545;" valign="top">
                                    <?php echo $deal['Venue']['email']; ?>
                                    
                                  </td>
                                </tr>
                                
                                <tr>
                                  <td align="left" colspan="2" style="margin:0 auto;padding-top:0px;padding-right:0px;padding-bottom:20px;padding-left:30px;font-family:'arial';font-size:14px;color:#444545;" valign="top">
                                    <a href="<?php echo $deal['Venue']['website']; ?>"><?php echo $deal['Venue']['website']; ?></a>
                                    
                                  </td>
                                </tr>
                                
                              </tbody>
                            </table> 
                           
                           
                             Cover your trip with travel insurance.  <a href="http://www.worldnomads.com/af.aspx?affiliate=tvtippg&subid=&path=http://www.worldnomads.com/insurance.aspx&utm_source=tvtippg&utm_medium=textlink&utm_campaign=easy_url_generic"><strong>WorldNomads</strong></a> has comprehensive coverage, good rates, and great service.  You can get a quote directly from their website at <a href="http://www.worldnomads.com/af.aspx?affiliate=tvtippg&subid=&path=http://www.worldnomads.com/insurance.aspx&utm_source=tvtippg&utm_medium=textlink&utm_campaign=easy_url_generic">www.worldnomads.com</a>.<br /><br /><br />
                            
                            Best regards,<br /><br />
                            
                            The TravelTipping Team<br />
                            <a href="http://www.traveltipping.com" target="_blank" style="text-decoration:underline;">www.traveltipping.com</a>
                            