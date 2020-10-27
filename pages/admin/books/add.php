<?php
$bookTable = App::getInstance()->getTable('Book');
if(!empty($_POST)){
	$result = $bookTable->create([
		'title' => $_POST['title'],
		'description' => $_POST['description'],
		'user_id' => $_POST['user_id']
	]);
	if($result){
		header('Location: admin.php?p=books.edit&id=' . App::getInstance()->getDb()->lastInsertId());
	}
}

$users = App::getInstance()->getTable('User')->extract('id', 'name');
$form = new \Core\HTML\BootstrapForm($_POST);

?>

<form method="post">
	<?= $form->input('title', 'Titre du livre');?>
	<?= $form->input('description', 'Descrition', ['type' => 'textarea'] );?>
	<?= $form->select('user_id', 'User', $users );?>
	<button class="btn btn-primary">Sauvegarder</button>
</form>