<?php
// Konfigurasi koneksi ke database
$host = 'localhost';  // Ganti dengan host database Anda
$dbname = 'anime_nusantara'; // Ganti dengan nama database Anda
$username = 'root'; // Ganti dengan username database Anda
$password = ''; // Ganti dengan password database Anda

// Membuat objek PDO untuk koneksi
try {
    $koneksi = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    // Set atribut PDO untuk menampilkan error secara detail
    $koneksi->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // Set mode fetch default menjadi asosiatif
    $koneksi->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    echo "Koneksi gagal: " . $e->getMessage();
}
?>
