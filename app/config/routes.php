<?php
/**
 * Routes configuration
 *
 * In this file, you set up routes to your controllers and their actions.
 * Routes are very important mechanism that allows you to freely connect
 * different urls to chosen controllers and their actions (functions).
 *
 * PHP versions 4 and 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2010, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2010, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       cake
 * @subpackage    cake.app.config
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */
/**
 * Here, we are connecting '/' (base path) to controller called 'Pages',
 * its action called 'display', and we pass a param to select the view file
 * to use (in this case, /app/views/pages/home.ctp)...
 */
	Router::connect('/', array('controller' => 'pages', 'action' => 'display', 'home'));
/**
 * ...and connect the rest of 'Pages' controller's urls.
 */
 
$staticPages = array(
        'about',
        'advertise',
        'careers',
        'contact',
        'faq',
        'how-it-works',
        'merchant-terms',
        'partnerships',
        'press',
        'user-policies',
        'user-terms',
		'calendar'
);
 
$staticList = implode('|', $staticPages);
 
Router::connect('/:static', array(
        'plugin' => false,
        'controller' => 'pages',
        'action' => 'display'), array(
                'static' => $staticList,
                'pass' => array('static')
                )
        );
	//Router::connect('/pages/*', array('controller' => 'pages', 'action' => 'display'));
	
	Router::connect('/cache_css/*', array('plugin' => 'asset_compress', 'controller' => 'css_files', 'action' => 'get'));
Router::connect('/cache_js/*', array('plugin' => 'asset_compress', 'controller' => 'js_files', 'action' => 'get'));
