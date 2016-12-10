<?php 

class m_pelanggan extends CI_Model{
var $table = 'tbadmin';
function _construct(){
parent::_construct();
}

//fungsi untuk mendapatkan admin berdasarkan id
function getAdmin($id){
$data = array();
$this->db->where('id_admin',$id);
$this->db->limit(1);
$query = $this->db->get($this->table);

if($query->num_rows() > 0)
{
$data = $query->row_array();
}
return $data;
}

//fungsi untuk mendapatkan semua data admin
function getAllAdmin(){
$this->db->order_by('nama_admin','asc');
$query = $this->db->get($this->table);
if($query->num_rows() > 0)
{
return $query->result_array();
}
}

//fungsi untuk menambah data admin ke dalam tabel dari form isian
function addAdmin(){
$data = array(
'id_admin' => $this->input->post('id_admin'),
'nama_admin' => $this->input->post('nama_admin'),
'password' => $this->input->post('password'),
'jns_kelamin' => $this->input->post('jns_kelamin'),
'alamat' => $this->input->post('alamat'),
'email' => $this->input->post('email'),
'no_hp' => $this->input->post('no_hp')
);
$this->db->insert($this->table,$data);
}

//fungsi untuk mengedit data admin berdasarkan id
function editAdmin($id){
$data = array(
'nama_admin' => $this->input->post('nama_admin'),
'password' => $this->input->post('password'),
'jns_kelamin' => $this->input->post('jns_kelamin'),
'alamat' => $this->input->post('alamat'),
'email' => $this->input->post('email'),
'no_hp' => $this->input->post('no_hp')
);
$this->db->where('id_admin',$id);
$this->db->update($this->table,$data);
}

//fungsi untuk menghapus data admin berdasarkan id admin
function deleteAdmin($id){
$this->db->where('id_admin',$id);
$this->db->delete($this->table);
}
}
