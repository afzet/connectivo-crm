<h1 class="tit">Settings</h1>
<?php if ($session->check('Message.flash')) $session->flash(); ?>
<?=$this->element('pagination');?>
<table id="index">
<?php

$headers = array(
		$paginator->sort('ID', 'id'),
		$paginator->sort('Name', 'name'),
		$paginator->sort('Value', 'value'),
		$paginator->sort('Created', 'created'),
		$paginator->sort('Modified', 'modified'),
		'Actions'
	);
	
echo $html->tableHeaders($headers);
	
foreach ($data as $key => $value):	  
		echo $html->tableCells(
			array(
				$value['Setting']['id'],
				$value['Setting']['name'],
				$value['Setting']['value'],
				$time->nice($value['Setting']['created']),
				$time->nice($value['Setting']['modified']),
				$html->link($html->image('icons/edit.png'), array('action'=>'edit', $value['Setting']['id']), null, null, false)
			),
			array('class'=>'row'),
			array('class'=>'altrow')
		);



endforeach;


?>
</table>
<?=$this->element('pagination');?>