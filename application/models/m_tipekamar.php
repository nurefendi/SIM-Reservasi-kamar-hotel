<?php 

class m_pelanggan extends CI_Model{
var $table = 'tbtipekamar';
function _construct(){
parent::_construct();
}

//fungsi untuk mendapatkan tipekamar berdasarkan id
function getTipeKamar($id){
$data = array();
$this->db->where('id_tipekamar',$id);
$this->db->limit(1);
$query = $this->db->get($this->table);

if($query->num_rows() > 0)
{
$data = $query->row_array();
}
return $data;
}

//fungsi untuk mendapatkan semua data tipekamar
function getAllTipeKamar(){
$this->db->order_by('kapasitas_org','asc');
$query = $this->db->get($this->table);
if($query->num_rows() > 0)
{
return $query->result_array();
}
}

//fungsi untuk menambah data tipekamar ke dalam tabel dari form isian
function addTipeKamar(){
$data = array(
'id_tipekamar' => $this->input->post('id_tipekamar'),
'tipe_kamar' => $this->input->post('tipe_kamar'),
'kapasitas_org' => $this->input->post('kapasitas_org'),
'fasilitas' => $this->input->post('fasilitas'),
'harga' => $this->input->post('harga')
);
$this->db->insert($this->table,$data);
}

//fungsi untuk mengedit data tipe_kamar berdasarkan id
function editTipeKamar($id){
$data = array(
'tipe_kamar' => $this->input->post('tipe_kamar'),
'kapasitas_org' => $this->input->post('kapasitas_org'),
'fasilitas' => $this->input->post('fasilitas'),
'harga' => $this->input->post('harga')
);
$this->db->where('id_tipekamar',$id);
$this->db->update($this->table,$data);
}

//fungsi untuk menghapus data tipe kamar berdasarkan id tipekamar
function deleteTipeKamar($id){
$this->db->where('id_tipekamar',$id);
$this->db->delete($this->table);
}
}
