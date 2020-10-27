<?php
	use Core\Auth\DBAuth;
	define('ROOT', dirname(__DIR__));
	require ROOT . '/app/App.php';
	App::load();

	if(isset($_GET['p'])){
		$page = $_GET['p'];
	}else{
		$page = 'home';
	}

	//auth
	$app = App::getInstance();
	$auth = new DBAuth($app->getDb());
	if(!$auth->logged()){
		$app->forbidden();
	}

	ob_start();
	if($page === 'home'){
		require ROOT . '/pages/admin/books/index.php';
	}elseif($page === 'books.edit') {
		require ROOT . '/pages/admin/books/edit.php';
	}elseif($page === 'books.add') {
		require ROOT . '/pages/admin/books/add.php';
	}elseif($page === 'books.delete') {
		require ROOT . '/pages/admin/books/delete.php';
	}

	/*user root for admin*/
	elseif($page === 'users.all') {
		require ROOT . '/pages/admin/users/index.php';
	}elseif($page === 'users.edit') {
		require ROOT . '/pages/admin/users/edit.php';
	}elseif($page === 'users.add') {
		require ROOT . '/pages/admin/users/add.php';
	}elseif($page === 'users.delete') {
		require ROOT . '/pages/admin/users/delete.php';
	}
	
	$content =  ob_get_clean();
	require ROOT . '/pages/templates/default.php';

	
	
?>