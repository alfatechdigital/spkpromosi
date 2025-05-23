<?php
// Pastikan sudah load database di config/autoload.php atau load manual di sini
$CI =& get_instance();
$CI->load->database();

// Hapus semua data dari tabel barang
$CI->db->empty_table('barang');

// Redirect ke halaman index (misal: admin/index)
redirect('admin/index');
?>