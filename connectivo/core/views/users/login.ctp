<h1 class="tit">Login</h1>
<?php if ($session->check('Message.flash')) $session->flash(); ?>

		<?=$form->create('User', array('url' => '/users/login'));?>
			<fieldset>
				<table class="nostyle">
					<tbody>
					<tr>
						<td class="va-top">Username:</td>
						<td><?=$form->input('User.username', array('label' => '', 'class' => 'input-text')); ?></td>
					</tr>
					<tr>
						<td class="va-top">Password:</td>
						<td><?=$form->input('User.password', array('label' => '', 'class' => 'input-text')); ?></td>
					</tr>
					<tr>
						<td class="t-right" colspan="2"><input type="submit" value="Submit" class="input-submit"/></td>
					</tr>
				</tbody></table>
			</fieldset>
		<?=$form->end();?>
		<div id="demo-users">
			<p>
				<strong>Admin Access</strong><br />
				username: admin<br />
				password: admin
			</p>
			<p>
				<strong>Staff Access</strong><br />
				username: staff<br />
				password: staff
			</p>
		</div>