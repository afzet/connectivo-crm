<?php
include(dirname(dirname(dirname(dirname(__FILE__)))) . DS . 'config'. DS . 'conf.php');
class DATABASE_CONFIG extends CONF {
	
    var $default = array();

    function __construct()  {
	    $this->default = $this->database;
	    Configure::write('App.license', $this->license);
    }
    
    function DATABASE_CONFIG()  {
        $this->__construct();
    }
}
?>