-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for anime_nusantara
CREATE DATABASE IF NOT EXISTS `anime_nusantara` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `anime_nusantara`;

-- Dumping structure for table anime_nusantara.daftar_anime
CREATE TABLE IF NOT EXISTS `daftar_anime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gambar_anime` text DEFAULT NULL,
  `judul_anime` varchar(50) DEFAULT NULL,
  `sinopsis` text DEFAULT NULL,
  `tahun_dibuat` year(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table anime_nusantara.daftar_anime: ~4 rows (approximately)
REPLACE INTO `daftar_anime` (`id`, `gambar_anime`, `judul_anime`, `sinopsis`, `tahun_dibuat`) VALUES
	(1, 'https://i0.wp.com/akibatan.com/wp-content/uploads/2022/06/saint-cecilia-and-pastor-lawrence-manga-gets-tv-anime-01.jpg?fit=1280%2C720&ssl=1', 'Shiro Seijo to Kuro Bokushi', 'Tinggal di pinggiran kecil kota yang damai, Lawrence bekerja sebagai pendeta lokal untuk penduduk kota. Ketika membutuhkan, dia bertanggung jawab untuk membimbing orang ke gereja untuk mengunjungi "Orang Suci" —simbol moral yang baik yang mengindahkan perjuangan setiap umat dan memberi mereka nasihat yang tulus. Cecilia, seorang gadis muda yang baik hati, ditugaskan untuk memenuhi peran ini; namun, pekerjaan yang melelahkan ini dengan cepat membuatnya lelah. Itu, dipasangkan dengan sifat mengantuknya yang tersembunyi, sering menyebabkan dia bermalas-malasan di sekitar gereja. Hal ini membuat Lawrence merawat gereja sendirian. Sementara Cecilia tidur untuk mengantisipasi kedatangan tamu berikutnya, Lawrence memenuhi kebutuhannya sambil menjalankan banyak tanggung jawab gereja. Perlahan tapi pasti, mereka mulai menjalin persahabatan yang nyaman dan saling percaya satu sama lain. Lawrence menerima sifat longgar Cecilia membuatnya gembira sementara dia terbiasa dengan sifat Lawrence yang terlalu menyayangi. Namun, ketika perasaan orang suci yang pemuja dan linglung terhadap pendeta yang padat dan terlalu protektif berkembang melewati persahabatan, bagaimana tanggapannya?', '2023'),
	(2, 'https://media.suara.com/pictures/970x544/2021/12/26/70868-isekai-wa-smartphone-to-tomoni.jpg', 'Isekai wa Smartphone to Tomo ni 2', 'Touya Mochizuki mulai terbiasa dengan kehidupan barunya di dunia lain. Berbekal smartphone andalannya, remaja tersebut menerima misi kecil di waktu senggang sambil menghabiskan waktu bersama tunangan barunya: Yumina Urnea Belfast, Yae Kokonoe, dan saudara kembar Linse dan Elze Shileska. Tetapi bahkan di lingkungan yang santai, Touya baru mulai memahami tanggung jawab yang menyertai keterlibatan ini. Selain kesengsaraan romantisnya, peri tua Lean ingin menemukan sisa-sisa Babel, pulau terapung yang dibuat oleh Profesor Regina Babel yang misterius lima ribu tahun yang lalu. Touya dengan enggan menerima permintaannya dan mencari lingkaran teleportasi yang akan mengarah ke pulau. Namun, monster aneh telah muncul—mungkin cukup kuat untuk menghancurkan dunia. Untuk menyelamatkan nyawa kedua yang diberikan kepadanya, Touya harus mempersenjatai teknologi kuno untuk melawan monster-monster ini — sambil menyeimbangkan jumlah hubungannya yang luar biasa.', '2023'),
	(3, 'https://kanau.org/wp-content/uploads/2023/03/IMG_20230317_114944.jpg', 'Uchi no Kaisha no Chiisai Senpai no Hanashi', '"Senpai saya dari tempat kerja... mungil dan imut."\r\n\r\nShinozaki adalah seorang pekerja kantoran yang diasuh dan dimanja oleh anggota tim seniornya Shiori Katase: seorang yang cantik, sangat baik hati, penyayang, dan mungil wanita.\r\n\r\nShinozaki tentu saja berharap dia tidak melakukannya karena kewajiban... tetapi kegembiraannya saat melakukannya semakin mengungkapkan perasaannya!', '2023'),
	(4, 'https://statik.tempo.co/data/2023/07/11/id_1218574/1218574_720.jpg', 'Eiyuu Kyoushitsu', 'Dahulu kala, ada Raja Iblis yang meneror seluruh dunia sampai seorang Pahlawan naik ke panggung dan menantang Raja Iblis, akhirnya mengalahkannya dan mengakhiri pemerintahannya. Sang Pahlawan kemudian menciptakan Akademi Rosewood, sebuah akademi yang dibuat untuk membantu para pahlawan dalam pelatihan mencapai supremasi dan membantu mempertahankan dunia saat dibutuhkan yang hanya menerima yang terbaik dari yang terbaik. Masukkan Arnest Flaming, seorang gadis dengan rasa tanggung jawab yang tinggi dan siswa terbaik di akademi, maka menerima alias "Permaisuri Api" yang suatu hari bertemu dengan siswa pindahan baru yang ceria dan riang, Blade, seorang anak laki-laki yang tampaknya setara dengannya. kekuatan, sesuatu yang menurutnya sangat menjengkelkan. Arnest kemudian secara pribadi diminta oleh Raja untuk mengawasi, dan mengajak Blade berkeliling akademi selama dia tinggal. Ceritanya mengikuti perjuangan para siswa dalam upaya mereka untuk menjadi pahlawan.', '2023');

-- Dumping structure for table anime_nusantara.video_anime
CREATE TABLE IF NOT EXISTS `video_anime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daftar_anime` int(11) DEFAULT NULL,
  `link_video` text DEFAULT NULL,
  `sinopsis` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table anime_nusantara.video_anime: ~1 rows (approximately)
REPLACE INTO `video_anime` (`id`, `id_daftar_anime`, `link_video`, `sinopsis`) VALUES
	(1, 1, '<iframe width="560" height="315" src="https://www.youtube.com/embed/unOIBc7EDzQ?si=Iogr87SEC5Y6u08a" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'yah adalah');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
