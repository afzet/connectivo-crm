<?php
class PaymentsController extends AppController {

	var $name = 'Payments';
	var $helpers = array('Html', 'Form');
	var $paginate = array(
			'fields' => array(
				'Payment.id', 'Payment.code', 'Payment.billing_name', 'Payment.billing_zip', 'Payment.card_type', 
				'Payment.card_number', 'Payment.amount', 'Payment.created', 
			),
			'order' => 'Payment.id DESC'
		);

	function index() {
		$this->Payment->recursive = 0;
		$this->set('data', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->flash('invalid', 'index');
		}
		$this->set('Payment', $this->Payment->read(null, $id));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->flash('invalid', 'index');
		}
		if (!empty($this->data)) {
			if ($this->Payment->save($this->data)) {
				$this->Session->setFlash('Payment Saved');
				$this->redirect('index');
			} else {
				$this->Session->setFlash('Payment Not Saved');
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Payment->read(null, $id);
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash('Payment Invalid');
		}
		if ($this->Payment->del($id)) {
			$this->Session->setFlash('Payment Deleted');
			$this->redirect('index');
		}
	}

}
?>
