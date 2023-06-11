<?php


$koneksi = mysqli_connect('localhost', 'root', '', 'android_versi');

if( !$koneksi ) {
  echo "Error Database";
}

$query = "SELECT * FROM versi_android";
$exeQuery = mysqli_query($koneksi, $query);

?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sistem Informasi Versi OS Android</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css ">
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Aboreto&display=swap');

        h1 {
            font-family: 'Aboreto', cursive;
        }

        .bg-atas {
            position: relative;
        }

        .bg-on-atas {
            position: absolute;
            width: 40%; /* 40% */
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

    </style>
  </head>
  <body>
    
    <main>

      <div class="album py-5 bg-light">
        <div class="container">
          <div class="row">
            <div class="col">
              <a href="tambah_data.php" class="btn btn-success rounded-0 mb-3">Tambah Data</a>
            </div>
          </div>

          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

            <?php while( $baris = mysqli_fetch_array($exeQuery) ) { ?>

            <div class="col">
              <div class="card shadow">

                <div class="bg-atas">
                  <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" preserveAspectRatio="xMidYMid slice" focusable="false">
                    <rect width="100%" height="100%" fill="#647AE5"></rect>
                    <img src="androidversi/<?= $baris['android_logo'];?>" alt="logo android" class="bg-on-atas">
                  </svg>
                </div>

                <div class="card-body">
                    <p class="card-text">
                        <h4 class="text-primary"><?= $baris['android_nama'];?></h4>
                        <?= substr($baris['android_deskripsi'], 0, 90);?>...
                    </p>

                    <div class="d-flex justify-content-between align-items-center">
                      <div class="btn-group">
                        <button class="btn btn-sm btn-outline-secondary">View</button>
                        <button class="btn btn-sm btn-outline-secondary">Edit</button>
                      </div>
                      <small class="text-muted">19 Tahun yang lalu</small>
                    </div>
                </div>

              </div>
            </div>

            <?php } ?>

          </div>
        </div>
      </div>

    </main>
    
  </body>
</html>