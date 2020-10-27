<?php
$userTable = App::getInstance()->getTable('User');
if(!empty($_POST)){
	$result = $userTable->update($_GET['id'], [
		'name' => $_POST['name'],
		'email' => $_POST['email']
	]);
	if($result){
		?>
		<div class="alert alert-success">Bien modifié</div>
		<?php
	}
}

$user = $userTable->find($_GET['id']);
$form = new \Core\HTML\BootstrapForm($user);

?>

<form method="post">
	<?= $form->input('name', 'Nom');?>
	<?= $form->input('email', 'Adresse mail');?>
	<button class="btn btn-primary">Sauvegarder</button>
</form>