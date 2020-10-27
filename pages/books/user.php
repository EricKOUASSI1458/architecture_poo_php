<?php
	$app = App::getInstance();
	$user = $app->getTable('User')->find($_GET['id']);

	if($user === false){
		$app->notFound();
	}

	$books = $app->getTable('Book')->lastByUser($_GET['id']);
	$users = $app->getTable('User')->all();
?>

<h1><?= $user->name;?></h1>


<div class="row">
	<div class="col-sm-8">
		<?php foreach($books as $book): ?>
			<h2><a href="<?= $book->getUrl() ?>"><?= $book->title; ?></a></h2>  
			<p>
				<em><?= $book->user ?></em>
			</p>
		<?php endforeach;?>
	</div>

	<div class="col-sm-4">
		<ul>
			<?php foreach($users as $tous): ?>
				<li><a href="<?= $tous->url;?>"><?= $tous->name; ?></a></li>
			<?php endforeach;?>
		</ul>
	</div>
</div>
