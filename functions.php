<?php

$conn = mysqli_connect('localhost', 'root', '', 'ps4_games');

function query($query) {

    global $conn;
    $result = mysqli_query($conn, $query);

    $rows = [];
    while( $row = mysqli_fetch_assoc($result) ) {
        $rows[] = $row;
    }

    return $rows;
}

function tambah($data) {
    
    global $conn;

    $name = htmlspecialchars($data['nama']);
    $desc = htmlspecialchars($data['deskripsi']);
    $img = htmlspecialchars($data['gambar']);

    $query = "INSERT INTO horror VALUES ('', '$name', '$desc', '$img')";
    mysqli_query($conn, $query);
    return mysqli_affected_rows($conn);
}

function ubah($data) {
    
    global $conn;

    $id = $data["id"];
    $name = htmlspecialchars($data["nama"]);
    $desc = htmlspecialchars($data["deskripsi"]);
    $img = htmlspecialchars($data["gambar"]);


    $query = " UPDATE horror 
                SET
                nama = '$name',
                deskripsi = '$desc',
                gambar = '$img' 
                WHERE id = '$id' ";
    mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

function hapus($id) {

    global $conn;

    $query = "DELETE FROM horror WHERE id = $id";
    mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);

}