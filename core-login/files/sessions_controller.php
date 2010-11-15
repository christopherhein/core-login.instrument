<?php
class SessionsController extends ApplicationController {

	function before_filter() {
		
	}

	function login() {
		
	}

	function create() {
		global $app;
		$un = $_POST['name'];
		$pw = md5($_POST['password'].".".$app['salt']);
		$user = $this->sessions->login('users', array('username' => $un, 'password' => $pw));
		if($user) {
			$_SESSION['user_id'] = $user;
			$this->redirect_to('admin', array('page' => 'index'));
		} else {
			$this->redirect_to('login', array('page' => 'index'));
		}
	}

	function destroy() {
		unset($_SESSION['user_id']);
		session_destroy();
		$this->redirect_to('login', array('page' => 'index'));
	}

	function after_filter() {

	}
}