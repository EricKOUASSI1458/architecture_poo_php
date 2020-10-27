<?php
$userTable = App::getInstance()->getTable('User');
if(!empty($_POST)){
	$result = $userTable->create([
		'name' => $_POST['name'],
		'email' => $_POST['email'],
		'password' => sha1($_POST['name'])
	]);
	if($result){
		header('Location: admin.php?p=users.edit&id=' . App::getInstance()->getDb()->lastInsertId());
	}
}

$form = new \Core\HTML\BootstrapForm($_POST);

?>

<form method="post">
	<?= $form->input('name', 'Nom');?>
	<?= $form->input('email', 'Adresse mail');?>
	<button class="btn btn-primary">Sauvegarder</button>
</form>