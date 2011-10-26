                      
                           Please click on the following link to reset your password:<br /><br />
						   <a href="https://traveltipping.com/users/newPassword/<?php echo $passwordReset['PasswordReset']['confirmation'];?>">https://traveltipping.com/users/newPassword/<?php echo $passwordReset['PasswordReset']['confirmation'];?></a>
                            
                           <?php $this->Html->link('Reset Password', array('controller'=>'users', 'action'=>'newPassword', $passwordReset['PasswordReset']['confirmation'])); ?><br /><br />
                            
							If clicking on the link above doesn’t work, then copy and paste the link into your browser.  <br /> <br />
							
                            Best regards,<br /><br />
                            
                            The TravelTipping Team<br />
                            <a href="http://www.traveltipping.com" target="_blank" style="text-decoration:underline;">www.traveltipping.com</a>
 