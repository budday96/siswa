<?php
session_start();
include("config.php");

// cek apakah tombol simpan sudah diklik atau blum?
if(isset($_POST['simpan'])){

    // ambil data dari formulir
    $id = $_POST['id'];
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $alamat = $_POST['alamat'];
    $jk = $_POST['jenis_kelamin'];
    $agama = $_POST['agama'];
    $sekolah = $_POST['sekolah_asal'];

    // buat query update
    $sql = "UPDATE calon_siswa SET nama='$nama', email='$email', alamat='$alamat', jenis_kelamin='$jk', agama='$agama', sekolah_asal='$sekolah' WHERE id=$id";
    $query = mysqli_query($db, $sql);

    if ($query) {
        $_SESSION['flash'] = ['type' => 'success', 'message' => '✅ Data berhasil diEdit!'];
    } else {
        $_SESSION['flash'] = ['type' => 'danger', 'message' => '❌ Data gagal diEdit!'];
    }

    header("Location: list-siswa.php");
    exit();


} else {
    die("Akses dilarang...");
}

?>