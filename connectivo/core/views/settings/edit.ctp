<h1 class="tit">Edit Setting</h1>
<?php if ($session->check('Message.flash')) $session->flash(); ?>

		<?=$form->create('Setting', array('edit'));?>
			<?=$form->input('Setting.id', array('type' => 'hidden')); ?>
			<fieldset>
				<table class="nostyle">
					<tbody>
					<tr>
						<td class="va-top">Name:</td>
						<td><?=$form->input('Setting.name', array('label' => '', 'class' => 'input-text', 'disabled' => 'disabled')); ?></td>
					</tr>
					<tr>
						<td class="va-top">Value:</td>
						<td><?=$form->input('Setting.value', array('label' => '', 'class' => 'input-text')); ?></td>
					</tr>
					<tr>
						<td class="t-right" colspan="2"><input type="submit" value="Submit" class="input-submit"/></td>
					</tr>
				</tbody></table>
			</fieldset>
		<?=$form->end();?>