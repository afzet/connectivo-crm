
<h1 class="tit">Generate API Credentials</h1>
<?php if ($session->check('Message.flash')) $session->flash(); ?>
<br />
<div id="flashMessage" class="message note">NOTE: Do not include http:// only the name and extension, i.e. domain.com</div>
		<?=$form->create('Key');?>
			<fieldset>
				<table class="nostyle">
					<tbody>
					<tr>
						<td class="va-top">Website:</td>
						<td>
							<?=$form->input('Key.website', array('label' => '', 'class' => 'input-text')); ?>							
						</td>
					</tr>
					<tr>
						<td class="t-right" colspan="2"><input type="submit" value="Submit" class="input-submit"/></td>
					</tr>
				</tbody></table>
			</fieldset>
		<?=$form->end();?>