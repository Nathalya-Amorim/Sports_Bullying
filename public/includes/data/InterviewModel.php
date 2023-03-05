<?php

require_once('./Database.php');

class InterviewModel extends Database {

	public function __construct() {
		parent::__construct();
		$this->table = 'tbl_interviews';
	}

}