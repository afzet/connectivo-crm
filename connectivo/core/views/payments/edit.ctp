<h1 class="tit">Edit Payment</h1>
<?php if ($session->check('Message.flash')) $session->flash(); ?>

		<?=$form->create('Payment', array('edit'));?>
			<?=$form->input('Payment.id', array('type' => 'hidden')); ?>
			<fieldset>
				<table class="nostyle">
					<tbody>
					<tr>
						<td class="va-top">Name:</td>
						<td><?=$form->input('Payment.billing_name', array('label' => '', 'class' => 'input-text')); ?></td>
					</tr>
					<tr>
						<td class="va-top">Billing Zip Code:</td>
						<td><?=$form->input('Payment.billing_zip', array('label' => '', 'class' => 'input-text')); ?></td>
					</tr>
					<tr>
						<td class="va-top">Card Type:</td>
						<td>
							<?
								$types = array('Mastercard'=>'Mastercard', 'Visa'=>'Visa', 'Discover'=>'Discover', 'Amercian Express'=>'American Express');
								echo $form->input('Payment.card_type', array('label' => '', 'type' => 'select', 'options' => $types, 'class' => 'input-text')); 
							?>							
						</td>
					</tr>
					<tr>
						<td class="va-top">Card Number:</td>
						<td><?=$form->input('Payment.card_number', array('label' => '', 'class' => 'input-text')); ?></td>
					</tr>
					<tr>
						<td class="va-top">Expiration Date:</td>
						<td><?=$form->input('Payment.card_exp', array('label' => '', 'class' => 'input-text')); ?></td>
					</tr>
					<tr>
						<td class="va-top">CVV2:</td>
						<td><?=$form->input('Payment.card_cvv2', array('label' => '', 'class' => 'input-text')); ?></td>
					</tr>
					<tr>
						<td class="va-top">Payment Code:</td>
						<td><?=$form->input('Payment.code', array('label' => '', 'class' => 'input-text')); ?></td>
					</tr>
					<tr>
						<td class="va-top">Payment Amount:</td>
						<td><?=$form->input('Payment.amount', array('label' => '', 'class' => 'input-text')); ?></td>
					</tr>
					<tr>
						<td class="t-right" colspan="2"><input type="submit" value="Submit" class="input-submit"/></td>
					</tr>
				</tbody></table>
			</fieldset>
		<?=$form->end();?>