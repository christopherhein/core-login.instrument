<?php
class UsersController extends ApplicationController {

	function before_filter() {
		$this->authorize();
	}
	
	function index() {
		$this->set("users", $this->users->select_all("users"));
	}

	function show($id) {
		$this->set("user", $this->users->select("users", $id));
	}
	
	function new_item() {
		
	}
	
	function create() {
		global $app;
		$pw = md5($_POST['password'].".".$app['salt']);
		
		$fields = array(
			'name' 						=> $_POST['name'],
			'hashed_password' => $pw,
			'salt'						=> $app['salt']
		);
		
		$this->users->create("users", $fields);
		$this->redirect_to("users", array('page' => 'index'));
	}

	function edit($id) {
		$this->set("user", $this->users->select("users", $id));
	}
	
	function update() {
		global $app;
		$pw = md5($_POST['password'].".".$app['salt']);
		
		$fields = array(
			'id'							=> $_POST['id'],
			'name' 						=> $_POST['name'],
			'hashed_password' => $pw,
			'salt'						=> $app['salt']
		);
		
		$this->users->update("users", $fields);
		$this->redirect_to("users", array('page' => 'index'));
	}

	function destroy($id) {
		$this->users->destroy("users", $id);
		$this->redirect_to("users", array('page' => 'index'));
	}
	
	function after_filter() {

	}
}