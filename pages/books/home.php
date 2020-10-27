<div class="row">
	<div class="col-sm-8">
		<?php foreach(App::getInstance()->getTable('Book')->last() as $book): ?> 
			<h2><a href="<?= $book->url ?>"><?= $book->title; ?></a></h2>  
			<p>
				<em><?= $book->user ?></em>
			</p>
		<?php endforeach;?>
	</div>

	<div class="col-sm-4">
		<ul>
			<?php foreach(App::getInstance()->getTable('User')->all() as $users): ?>
				<li><a href="<?= $users->url ?>"><?= $users->name; ?></a></li>
				<p>
					
					<?= $users->url ?>
				</p>
			<?php endforeach;?>
		</ul>
	</div>
</div>
