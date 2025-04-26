<?php
session_start();
include("config.php");

// kalau tidak ada id di query string
if (!isset($_GET['id'])) {
    header('Location: list-siswa.php');
}

// ambil id dari query string
$id = $_GET['id'];

// buat query untuk ambil data dari database
$sql = "SELECT * FROM calon_siswa WHERE id=$id";
$query = mysqli_query($db, $sql);
$siswa = mysqli_fetch_assoc($query);

// jika data yang di-edit tidak ditemukan
if (mysqli_num_rows($query) < 1) {
    die("data tidak ditemukan...");
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Edit Data Siswa</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
      <div class="container">
        <a class="navbar-brand fw-bold" href="index.php">
          <img src="bootstrap/img/code-slash.svg" alt="Logo" width="30" height="30" class="d-inline-block align-text-top">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="form-daftar.php">Daftar Baru</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="list-siswa.php">Pendaftar</a>
            </li>
          </ul>
          <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Cari Mahasiswa..." aria-label="Search">
            <button class="btn btn-outline-light" type="submit">Cari</button>
          </form>
        </div>
      </div>
    </nav>
    <div class="container mt-3">
      <div class="row justify-content-center">
        <div class="col-md-8">
          <div class="card shadow-sm">
            <div class="card-header bg-primary text-white text-center">
              <h4>Edit Data Siswa</h4>
            </div>
            <!-- Alert Flash Message -->
              <?php if (isset($_SESSION['flash'])): ?>
                  <div class="alert alert-<?= $_SESSION['flash']['type'] ?> alert-dismissible fade show" role="alert">
                      <?= $_SESSION['flash']['message'] ?>
                      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                  </div>
                  <?php unset($_SESSION['flash']); ?>
              <?php endif; ?>
            <div class="card-body">
              <form action="proses-edit.php" method="POST" class="needs-validation" novalidate>
                <input type="hidden" name="id" value="<?php echo $siswa['id'] ?>" />
                <div class="mb-3">
                  <label for="nama" class="form-label">Nama Lengkap</label>
                  <input type="text" class="form-control" id="nama" name="nama" placeholder="Masukkan nama lengkap" value="<?php echo $siswa['nama'] ?>" required>
                  <div class="invalid-feedback">Nama lengkap wajib diisi.</div>
                </div>
                <div class="mb-3">
                  <label for="email" class="form-label">Email</label>
                  <input type="email" class="form-control" id="email" name="email" placeholder="Masukkan Email" value="<?php echo $siswa['email']?>" required>
                  <div class="invalid-feedback">Nama lengkap wajib diisi.</div>
                </div>
                <div class="mb-3">
                  <label for="alamat" class="form-label">Alamat</label>
                  <textarea class="form-control" id="alamat" name="alamat" rows="3" placeholder="Masukkan alamat lengkap" required><?php echo $siswa['alamat'] ?></textarea>
                  <div class="invalid-feedback">Alamat wajib diisi.</div>
                </div>
                <div class="mb-3">
                  <label class="form-label">Jenis Kelamin</label>
                  <?php $jk = $siswa['jenis_kelamin']; ?>
                  <div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" id="laki-laki" name="jenis_kelamin" value="laki-laki" <?php echo ($jk == 'laki-laki') ? "checked" : "" ?> required>
                      <label class="form-check-label" for="laki-laki">Laki-laki</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" id="perempuan" name="jenis_kelamin" value="perempuan" <?php echo ($jk == 'perempuan') ? "checked" : "" ?> required>
                      <label class="form-check-label" for="perempuan">Perempuan</label>
                    </div>
                  </div>
                  <div class="invalid-feedback">Pilih salah satu jenis kelamin.</div>
                </div>
                <div class="mb-3">
                  <label for="agama" class="form-label">Agama</label>
                  <?php $agama = $siswa['agama']; ?>
                  <select class="form-select" id="agama" name="agama" required>
                    <option value="" disabled>Pilih Agama</option>
                    <option <?php echo ($agama == 'Islam') ? "selected" : "" ?>>Islam</option>
                    <option <?php echo ($agama == 'Kristen') ? "selected" : "" ?>>Kristen</option>
                    <option <?php echo ($agama == 'Hindu') ? "selected" : "" ?>>Hindu</option>
                    <option <?php echo ($agama == 'Budha') ? "selected" : "" ?>>Budha</option>
                    <option <?php echo ($agama == 'Atheis') ? "selected" : "" ?>>Atheis</option>
                  </select>
                  <div class="invalid-feedback">Pilih agama.</div>
                </div>
                <div class="mb-3">
                  <label for="sekolah_asal" class="form-label">Sekolah Asal</label>
                  <input type="text" class="form-control" id="sekolah_asal" name="sekolah_asal" placeholder="Masukkan nama sekolah asal" value="<?php echo $siswa['sekolah_asal'] ?>" required>
                  <div class="invalid-feedback">Sekolah asal wajib diisi.</div>
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-primary" name="simpan">Simpan</button>
                  <a href="list-siswa.php" class="btn btn-secondary">Batal</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <script>
      // Bootstrap validation
      (function () {
        'use strict'
        var forms = document.querySelectorAll('.needs-validation')
        Array.prototype.slice.call(forms).forEach(function (form) {
          form.addEventListener('submit', function (event) {
            if (!form.checkValidity()) {
              event.preventDefault()
              event.stopPropagation()
            }
            form.classList.add('was-validated')
          }, false)
        })
      })()
    </script>
        <script>
        setTimeout(function () {
            var alertNode = document.querySelector('.alert');
            if (alertNode) {
                var bsAlert = bootstrap.Alert.getOrCreateInstance(alertNode);
                bsAlert.close();
            }
        }, 4000);
    </script>
  </body>
</html>