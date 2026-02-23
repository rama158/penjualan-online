<?php

$server = "localhost";
$user = "root";
$password = "";
$database = "penjualan_online";

$db = mysqli_connect($server, $user, $password, $database);

if (!$db) {
    die("gagal terhubung ke server : " . mysqli_connect_error());
}

?>