<?php

require_once('./Database.php');

class ContactModel extends Database {

	protected $fields = "con_name, con_email, con_message";

	public function __construct() {
		parent::__construct();
		$this->table = 'tbl_contacts';
	}

	public function create($name, $email, $message) {
		$stmt = $this->connection->prepare("INSERT INTO ".$this->table."(".$this->fields.") VALUES ('".$name."', '".$email."', '".$message."')");
		$stmt->execute($values);
		$stmt = null;
	}

}