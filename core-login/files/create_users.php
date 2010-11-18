<?php
class CreateUsers {
	
	public function __construct() {
		$this->self_up();
	}
	
	public function self_up() {
		$query = array(
			'string => name',
			'string => hashed_password',
			'string => salt'
		);
		$db = new Database();
		$db->up('users', $query);
	}

	public function self_down() {
		$db = new Database();
		$db->down('users');
	}
}