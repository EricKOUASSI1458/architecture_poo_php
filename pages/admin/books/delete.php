<?php
$bookTable = App::getInstance()->getTable('Book');
if(!empty($_POST)){
    $result = $bookTable->delete($_POST['id']);
    header('Location: admin.php');
}
?>