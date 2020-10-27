<?php
$users = App::getInstance()->getTable('User')->all();
?>

<h1>Administrer les auteurs</h1>
<p>
	<a href="?p=users.add" class="btn btn-success">Ajouter</a>
</p>

<table class="table">
	<thead>
	<tr>
		<td>#</td>
		<td>Nom</td>
		<td>Email</td>
		<td>Actions</td>
	</tr>
		
	</thead>
	<tbody>
		<?php foreach($users as $user):?>
		<tr>
			<td><?= $user->id?></td>
			<td><?= $user->name?></td>
			<td><?= $user->email?></td>
			<td>
				<a class="btn btn-primary" href="?p=users.edit&id=<?= $user->id;?>">
					Editer
				</a>
				<form action="?p=users.delete" style="display: inline;" method="post">
					<input type="hidden" name="id" value="<?=$user->id?>">
					<button type="submit" class="btn btn-danger">
						Supprimer
					</button>
				</form>
			</td>
		</tr>
		<?php endforeach;?>
	</tbody>
</table>