<?php 
namespace App\Table;
use Core\Table\Table;

class BookTable extends Table{

	protected $table = 'books';
	
	/**
		* Récupère les derniers livres
		* @return array
	*/
	public function last(){ 
		return $this->query("
			SELECT books.id, books.title, books.description, books.created_at, books.updated_at, books.user_id, users.name as user  
			FROM books
			LEFT JOIN users ON books.user_id = users.id
			ORDER BY books.created_at DESC");
	}


	/**
		* Récupère les derniers livres de l'auteur demandé
		*@ param $user_id int
		* @return array
	*/
	public function lastByUser($user_id){ 
		return $this->query("
			SELECT books.id, books.title, books.description, books.created_at, books.updated_at, books.user_id, users.name as user  
			FROM books
			LEFT JOIN users ON books.user_id = users.id
			WHERE books.user_id = ?", [$user_id] );
	}


	/**
		* Récupère un livre en liant à son auteur
		*@ param $id int
		* @return \App\Entity\BookEntity
	*/
	public function find($id){
		return $this->query("
			SELECT books.id, books.title, books.description, books.created_at, books.updated_at, books.user_id, users.name as user  
			FROM books
			LEFT JOIN users ON books.user_id = users.id
			WHERE books.id = ?", [$id], true );
	}
}

?>