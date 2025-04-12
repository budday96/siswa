<?php
session_start();
include("config.php");

// cek apakah tombol daftar sudah diklik atau blum?
if(isset($_POST['daftar'])){

    // ambil data dari formulir
    $nama = $_POST['nama'];
    $alamat = $_POST['alamat'];
    $jk = $_POST['jenis_kelamin'];
    $agama = $_POST['agama'];
    $sekolah = $_POST['sekolah_asal'];

    // buat query
    $sql = "INSERT INTO calon_siswa (nama, alamat, jenis_kelamin, agama, sekolah_asal) VALUE ('$nama', '$alamat', '$jk', '$agama', '$sekolah')";
    $query = mysqli_query($db, $sql);

    if ($query) {
        $_SESSION['flash'] = ['type' => 'success', 'message' => '✅ Data berhasil disimpan!'];
    } else {
        $_SESSION['flash'] = ['type' => 'danger', 'message' => '❌ Data gagal disimpan!'];
    }

    header("Location: list-siswa.php");
    exit();
} else {
    die("Akses dilarang...");
}

?>