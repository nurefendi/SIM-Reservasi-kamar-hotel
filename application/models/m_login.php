<?php
	class m_login extends CI_Model {
		public function getUser($username,$password)
		{
		return $this->db->query("select email, password from tbadmin where email='$username' AND password='$password'");
		}
	}
?>