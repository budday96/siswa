<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Formulir Pendaftaran Mahasiswa</title>
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
              <a class="nav-link active" aria-current="page" href="form-daftar.php">Daftar Baru</a>
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
              <h4>Formulir Pendaftaran Mahasiswa Baru</h4>
            </div>
            <div class="card-body">
              <form action="proses-pendaftaran.php" method="POST" class="needs-validation" novalidate>
                <div class="mb-3">
                  <label for="nama" class="form-label">Nama Lengkap</label>
                  <input type="text" class="form-control" id="nama" name="nama" placeholder="Masukkan nama lengkap" required>
                  <div class="invalid-feedback">Nama lengkap wajib diisi.</div>
                </div>
                <div class="mb-3">
                  <label for="alamat" class="form-label">Alamat</label>
                  <textarea class="form-control" id="alamat" name="alamat" rows="3" placeholder="Masukkan alamat lengkap" required></textarea>
                  <div class="invalid-feedback">Alamat wajib diisi.</div>
                </div>
                <div class="mb-3">
                  <label class="form-label">Jenis Kelamin</label>
                  <div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" id="laki-laki" name="jenis_kelamin" value="laki-laki" required>
                      <label class="form-check-label" for="laki-laki">Laki-laki</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" id="perempuan" name="jenis_kelamin" value="perempuan" required>
                      <label class="form-check-label" for="perempuan">Perempuan</label>
                    </div>
                  </div>
                  <div class="invalid-feedback">Pilih salah satu jenis kelamin.</div>
                </div>
                <div class="mb-3">
                  <label for="agama" class="form-label">Agama</label>
                  <select class="form-select" id="agama" name="agama" required>
                    <option value="" selected>Pilih Agama</option>
                    <option value="Islam">Islam</option>
                    <option value="Kristen">Kristen</option>
                    <option value="Hindu">Hindu</option>
                    <option value="Budha">Budha</option>
                    <option value="Atheis">Atheis</option>
                  </select>
                  <div class="invalid-feedback">Pilih agama.</div>
                </div>
                <div class="mb-3">
                  <label for="sekolah_asal" class="form-label">Sekolah Asal</label>
                  <input type="text" class="form-control" id="sekolah_asal" name="sekolah_asal" placeholder="Masukkan nama sekolah asal" required>
                  <div class="invalid-feedback">Sekolah asal wajib diisi.</div>
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-primary" name="daftar">Daftar</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
  </body>
</html>