<?php	

		/* Backup.php
		 * Backup Script below - taken from: http://wiki.lunarpages.com/Backup_Databases_using_a_cron
		 * This script creates a full backup of the whatever database thew cake app is using and emails it to backups@traveltipping.com
		 */
		 /**
  Standard CakePHP app/webroot/index.php
*/
	if (!defined('DS')) {
		define('DS', DIRECTORY_SEPARATOR);
	}

	if (!defined('ROOT')) {
		define('ROOT', dirname(dirname(dirname(__FILE__))));
	}

	if (!defined('APP_DIR')) {
		define('APP_DIR', basename(dirname(dirname(__FILE__))));
	}

	if (!defined('CAKE_CORE_INCLUDE_PATH')) {
		define('CAKE_CORE_INCLUDE_PATH', ROOT);
	}


	if (!defined('WEBROOT_DIR')) {
		define('WEBROOT_DIR', basename(dirname(__FILE__)));
	}
	if (!defined('WWW_ROOT')) {
		define('WWW_ROOT', dirname(__FILE__) . DS);
	}
	if (!defined('CORE_PATH')) {
		if (function_exists('ini_set') && ini_set('include_path', CAKE_CORE_INCLUDE_PATH . PATH_SEPARATOR . ROOT . DS . APP_DIR . DS . PATH_SEPARATOR . ini_get('include_path'))) {
			define('APP_PATH', null);
			define('CORE_PATH', null);
		} else {
			define('APP_PATH', ROOT . DS . APP_DIR . DS);
			define('CORE_PATH', CAKE_CORE_INCLUDE_PATH . DS);
		}
	}
	if (!include(CORE_PATH . 'cake' . DS . 'bootstrap.php')) {
		trigger_error("CakePHP core could not be found.  Check the value of CAKE_CORE_INCLUDE_PATH in APP/webroot/index.php.  It should point to the directory containing your " . DS . "cake core directory and your " . DS . "vendors root directory.", E_USER_ERROR);
	}
	if (isset($_GET['url']) && $_GET['url'] === 'favicon.ico') {
		return;
	} else {
		 
		 $datestamp = date("Y-m-d");      // Current date to append to filename of backup file in format of YYYY-MM-DD
		 App::import('Core', 'ConnectionManager');
		$dataSource = ConnectionManager::getDataSource('default');
		$dbuser = $dataSource->config['login'];
		$dbpwd = $dataSource->config['password'];
		$dbname = $dataSource->config['database'];
		$filename = "backup/backup-$datestamp.sql.gz";
		//echo $_SERVER['DOCUMENT_ROOT']

		/* CONFIGURE THE FOLLOWING SEVEN VARIABLES TO MATCH YOUR SETUP */
		//$dbuser = "admin";            // Database username
		//$dbpwd = "october9";            // Database password
		//$dbname = "development";            // Database name. Use --all-databases if you have more than one
		//$filename= "/home/trave125/public_html/dev/backup/backup-$datestamp.sql.gz";   // The name (and optionally path) of the dump file
		$to = "backups@traveltipping.com";      // Email address to send dump file to
		$from = "backups@traveltipping.com";      // Email address message will show as coming from.
		$subject = "$dbname $datestamp MySQL backup file";      // Subject of email
		
		$command = "mysqldump -u $dbuser --password=$dbpwd $dbname | gzip > $filename";
		//echo $command;
		$result = passthru($command);
		
		//echo $command;
		
		$attachmentname = array_pop(explode("/", $filename));   // If a path was included, strip it out for the attachment name
		
		$message = "Compressed database backup file $attachmentname attached.";
		$mime_boundary = "<<<:" . md5(time());
		$data = chunk_split(base64_encode(implode("", file($filename))));
		
		$headers = "From: $from\r\n";
		$headers .= "MIME-Version: 1.0\r\n";
		$headers .= "Content-type: multipart/mixed;\r\n";
		$headers .= " boundary=\"".$mime_boundary."\"\r\n";
		
		$content = "This is a multi-part message in MIME format.\r\n\r\n";
		$content.= "--".$mime_boundary."\r\n";
		$content.= "Content-Type: text/plain; charset=\"iso-8859-1\"\r\n";
		$content.= "Content-Transfer-Encoding: 7bit\r\n\r\n";
		$content.= $message."\r\n";
		$content.= "--".$mime_boundary."\r\n";
		$content.= "Content-Disposition: attachment;\r\n";
		$content.= "Content-Type: Application/Octet-Stream; name=\"$attachmentname\"\r\n";
		$content.= "Content-Transfer-Encoding: base64\r\n\r\n";
		$content.= $data."\r\n";
		$content.= "--" . $mime_boundary . "\r\n";
		
		mail($to, $subject, $content, $headers);

		//unlink($filename);   //delete the backup file from the server
	}
?>