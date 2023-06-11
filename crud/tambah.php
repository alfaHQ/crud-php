<?php

require '../functions.php';

if( isset($_POST['submit']) ) {
    if( tambah($_POST) > 0 ) {
        
        echo "<script>
                document.location.href = '../index.php';
            </script>";
    } else {
        echo "<script>
                 alert('tambah data gagal!');
            </script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Page</title>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>
<body>

    <div class="container">
        <div class="row d-flex justify-content-center mt-5">
            <div class="col-md-5  ">
                <form action="" method="post">
                    <div class="form-group">
                        <label>Name : </label>
                        <input class="form-control" name="nama">
                    </div>

                    <div class="form-group">
                        <label>Description : </label>
                        <textarea class="form-control" name="deskripsi"></textarea>
                    </div>

                    <div class="form-group">
                        <label>img : </label>
                        <input class="form-control" type="file" name="gambar">
                    </div>

                    <button type="submit" class="btn btn-primary mt-3" name="submit">Tambah</button>
                </form>
            </div>
        </div>
    </div>
    
</body>
</html>