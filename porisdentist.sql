-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2021 at 05:26 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `porisdentist`
--

-- --------------------------------------------------------

--
-- Table structure for table `list_jawaban`
--

CREATE TABLE `list_jawaban` (
  `id` int(11) NOT NULL,
  `id_jawaban` varchar(225) NOT NULL,
  `nama_penyakit` varchar(225) NOT NULL,
  `penjelasan` varchar(225) NOT NULL,
  `penanganan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list_jawaban`
--

INSERT INTO `list_jawaban` (`id`, `id_jawaban`, `nama_penyakit`, `penjelasan`, `penanganan`) VALUES
(1, '111000000000000000000000000000000000000', 'Abses Periodontal\r\n', 'Infeksi bakteri penyebab abses gigi umumnya terjadi pada orang dengan kebersihan dan kesehatan gigi yang buruk. Nanah yang berkumpul pada benjolan, lambat laun akan terasa bertambah nyeri.', '<li> Pengeluaran nanah </li>\r\n<li> Pemberian obat antibiotik </li>'),
(2, '100111100000000000000000000000000000000', 'Abses Peripikal', 'suatu kondisi yang dapat ditemukan pada gigi dimana terjadi pembentukan pus setempat di ujung akar gigi dan jaringan tulang di sekitarnya.', '<li> Pemberian obat antibiotik </li>'),
(3, '000001011000000000000000000000000000000', 'Alveolar Osteitis', 'sakit pasca operasi pada atau sekitar socket gigi yang dapat meningkat tiap waktu antara hari pertama dan hari ketiga setelah pencabutan yang ditandai dengan hilangnya bekuan darah pada socket alveolar.', '<li> Pemberian obat antibiotik </li>'),
(4, '000000000011000000000000000000000000000', 'Abrasi Gigi', ' hilangnya struktur gigi yang disebabkan oleh gesekan terhadap gigi yang terlalu kuat pada saat penyikatan gigi.', '<li>Dilakukan varnish</li>\r\n<li> Menggunakan sikat gigi yang berbulu halus</li>\r\n'),
(5, '000000000010111000000000000000000000000', 'Bruxism (Gigi Gemeretak)', 'kebiasaan mengasah gigi atas dengan gigi bawah yang dilakukan secara tidak sadar pada saat tidur.', '<li> Menggunakan night guard pada saat tidur</li>\r\n<li> Melatih postur tubuh yang baik</li>\r\n'),
(6, '010000000000000111000000000000000000000', 'Gingivitis (Radang Gusi) ', 'peradangan gusi tanpa adanya jaringan yang rusak serta tidak disertai rasa sakit', '<li> Menggunakan obat kumur</li>\r\n<li> Rajin menyikat gigi</li>'),
(7, '011011000000000000110000000000000000000', 'Gusi Bernanah', 'infeksi yang disebabkan gumpalan nanah yang terletak di dalam jaringan gusi.', '<li> Pemberian antibiotik </li>'),
(8, '110000110000000000000000000000000000000', 'Gangguan Gigi Bungsu', ' gigi bungsu atau gigi geraham terakhir yang tumbuh tidak sempurna (miring, tidur, terbalik) atau tidak tumbuh sama sekali karna tertanam di tulang rahang', '<li> Melakukan pencabutan pada gigi bungsu </li>'),
(9, '000000000000000000001111000000000000000', 'Angular Ceilitis (Radang Sudut Bibir)', 'peradangan pada sudut mulut yang disebabkan karena infeksi jamur dan bakteri.', '<li> Menggunakan obat anti jamur </li>\r\n<li> Mengkonsumsi banyak air </li>'),
(10, '000000000010000000000000110000000000000', 'Karies Media', 'karies yang sudah mencapai bagian dentin atau bagian pertengahan antara permukaan gigi dan kamar pulpa.', '<li> Melakukan penambalan </li>'),
(11, '000000000000000000000000111100000000000', 'Pulpitis Akut', 'karies yang telah mendekati atau bahkan telah mencapai pulpa sehingga terjadi peradangan pada pulpa', '<li> Melakukan penambalan </li>'),
(12, '000000000000000000000000010010000000000', 'Karies Superfisial', 'karies yang sudah mencapai bagian dalam dari email dan kadangkadang terasa sakit.', '<li> Melakukan penambalan </li>'),
(13, '000000100000000000000000000001100000000', 'Kandidiasis', 'suatu kondisi dimana jamur Candida Albicans terakumulasi pada lapisan mulut', '<li> Menggunakan obat anti jamur </li>'),
(14, '000000100000000100000000000000011000000', 'Kalkulus (Karang Gigi)', ' kotoran dalam mulut yang menempel pada gusi dalam jangka waktu lama, sehingga lama-kelamaan akan mengeras dan membatu sehingga sulit dibersihkan dengan hanya menggosok gigi.', '<li> Melakukan scalling atau pembersihan karang gigi </li>'),
(15, '000000000000000000000000100000000111000', 'Nekrosis Pulpa', 'suatu kondisi medis dimana infeksi bakteri menyebabkan timbulnya peradangan pada gigi, yang menyebabkan jaringan hidup yang ada dalam pulpa gigi akhirnya mengalami kematian.', '<li> Melakukan pencabutan gigi</li>'),
(16, '010000100000000100100000000000000000100', 'Periodontitis', 'infeksi gusi berat yang dapat menyebabkan kerusakan pada jaringan lunak dan tulang penyangga gigi.', '<li> Pembersihan pada karang gigi </li>\r\n<li> Memperbaiki akar gigi </li>'),
(17, '000000001100000000000000000000000000000', 'Dry Socket', 'Suatu kondisi gigi menyakitkan yang terjadi setelah gigi dewasa dicabut.', '<li>Pengobatan termasuk penghilang rasa sakit <li>\r\n<li>Pembilasan pada daerah yang terkena<li>'),
(18, '111000000000000100000000000000000000000', 'Abses Periodontal\r\n', 'Infeksi bakteri penyebab abses gigi umumnya terjadi pada orang dengan kebersihan dan kesehatan gigi yang buruk. Nanah yang berkumpul pada benjolan, lambat laun akan terasa bertambah nyeri.', '<li> Pengeluaran nanah </li>\r\n<li> Pemberian obat antibiotik </li>'),
(19, '100110100000000000000000000000000000000', 'Abses Peripikal', 'suatu kondisi yang dapat ditemukan pada gigi dimana terjadi pembentukan pus setempat di ujung akar gigi dan jaringan tulang di sekitarnya.', '<li> Pemberian obat antibiotik </li>'),
(20, '011000000000000000110000000000000000000', 'Gusi Bernanah', 'infeksi yang disebabkan gumpalan nanah yang terletak di dalam jaringan gusi.', '<li> Pemberian antibiotik </li>'),
(21, '010000010000000000000000000000000000000', 'Gangguan Gigi Bungsu', ' gigi bungsu atau gigi geraham terakhir yang tumbuh tidak sempurna (miring, tidur, terbalik) atau tidak tumbuh sama sekali karna tertanam di tulang rahang', '<li> Melakukan pencabutan pada gigi bungsu </li>'),
(22, '010000100000000100000000000000000000100', 'Periodontitis', 'infeksi gusi berat yang dapat menyebabkan kerusakan pada jaringan lunak dan tulang penyangga gigi.', '<li> Pembersihan pada karang gigi </li>\r\n'),
(23, '000000000000000000000000111000000000001', 'Pulpitis Kronis', 'karies yang telah mendekati atau bahkan telah mencapai pulpa sehingga terjadi peradangan pada pulpa', '<li> Melakukan penambalan </li>'),
(24, '000000001100000000000000000000000000010', 'Dry Socket', 'Suatu kondisi gigi menyakitkan yang terjadi setelah gigi dewasa dicabut.', '<li>Pengobatan termasuk penghilang rasa sakit <li>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `list_tips`
--

CREATE TABLE `list_tips` (
  `id` int(11) NOT NULL,
  `isi_tips` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list_tips`
--

INSERT INTO `list_tips` (`id`, `isi_tips`) VALUES
(1, 'Menggosok gigi setelah makan. Jika tidak memungkinkan, maka setidaknya berkumur dengan air bersih, untuk membersihkan sisa makanan pada mulut dan gigi.'),
(2, 'Mengurangi makan makanan yang terlalu manis, terlalu panas, atau terlalu dingin.'),
(3, 'Banyak mengonsumsi buah-buahan dan sayuran segar.'),
(4, 'Mengurangi atau berhenti merokok.'),
(5, 'Jika merasa nyeri, dapat meminum obat penahan nyeri yang mengandung paracetamol.'),
(6, 'Jika nyeri berlanjut segera hubungi dokter');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` int(11) NOT NULL,
  `isi_pertanyaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id`, `isi_pertanyaan`) VALUES
(1, 'Apakah anda kesulitan mengunyah makanan ?'),
(2, 'Apakah gusi anda mengalami pembengkakan atau peradangan ?'),
(3, 'Apakah gigi anda goyang ?'),
(4, 'Apakah rahang anda mengalami pembengkakan ?'),
(5, 'Apakah anda mengalami demam ?'),
(6, 'Apakah anda mengalami pembengkakan kelenjar getah bening sekitar rahang atau leher ?'),
(7, 'Apakah bau mulut anda kurang sedap ?\r\n'),
(8, 'Apakah anda merasakan nyeri atau sakit di sekitar gusi ?'),
(9, 'Apakah anda mengalami nyeri atau rasa sakit yang parah selama beberapa hari setelah melakukan pencabutan gigi ?'),
(10, 'Apakah ada tulang terlihat pada bagian socket gigi atau bagian gigi yang baru dicabut ?'),
(11, 'Apakah gigi anda terasa ngilu dan sensitif ?'),
(12, 'Apakah bentuk gigi anda tampak terkikis ?'),
(13, 'Apakah anda merasa sakit kepala ?'),
(14, 'Apakah anda mengalami insomnia atau merasa gelisah ?'),
(15, 'Apakah ada suara gemeretak gigi yang terdengar saat tidur ?'),
(16, 'Apakah gusi anda mudah berdarah ?'),
(17, 'Apakah bentuk gusi anda tampak agak membulat ?'),
(18, 'Apakah konsistensi gusi anda terasa lunak saat tersentuh ?'),
(19, 'Apakah gusi atau gigi anda mengeluarkan nanah ?'),
(20, 'Apakah gigi anda terasa sakit atau berdenyut ?'),
(21, 'Apakah anda mengalami kemerahan pada sudut mulut ?'),
(22, 'Apakah sudut mulut terasa nyeri?\r\n'),
(23, 'Apakah Sudut mulut bersisik?'),
(24, 'Apakah anda mengalami luda pada sudut mulut?'),
(25, 'Apakah Dentin terlihat?'),
(26, 'Apakah anda mengalami gigi berlubang?'),
(27, 'Apakah Pulpa anda mengalami infeksi atau radang?'),
(28, 'Apakah anda mengalami sakit berdenyut tanpa rangsangan?'),
(29, 'Apakah anda memiliki bercak putih pada gigi?'),
(30, 'Apakah anda memiliki bercak putih pada lidah?'),
(31, 'Apakah anda memiliki bercak putih pada rongga mulut?'),
(32, 'Apakah terdapat endapan plak?'),
(33, 'Apakah terdapat karang gigi?'),
(34, 'Apakah terdapat pembusukan gigi?'),
(35, 'Apakah pulpa anda mati rasa?'),
(36, 'Apakah ruang pulpa terbuka?'),
(37, 'Apakah Gusi anda berwarna merah?'),
(38, 'Apakah anda merasakan sakit pada bagian gigi yang dicabut setelah pencabutan gigi?'),
(39, 'Apakah sakit saat makan?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list_jawaban`
--
ALTER TABLE `list_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_tips`
--
ALTER TABLE `list_tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list_jawaban`
--
ALTER TABLE `list_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `list_tips`
--
ALTER TABLE `list_tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
