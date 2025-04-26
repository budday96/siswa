<?php
session_start();
include("config.php");

// cek apakah tombol daftar sudah diklik atau belum
if (isset($_POST['daftar'])) {

    // ambil data dari formulir
    $nama = trim($_POST['nama']);
    $email = trim($_POST['email']);
    $alamat = trim($_POST['alamat']);
    $jk = $_POST['jenis_kelamin'] ?? '';
    $agama = $_POST['agama'] ?? '';
    $sekolah = trim($_POST['sekolah_asal']);

    // form validasi
    $error = false;

    // Validasi Nama
    if ($nama == "") {
        $_SESSION['namaPesan'] = "Kolom nama harus diisi";
        $error = true;
    }

    // Validasi Email
    if ($email == "") {
        $_SESSION['emailPesan'] = "Kolom email harus diisi";
        $error = true;
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $_SESSION['emailPesan'] = "Format email tidak valid";
        $error = true;
    }

    // Validasi Alamat
    if ($alamat == "") {
        $_SESSION['alamatPesan'] = "Kolom alamat harus diisi";
        $error = true;
    }

    // Validasi Jenis Kelamin
    if ($jk == "") {
        $_SESSION['jenisKelaminPesan'] = "Pilih jenis kelamin";
        $error = true;
    }

    // Validasi Agama
    if ($agama == "") {
        $_SESSION['agamaPesan'] = "Pilih agama";
        $error = true;
    }

    // Validasi Sekolah Asal
    if ($sekolah == "") {
        $_SESSION['sekolahAsalPesan'] = "Kolom sekolah asal harus diisi";
        $error = true;
    }

    // Jika ada error, kembali ke form-daftar.php
    if ($error == true) {
        header('Location: form-daftar.php');
        exit();
    } else {
        // Jika validasi lolos, simpan ke database
        $sql = "INSERT INTO calon_siswa (nama, email, alamat, jenis_kelamin, agama, sekolah_asal) 
                VALUE ('$nama', '$email', '$alamat', '$jk', '$agama', '$sekolah')";
        $query = mysqli_query($db, $sql);

        if ($query) {
            $_SESSION['flash'] = ['type' => 'success', 'message' => '✅ Data berhasil disimpan!'];
        } else {
            $_SESSION['flash'] = ['type' => 'danger', 'message' => '❌ Data gagal disimpan!'];
        }

        header("Location: list-siswa.php");
        exit();
    }

} else {
    die("Akses dilarang...");
}
?>
