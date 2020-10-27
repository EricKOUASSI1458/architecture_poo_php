<?php
namespace App\Entity;
use Core\Entity\Entity;

class BookEntity extends Entity{


	public function getUrl(){
		return 'index.php?p=books.show&id=' . $this->id;
	}
}
?>