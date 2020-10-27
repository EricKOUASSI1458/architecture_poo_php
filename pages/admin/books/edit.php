<?php
$bookTable = App::getInstance()->getTable('Book');
if(!empty($_POST)){
	$result = $bookTable->update($_GET['id'], [
		'title' => $_POST['title'],
		'description' => $_POST['description'],
		'user_id' => $_POST['user_id']
	]);
	if($result){
		?>
		<div class="alert alert-success">Bien modifié</div>
		<?php
	}
}

$book = $bookTable->find($_GET['id']);
$users = App::getInstance()->getTable('User')->extract('id', 'name');
$form = new \Core\HTML\BootstrapForm($book);

?>

<form method="post">
	<?= $form->input('title', 'Titre du livre');?>
	<?= $form->input('description', 'Descrition', ['type' => 'textarea'] );?>
	<?= $form->select('user_id', 'User', $users );?>
	<button class="btn btn-primary">Sauvegarder</button>
</form>