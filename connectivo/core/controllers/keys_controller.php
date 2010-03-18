<?php

class KeysController extends AppController {
	
	function add() {
		if(!empty($this->data)) {
			// clean post var
			App::import('Core', 'Sanitize');
			$site = Sanitize::clean($this->data['Key']['website']);
			
			// set tokens
			$tokens['Key']['key'] = $this->__token($site);
			$tokens['Key']['signature'] = $this->__signature($site);
			$tokens['Key']['site'] = '*.'. $site;
			if ($this->Key->save($tokens)) {
				$this->Session->setFlash('API Key Saved');
				$this->redirect('index', null, false);
			}
			else {
				$this->Session->setFlash('API Note Saved');
			}
			
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash('Key Invalid');
			$this->redirect('index');
		}
		if ($this->Key->del($id)) {
			$this->Session->setFlash('Key Deleted');
			$this->redirect('index');
		}
	}
	
	function index() {
		$data = $this->Key->find('all');
		$this->set(compact('data'));
	}
	
	function __token($site) {
		$hash = md5(serialize(Configure::read('Database')) . Configure::read('Security.salt'));
		return substr($hash, 0, 12);
	}
	
	function __signature($site) {
		$hash = md5(serialize(Configure::read('Database')) . Configure::read('Security.salt'));
		return sha1($hash . $site);
	}
}
?>