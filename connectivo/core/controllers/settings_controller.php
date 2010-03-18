<?php

class SettingsController extends AppController {
	
	var $name = 'Settings';
	var $helpers = array('Html', 'Form');

	function index() {
		$this->Setting->recursive = 0;
		$this->set('data', $this->paginate());
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->flash('invalid', 'index');
		}
		if (!empty($this->data)) {
			if ($this->Setting->save($this->data)) {
				$this->Session->setFlash('Setting Saved');
				$this->redirect('index');
			} else {
				$this->Session->setFlash('Setting Not Saved');
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Setting->read(null, $id);
		}
	}
}
?>