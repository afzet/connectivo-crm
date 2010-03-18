<h1 class="tit">Payments</h1>
<?php if ($session->check('Message.flash')) $session->flash(); ?>
<?=$this->element('pagination');?>
<table id="index">
<?php

$headers = array(
		$paginator->sort('ID', 'id'),
		$paginator->sort('Code', 'code'),
		$paginator->sort('Name', 'billing_name'),
		$paginator->sort('Billing Zip', 'billing_zip'),
		$paginator->sort('Card Type', 'card_type'),
		$paginator->sort('Card Number', 'card_number'),
		$paginator->sort('Amount', 'amount'),
		$paginator->sort('Created', 'created'),
		'Actions'
	);
	
echo $html->tableHeaders($headers);
	
foreach ($data as $key => $value):	  
		echo $html->tableCells(
			array(
				$value['Payment']['id'],
				$value['Payment']['code'],
				$value['Payment']['billing_name'],
				$value['Payment']['billing_zip'],
				$value['Payment']['card_type'],
				$dojo->creditcard($value['Payment']['card_number']),
				$number->currency($value['Payment']['amount'], 'USD'),
				$value['Payment']['created'],
				$html->link($html->image('icons/edit.png'), array('action'=>'edit', $value['Payment']['id']), null, null, false) .' '.
				$html->link($html->image('icons/delete.png'), array('action'=>'delete', $value['Payment']['id']), null, null, false)
			),
			array('class'=>'row'),
			array('class'=>'altrow')
		);



endforeach;


?>
</table>
<?=$this->element('pagination');?>