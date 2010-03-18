<h1 class="tit">New Credentials</h1>
<?php if ($session->check('Message.flash')) $session->flash(); ?>
<table id="index">
<?php

$headers = array(
		'ID', 
		'Key', 
		'Signature',
		'Site', 
		'Created', 
		'Delete', 
	);
	
echo $html->tableHeaders($headers);
foreach ($data as $key => $value):
		echo $html->tableCells(
			array(
				$value['Key']['id'],
				$value['Key']['key'],
				$value['Key']['signature'],
				$value['Key']['site'],
				$time->nice($value['Key']['created']),
				$html->link($html->image('icons/delete.png'), array('controller'=>'keys', 'action'=>'delete', $value['Key']['id']), null, 'Are you sure?', false)
			),
			array('class'=>'row'),
			array('class'=>'altrow')
		);



endforeach;


?>
</table>