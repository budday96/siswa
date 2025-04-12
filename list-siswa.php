<?php
include("config.php");
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>List Siswa</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap/css/dataTables.bootstrap5.css" rel="stylesheet" />
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
              <a class="nav-link active" href="list-siswa.php">Pendaftar</a>
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
        <div class="card shadow-sm">
            <div class="card-header bg-white text-black">
                <h2 class="text-center mb-0">Data Calon Mahasiswa</h2>
            </div>
            <div class="card-header bg-white text-black d-flex justify-content-between align-items-center">
              <a href="form-daftar.php" class="btn btn-primary">
                <i class="bi bi-plus-circle"></i> Tambah Data
              </a>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="example" class="table table-striped table-hover table-bordered">
                        <thead class="table-dark">
                            <tr>
                                <th>No</th>
                                <th>Nama</th>
                                <th>Alamat</th>
                                <th>Jenis Kelamin</th>
                                <th>Agama</th>
                                <th>Sekolah Asal</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $sql = "SELECT * FROM calon_siswa ORDER BY id DESC";
                            $query = mysqli_query($db, $sql);
                            $no = 1;

                            while ($siswa = mysqli_fetch_array($query)) {
                                echo "<tr>";
                                  echo "<td>" . $no++ . "</td>";
                                  echo "<td>" . $siswa['nama'] . "</td>";
                                  echo "<td>" . $siswa['alamat'] . "</td>";
                                  echo "<td>" . $siswa['jenis_kelamin'] . "</td>";
                                  echo "<td>" . $siswa['agama'] . "</td>";
                                  echo "<td>" . $siswa['sekolah_asal'] . "</td>";
                                  echo "<td class='text-center'>";
                                  echo "<a href='form-edit.php?id=" . $siswa['id'] . "' class='btn btn-sm btn-warning me-1' title='Edit Data'>
                                          <i class='bi bi-pencil'></i>
                                        </a>";
                                  echo "<a href='hapus.php?id=" . $siswa['id'] . "' class='btn btn-sm btn-danger' title='Hapus Data' onclick='return confirm(\"Apakah Anda yakin ingin menghapus data ini?\")'>
                                          <i class='bi bi-trash'></i>
                                        </a>";
                                  echo "</td>";
                                echo "</tr>";
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script src="bootstrap/js/jquery-3.7.1.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="bootstrap/js/dataTables.js"></script>
    <script src="bootstrap/js/dataTables.bootstrap5.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.js"></script>
    <script>
        new DataTable('#example');
        document.querySelector('label[for="dt-length-0"]').style.display = 'none'; // Hide "Show 10 entries" label
    </script>
</body>
</html>