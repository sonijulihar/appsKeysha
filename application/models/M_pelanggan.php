<?php
class M_pelanggan extends CI_Model{

	function hapus_pelanggan($kode){
		$hsl=$this->db->query("DELETE FROM tbl_pelanggan where pelanggan_id='$kode'");
		return $hsl;
	}

	function update_pelanggan($kode,$nama,$alamat,$notelp){
		$hsl=$this->db->query("UPDATE tbl_pelanggan set pelanggan_nama='$nama',suplier_alamat='$alamat',suplier_notelp='$notelp' where suplier_id='$kode'");
		return $hsl;
	}

	function tampil_pelanggan(){
		$hsl=$this->db->query("select * from tbl_pelanggan order by pelanggan_id desc");
		return $hsl;
	}

	function simpan_pelanggan($nama,$alamat,$notelp){
		$hsl=$this->db->query("INSERT INTO tbl_pelanggan(pelanggan_nama,pelanggan_alamat,pelanggan_notelp) VALUES ('$nama','$alamat','$notelp')");
		return $hsl;
	}

	function data_pelanggan($kode_pelanggan){
		$myquery = "select *  from tbl_pelanggan where pelanggan_nama='$kode_pelanggan'";
		$kasus = $this->db->query($myquery)->row();
		return $kasus;
	}


}