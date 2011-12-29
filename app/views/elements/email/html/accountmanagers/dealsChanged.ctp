                            <b><u>The following deals went live:</u></b><br /><br />
							<?php foreach($newLiveDeals as $deal) {
								echo $deal['Deal']['title'] . "<br/>";
							}
							?>
							<b><u>The following deals closed:</u></b><br /><br />
							<?php foreach($newClosedDeals as $deal) {
								echo $deal['Deal']['title'] . "<br/>";
							}
							?>