<?php

require_once('./Database.php');

class QAModel extends Database {

	public function __construct() {
		parent::__construct();
		$this->table = 'tbl_qas';
	}

	public function getAllByInterviewId($id) {
		$stmt = $this->connection->prepare("SELECT * FROM ".$this->table." WHERE qas_id_interview = ".$id);
		$stmt->execute();
		$this->rows = $stmt->rowCount();
		$arr = $stmt->fetchAll(PDO::FETCH_OBJ);
		if(!$arr) exit('No results returned.');
		return $arr;
		$stmt = null;
	}

}