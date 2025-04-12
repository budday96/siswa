<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Tehnik Informatika</title>
    <link rel="icon" type="image/x-icon" href="bootstrap/img/code.svg">
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
    <main class="container my-4">
      <div class="text-center">
        <h1 class="display-5 fw-bold">Selamat Datang Tehnik Informatika Undira</h1>
        <p class="lead">Platform pendaftaran Mahasiswa baru yang modern dan mudah digunakan.</p>
        <a href="form-daftar.php" class="btn btn-primary btn-lg">Daftar Sekarang</a>
        <a href="list-siswa.php" class="btn btn-outline-primary btn-lg">Lihat Pendaftar</a>
      </div>
    </main>
    <footer class="bg-light text-center py-3 mt-4 border-top">
      <p class="mb-0">&copy; 2025 Buday. All rights reserved.</p>
    </footer>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
