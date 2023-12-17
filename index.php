
<?php
// Menggunakan file konfigurasi_db.php
require 'konfigurasi_db.php';

// Contoh query menggunakan PDO
try {
    $query = "SELECT * FROM daftar_anime";
    $statement = $koneksi->prepare($query);
    $statement->execute();
    $result = $statement->fetchAll();
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Anime Nusantara</title>
    <link href="dist/output.css" rel="stylesheet">
    <link href="css/aos.css" rel="stylesheet">
    <script src="js/feather.min.js"></script>
</head>

<body>

<?php include 'components/navbar.php' ?>

<div class="hero  bg-base-200">
  <div class="hero-content flex-col lg:flex-row-reverse">
    <img src="images/hero_image.jpg" class="max-w-2xl rounded-lg shadow-2xl" />
    <div>
      <h1 class="text-5xl font-bold">Mau Nonton Apa Nih!</h1>
      <p class="py-6">
        Platform streaming anime yang memukau, menawarkan akses tak terbatas ke beragam judul anime dari berbagai genre. 
        Nikmati kualitas gambar yang tajam dan alur cerita yang mendebarkan langsung di ujung jari Anda. 
        Binge-watching anime favorit Anda belum pernah seasyik ini sebelumnya.</p>
      <button class="btn btn-primary">Mulai Menonton</button>
    </div>
  </div>
</div>


<content class="px-auto">

<div class="grid grid-cols-3 gap-4 m-4">

<?php 
    foreach ($result as $row) {
?>
    <div class="card w-96 bg-base-100 shadow-xl ease-in-out delay-150 hover:-translate-y-1 hover:drop-shadow-2xl hover:scale-110 duration-300">
        <figure><img src="<?php echo $row['gambar_anime']; ?>"/></figure>
        <div class="card-body">
            <h2 class="card-title">
            <?php echo substr($row['judul_anime'], 0, 40); ?>
            </h2>
            <p><?php echo substr($row['sinopsis'], 0, 120); ?></p>
            <div class="card-actions justify-end">
                <div class="badge badge-outline"><?php echo $row['tahun_dibuat']; ?></div> 
            </div>
            <div class="card-actions">
            <button class="btn btn-primary"><i data-feather="play"></i></button>
            </div>
        </div>
    </div>
<?php } ?>

</div>


</content>



</body>
<?php include 'components/footer.php' ?>
<script src="js/aos.js"></script>
<script>
  AOS.init();
</script>
<script>
    feather.replace()
</script>
</html>