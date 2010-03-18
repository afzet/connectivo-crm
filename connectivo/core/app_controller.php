<?php

class AppController extends Controller {
	
	var $uses = array('Lead', 'Note');
	var $helpers = array('Html', 'Text', 'Form', 'Javascript', 'Dojo', 'Time', 'Number');
    var $components = array('Auth', 'RequestHandler');
	var $passed = null;
	var $replace = array(
			'phone' => array('+', '-', '(', ')', ' ')
		);

    function beforeFilter() {	
		// auth component stuff
		$this->Auth->authorize = 'actions';
        $this->Auth->loginRedirect = array('controller' => 'leads', 'action' => 'index');
		$this->Auth->allowedActions = array('*');
		$this->Auth->authError = 'Access Denied. Please contact the administrator.';
		$this->Auth->actionPath = 'controllers/';
		
		// if the user is logged in and see if they have open timeclocks and projects
		if ($this->Auth->user()) {			
			// log the user's actions
			foreach ($this->params['pass'] as $pass) {
				$this->passed .= $pass . ',';
			}
			
			$this->passed = rtrim($this->passed, ",");
			$this->logAction();
        }
        else {
        	if ($this->params['action'] != 'login') $this->redirect('/users/login');
        }
		
		// set our default page title into our view based off the current controller name
		$this->pageTitle = Inflector::humanize($this->params['controller']) . ' : ' . Inflector::humanize($this->params['action']);
	}
	
	// this function tracks our user's actions
	function logAction () {
		// prepare the data variable
		$this->data['ActionLog']['user_id'] = $this->Auth->user('id');
		$this->data['ActionLog']['controller'] = $this->params['controller'];
		$this->data['ActionLog']['action'] = $this->params['action'];
		$this->data['ActionLog']['params'] = $this->passed;
		
		// insert new log
		$actionLog = ClassRegistry::init('ActionLog');
		$actionLog->create();
		$actionLog->save($this->data);
		
		unset($this->data['ActionLog']);
	}

	function beforeRender() {	
		$this->set('task', $this->Note->getTasks());
		$this->set('settings', $this->getSettings());	
	}
	
	function getSettings() {
		$settings = ClassRegistry::init('Setting')->find('all', array('fields' => array('Setting.name', 'Setting.value')));
		foreach ($settings as $key => $value) {
			$data[$value['Setting']['name']] = $value['Setting']['value'];
		}
		return $data;
	}
		
	/**
	 * Phone Format Utility for 10 digit US Phone numbers
	 */
	function phone($data = '') {
		$data = str_replace($this->replace['phone'], '', $data);
		$data = ereg_replace("[^0-9]",'',$data);
		if(strlen($data) == 10) $data = '('. substr($data,0,3) .') '. substr($data,3,3) .'-'. substr($data,6,4);
		else $data = '('. substr($data,1,3) .') '. substr($data,4,3) .'-'. substr($data,7,4);
		return($data);
	}
}
?>