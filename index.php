<?php

require 'functions.php';

// pagination
$jumlahDataPerHalaman = 3;
$jumlahData = count(query("SELECT * FROM horror"));
$jumlahHalaman = ceil($jumlahData / $jumlahDataPerHalaman);
$halamanAktif = ( isset($_GET['halaman']) ? $_GET['halaman'] : 1 );
$awalData = ( $jumlahDataPerHalaman * $halamanAktif ) - $jumlahDataPerHalaman;

$query = "SELECT * FROM horror LIMIT $awalData, $jumlahDataPerHalaman";
$result = mysqli_query($conn, $query);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Playstation 4</title>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <style>


        body {
            font-family: 'montserrat';
            overflow: hidden;
        }

        h1, small {
            color: royalblue;
            margin: 0;
            margin-left: 20px;
        }

        .card {
            width: 300px;
            height: 330px;
        }

        .card .back-card {
            position: absolute;
            width: 100%;
            height: 100%;
            visibility: hidden;
            opacity: 0;
            transform: translateY(-100%);
            transition: 1s;
        }

        .card:hover .back-card {
            visibility: visible;
            transform: translateY(0);
            background: #000;
            color: #fff;
            opacity: 1;
            overflow-y: scroll;
        }

        .card:hover .back-card::-webkit-scrollbar {
            display: none;
        }

        .card:hover .front-card {
            visibility: none;
        }

        .back-card .btn-group a[title="ubah data"] {
            position: relative;
            left: -12%;
            z-index: 100;
        }

        .back-card .btn-group a[title="hapus data"] {
            position: relative;
            top: -5%;
            right: -15%;
            z-index: 100;
        }

        .credit {
            position: absolute;
            right: 2%;
            bottom: 3%;
        }

        @font-face {
            font-family: "montserrat";
            src: url(font/Montserrat-Medium.woff);
        }

    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand text-uppercase text-info" href="#">TUGAS PAK A.</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <span class="nav-link" href="#">Silva Tria A.</span>
            <span class="nav-link" href="#">30</span>
            <span class="nav-link" href="#">XII-ACP</span>
            <a class="nav-link active text-white" aria-current="page" href="https://www.playstation.com/">credit</a>
        </div>
        </div>
    </div>
    </nav>
    
    
    <div class="container">
        <div class="title row">
            <div class="col">
                <h1 >GAME HORROR PS4 TERHORROR!!</h1>
                <a href="crud/tambah.php" class="tambah btn btn-md btn-primary fw-uppercase d-inline-block" style="margin-left: 20px;" title="tambah data">
                    <i class="bi bi-plus-circle"></i>
                </a>
                <small class="d-inline-block mb-3 font-monospace">Uploader: Silva Tria <h3 class="d-inline-block h3">A.</h3></small>
                
            </div>
        </div>

        <div class="list-item row row-cols-1 row-cols-sm-2 row-cols-md-3 mb-3">
            <?php while($row = mysqli_fetch_array($result)) {?>
                <div class="col d-flex">

                    <div class="card overflow-hidden p-3 position-relative justify-content-center align-items-center">
                        <div class="card border-0 front-card">
                            
                            <img src="img/ps4-horror-games/<?= $row['img']; ?>" class="img-responsive rounded-circle mx-auto shadow" width="200">
                            <div class="card-body">
                                <h2 class="fs-3 fw-bold"><?= $row['name'];?></h2>
                                <!-- <p class="fw-lighter opacity-75"><?= $row['desc']; ?></p> -->
                            </div>
                        </div>

                        <div class="card border-0 back-card">
                            <div class="btn-group">
                                <a href="crud/ubah.php?id=<?=$row['id'];?>" class="btn btn-lg text-light" title="ubah data">
                                    <i class="bi bi-pencil-square "></i>
                                </a>

                                <a href="crud/hapus.php?id=<?=$row['id'];?>" class="btn btn-lg text-light"  title="hapus data" onclick="return confirm('yakin ingin menghapus data game ini?');">
                                    <i class="bi bi-x"></i>
                                </a>
                            </div>
                            
                            <div class="card-body">
                                <h2 class="fs-3 fw-bold"><?= $row['name'];?></h2>
                                <p class="fw-lighter opacity-75"><?= $row['desc']; ?></p>
                            </div>
                        </div>
                    </div>

                </div>
            <?php }?>
        </div>

        <div class="pagination mb-3">

            <?php if( $halamanAktif >  1) : ?>
                <a href="?halaman=<?= $halamanAktif + - 1?>">
                    <i  class="bi-arrow-left-square fs-3 mx-3 text-secondary"></i>
                </a>
            <?php endif;?>
            
            <?php for( $i = 1; $i <= $jumlahHalaman; $i++ ) : ?>
                <?php if( $i == $halamanAktif ) : ?>
                    <a href="?halaman=<?= $i ?>" class="btn btn-primary mx-1"><?= $i?></a>
                <?php else : ?>
                    <a href="?halaman=<?= $i ?>" class="btn btn-outline-primary mx-1"><?= $i?></a>
                <?php endif; ?>     
            <?php endfor;?>

            <?php if( $halamanAktif < $jumlahHalaman ) : ?>
                <a href="?halaman=<?= $halamanAktif + 1 ?>">
                    <i  class="bi-arrow-right-square fs-3 mx-3 text-secondary"></i>
                </a>
            <?php endif;?>
        </div>

    </div>
    
</body>
</html>