<?php
	$app = App::getInstance();

	$book = $app->getTable('Book')->find($_GET['id']);
	if($book === false){
		$app->notFound();
	}

	$app->titre_page = $book->title ;
	/*$user = User::find($book->user_id);*/
?>

<h2><?= $book->title; ?></h2>
<p><em><?=$book->user; ?></em></p>
<p><?= $book->description; ?></p>


