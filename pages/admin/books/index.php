<?php
$books = App::getInstance()->getTable('Book')->all();
?>

<h1>Administrer les livres</h1>
<p>
	<a href="?p=books.add" class="btn btn-success">Ajouter</a>
</p>

<table class="table">
	<thead>
	<tr>
		<td>#</td>
		<td>Titre</td>
		<td>Detail</td>
		<td>Actions</td>
	</tr>
		
	</thead>
	<tbody>
		<?php foreach($books as $book):?>
		<tr>
			<td><?= $book->id?></td>
			<td><?= $book->title?></td>
			<td><?= $book->description?></td>
			<td>
				<a class="btn btn-primary" href="?p=books.edit&id=<?= $book->id;?>">
					Editer
				</a>
				<form action="?p=books.delete" style="display: inline;" method="post">
					<input type="hidden" name="id" value="<?=$book->id?>">
					<button type="submit" class="btn btn-danger">
						Supprimer
					</button>
				</form>
			</td>
		</tr>
		<?php endforeach;?>
	</tbody>
</table>