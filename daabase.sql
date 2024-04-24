-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 10:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `kode_admin` varchar(12) NOT NULL,
  `no_tlp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `password`, `kode_admin`, `no_tlp`) VALUES
(1, 'ade tia', '1234', 'admin1', '085749051409'),
(2, 'cahyani', '4321', 'admin2', '085870283409'),
(3, 'yahya', '123', 'Y.001', '55645553');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `cover` varchar(255) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `jumlah_halaman` int(11) NOT NULL,
  `buku_deskripsi` text NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`cover`, `id_buku`, `kategori`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `jumlah_halaman`, `buku_deskripsi`, `status`) VALUES
('654e505d7eda4.jpg', 'bis01', 'bisnis', 'Bussiness is fun', 'Coach yohannes g pauly', 'Rejove', '2016-11-10', 500, '7 strategi untuk membangun bisnis', 0),
('654e62742ef40.jpg', 'bis02', 'bisnis', 'Digital Marketing Strategy', 'Simon kings north', '-', '2023-11-11', 250, 'Belajar strategi pemasaran digital', 1),
('65cae5568ce62.jpg', 'f.001', 'fantasi', 'Marxisme REVOLUSI DUNIA ISLAM', 'yahya', 'wijaya', '2024-01-19', 200, 'wfiufwiufvfiwefgv', 0),
('654e4dc4dc0c6.jpg', 'fil01', 'filsafat', 'Filosofi Teras', 'Henry Manampiring ', 'Kompas', '2018-11-26', 320, 'Filosofi Teras adalah sebuah buku pengantar filsafat Stoa yang dibuat khusus sebagai panduan moral anak muda. Buku ini ditulis untuk menjawab permasalahan tentang tingkat kekhawatiran yang cukup tinggi dalam skala nasional, terutama yang dialami oleh anak muda.', 0),
('654e4f5e85f75.jpg', 'fil02', 'filsafat', 'Sejarah dunia yang disembunyikan ', 'Jonathan Black ', '-', '2007-11-10', 633, 'Banyak orang mengatakan bahwa sejarah ditulis oleh para pemenang. Hal ini sama sekali tak mengejutkan alias wajar belaka. Tetapi, bagaimana jika sejarahâ€”atau apa yang kita ketahui sebagai sejarahâ€”ditulis oleh orang yang salah? ', 0),
('654e48e1a1680.jpg', 'inf01', 'informatika', 'Dasar dasar pemrogramman web', 'Sandhika Galih ', 'Inkara', '2023-10-18', 414, 'Website di era sekarang sudah menjadi kebutuhan utama yang tidak bisa diabaikan. Seluruh sektor bisnis atau edukasi dapat memanfaatkan website sebagai alat untuk promosi, tukar informasi, dan lainnya. Berdasarkan data dari World Wide Web Technology Surveys, dari seluruh website yang aktif, 88.2% menggunakan HTML dan 95.6% menggunakan CSS. Buku ini membahas tuntas mengenai HTML dan CSS sebagai fondasi dalam pembuatan website serta dilengkapi dengan Studi Kasus yang Relevan dan sesuai trend.', 0),
('654e4a1c80441.jpg', 'inf02', 'informatika', 'Kursus Mandiri Python', 'Budi Raharjo', 'Informatika', '2022-05-10', 550, 'Belajar pemrogramman python dengan 5 tahapan yaitu : \r\n1. Dasar dasar python\r\n2. PBO(OOP)\r\n3. Eksplorasi Pustaka\r\n4. SQL &amp; MySql\r\n5. Pemrogramman GUI', 0),
('654e4b44d4d0e.png', 'inf03', 'informatika', 'Pemrogramman Javascript Dan NodeJS untuk teknologi web', 'Budi Raharjo', 'Informatika', '2022-09-16', 500, 'Panduan membuat sistem aplikasi berbasis web dengan javascript dan nodeJs', 0),
('654e4c1154bdd.jpg', 'inf04', 'informatika', 'Panduan Dasar ubuntu untuk pemula', 'Muhammad Ulil Fahri', 'Informatika', '2017-11-10', 404, 'Panduan awal ubuntu untuk pemula', 0),
('654e4cd06e0de.jpeg', 'inf05', 'informatika', 'Belajar dasar Pemrogramman C++', 'Muhammad Taufik Dwi Putra', 'Informatika', '2018-11-10', 512, 'Panduan dasar belajar pemrogramman C++ untuk pemula', 0),
('65b9aa94d10c8.png', 'k.009', 'horor', 'buku cerita', 'endik', 'cv madu jaya', '2024-01-20', 12, 'weftjyjty', 0),
('654e3d8b359df.jpg', 'nov01', 'novel', 'Dunia Sophie', 'Jostein Gardeer', 'Mizan', '1996-11-10', 800, 'Anda ingin tahu apa filsafat,  tetapi selalu tidak sempat,  terlalu kabur, abstrak, susah dan bertele tele?  Bacalah buku manis ini dimana sophie anak putri 14 tahun, menjadi terpesona karenanya. ', 0),
('654e402a8ad79.jpg', 'nov02', 'novel', 'Perahu Kertas', 'Dewi Lestari', 'Bentang Pustaka', '2003-11-10', 444, 'Perahu Kertas bercerita tentang dua orang yang sama-sama unik bernama Kugy dan Keenan. ', 0),
('654e4417e323e.jpeg', 'nov03', 'novel', 'Pulang', 'Tere Liye ', 'Sabak grip Nusantara ', '2015-11-10', 838, 'Pulangâ€ ini adalah novel yang menceritakan perjalanan hidup seorang anak laki-laki bernama Bujang, yang sejak berumur lima belas tahun di sebuah hutan rimba pedalaman Sumatera, rasa takutnya telah direnggut oleh seekor monster mengerikan (induk babi hutan).', 0),
('654e456c2e275.jpg', 'nov04', 'novel', 'Surat Kecil Untuk Tuhan', 'Agnes Danovar', 'Inandra Publised', '2008-11-10', 200, 'Surat kecil untuk Tuhan adalah sebuah buku yang diangkat dari kisah nyata perjuangan gadis remaja bernama Gita Sesa Wanda Cantika alias Keke melawan kanker ganas.', 0),
('654e46a08484e.jpg', 'nov05', 'novel', 'Ancika : dia yang bersamaku tahun 1995', 'Pidi baiq', 'Pastel books', '2021-09-02', 180, 'menceritakan tentang persahabatan antara Dilan dan Ancika Mehrunisa Rabu. Hubungan mereka yang semakin dekat membuat benih-benih cinta tumbuh dan hubungan mereka pun naik tingkat menjadi hubungan sepasang kekasih.', 0),
('654e63b7841f5.jpg', 'sai01', 'sains', 'Cosmos', 'Karl sagan', '-', '2016-12-18', 488, 'Buku AEROCOSMOS adalah salah satu buku sains yang paling laris sepanjang sejarah. Dengan prosa jernih yang memukau, ahli astronomi Carl Sagan mengungkapkan alam semesta yang dihuni oleh suatu bentuk kehidupan yang baru saja mulai berpetualang menjelajahi luasnya antariksa.', 0),
('65a8872999826.jpg', 'sai02', 'sains', 'Kanker', 'Mukherjee, Siddhartha', 'Jakarta : KPG( Kepustakaan Populer Gramedia ), 2020', '2020-04-17', 658, 'Buku ini menjelaskan tentang biografi penyakit kanker', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategoribuku_relasi`
--

CREATE TABLE `kategoribuku_relasi` (
  `kategoribukuID` int(11) NOT NULL,
  `id_buku` varchar(20) CHARACTER SET latin1 NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategoribuku_relasi`
--

INSERT INTO `kategoribuku_relasi` (`kategoribukuID`, `id_buku`, `id_kategori`) VALUES
(1, 'bis01', 1),
(2, 'bis02', 1),
(3, 'fil01', 2),
(4, 'fil02', 2),
(7, 'inf01', 3),
(8, 'inf02', 3),
(9, 'inf03', 3),
(10, 'inf04', 3),
(11, 'inf05', 3),
(12, 'nov01', 4),
(13, 'nov02', 4),
(14, 'nov03', 4),
(15, 'nov04', 4),
(16, 'nov05', 4),
(17, 'sai01', 5),
(18, 'sai02', 5);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`id_kategori`, `kategori`) VALUES
(1, 'bisnis'),
(8, 'fantasi'),
(2, 'filsafat'),
(12, 'gkgjk'),
(9, 'horor'),
(3, 'informatika'),
(4, 'novel'),
(5, 'sains');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `nisn` int(11) NOT NULL,
  `kode_member` varchar(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `tgl_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`nisn`, `kode_member`, `nama`, `password`, `jenis_kelamin`, `kelas`, `jurusan`, `no_tlp`, `tgl_pendaftaran`) VALUES
(11, '11', '11 ', '$2y$10$q7RM18G4wiH3YYbZ/v581.Q6AcOLBJ5OXBfjYBmhIIryDH4y9DTBu', 'Laki laki', 'XI', 'RPL', '08158976544', '2024-02-01'),
(22, '22', '22', '$2y$10$K5vGRYYsMMNnlyhFB4ll7.flRG3YmTuhsF3p.0VDpUkqa8X6.hBvW', 'Laki laki', 'XII', 'BDP', '08158976544', '2024-01-03'),
(12345, '221', 'yahya', '$2y$10$gcHfxdxMOF.8nExPUK4dAery3ybCdVrc7Undwzu7O5UCPysEoqj0C', 'Perempuan', 'XI', 'TKJ', '08158976544', '2024-01-30'),
(32323, '32312', 'yy', '$2y$10$y0eFphDvB7Q/s4dnPm42iOlQCG7PUFRAvVCilrvAxbqFN0XM5OVg6', 'Perempuan', 'X', 'TKJ', '08997654321', '2024-05-02'),
(210106, 'Tiaa', 'ade tianaa', '$2y$10$6jUq6hl0M/bPecT5J2DQu.Nk76Pq5KoNyd6Qk.KN4dN5tnLLMjmBa', 'Perempuan', 'XII', 'RPL', '0882120621333', '2004-01-16'),
(654312, '111', 'adi', '$2y$10$BxkTg8e2YRYg6uMv6BZ5W.Da9tmpNRVwDJYQZ/EEcv7t5ETpSNPRK', 'Laki laki', 'X', 'RPL', '0924840493', '2024-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `buku_kembali` date NOT NULL,
  `keterlambatan` enum('YA','TIDAK') NOT NULL,
  `denda` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `id_peminjaman`, `id_buku`, `nisn`, `id_admin`, `buku_kembali`, `keterlambatan`, `denda`) VALUES
(77, 92, 'bis01', 22, 2, '2024-02-01', 'TIDAK', 0),
(78, 93, 'bis02', 11, 1, '2024-02-01', 'TIDAK', 0),
(79, 94, 'bis01', 22, 1, '2024-02-01', 'TIDAK', 0),
(80, 95, 'bis01', 11, 1, '2024-02-01', 'YA', 0),
(81, 97, 'bis01', 11, 1, '2024-02-07', 'TIDAK', 0),
(82, 98, 'k.009', 22, 2, '2024-02-10', 'YA', 0),
(83, 100, 'bis01', 11, 1, '2024-02-27', 'TIDAK', 0),
(85, 101, 'bis01', 11, 1, '2024-02-27', 'TIDAK', 0),
(86, 102, 'bis01', 11, 1, '2024-02-27', 'TIDAK', 0),
(87, 103, 'bis01', 11, 1, '2024-02-27', 'TIDAK', 0),
(88, 104, 'bis01', 11, 1, '2024-02-27', 'TIDAK', 0),
(89, 106, 'f.001', 22, 1, '2024-02-27', 'TIDAK', 0),
(90, 105, 'f.001', 11, 1, '2024-02-27', 'TIDAK', 0),
(91, 107, 'f.001', 22, 1, '2024-02-27', 'TIDAK', 0),
(92, 108, 'bis02', 11, 1, '2024-02-27', 'TIDAK', 0),
(93, 110, 'bis02', 22, 1, '2024-02-27', 'TIDAK', 0),
(94, 109, 'bis02', 11, 1, '2024-02-27', 'TIDAK', 0),
(95, 111, 'bis01', 22, 1, '2024-02-27', 'TIDAK', 0),
(96, 112, 'bis01', 11, 1, '2024-02-27', 'TIDAK', 0),
(97, 113, 'bis01', 11, 1, '2024-02-27', 'TIDAK', 0),
(98, 114, 'bis02', 22, 1, '2024-02-27', 'TIDAK', 0),
(99, 115, 'bis02', 11, 1, '2024-02-27', 'TIDAK', 0),
(100, 116, 'f.001', 11, 1, '2024-02-27', 'TIDAK', 0),
(101, 117, 'bis02', 22, 1, '2024-02-27', 'TIDAK', 0),
(102, 118, 'f.001', 11, 1, '2024-02-27', 'TIDAK', 0),
(103, 119, 'bis01', 11, 1, '2024-02-27', 'TIDAK', 0),
(104, 120, 'bis02', 11, 1, '2024-02-27', 'TIDAK', 0),
(105, 121, 'bis01', 22, 1, '2024-02-27', 'TIDAK', 0),
(106, 123, 'bis01', 22, 1, '2024-02-27', 'TIDAK', 0),
(107, 122, 'bis01', 11, 1, '2024-02-27', 'TIDAK', 0),
(108, 124, 'bis02', 22, 1, '2024-02-27', 'TIDAK', 0),
(109, 125, 'bis01', 11, 1, '2024-02-27', 'TIDAK', 0),
(110, 126, 'bis02', 22, 1, '2024-02-27', 'TIDAK', 0),
(111, 127, 'f.001', 11, 1, '2024-02-27', 'TIDAK', 0),
(112, 128, 'bis02', 22, 1, '2024-02-27', 'TIDAK', 0),
(113, 129, 'f.001', 11, 1, '2024-02-27', 'TIDAK', 0),
(114, 130, 'bis02', 22, 1, '2024-02-27', 'TIDAK', 0),
(115, 131, 'f.001', 11, 1, '2024-02-27', 'TIDAK', 0),
(116, 132, 'bis02', 22, 1, '2024-02-27', 'TIDAK', 0),
(117, 133, 'f.001', 11, 1, '2024-02-27', 'TIDAK', 0),
(118, 134, 'fil01', 22, 1, '2024-02-27', 'TIDAK', 0),
(119, 135, 'f.001', 11, 1, '2024-02-27', 'TIDAK', 0),
(120, 136, 'fil01', 22, 1, '2024-02-27', 'TIDAK', 0),
(121, 137, 'f.001', 11, 1, '2024-02-27', 'TIDAK', 0),
(122, 138, 'bis01', 22, 1, '2024-02-29', 'TIDAK', 0),
(123, 139, 'bis02', 11, 1, '2024-02-29', 'TIDAK', 0),
(124, 140, 'f.001', 22, 1, '2024-02-29', 'TIDAK', 0),
(125, 141, 'bis01', 22, 1, '2024-04-20', 'TIDAK', 0),
(126, 142, 'bis02', 22, 1, '2024-04-20', 'YA', -5000),
(127, 143, 'bis01', 22, 1, '2024-04-20', 'TIDAK', 0),
(128, 144, 'bis02', 22, 1, '2024-04-20', 'YA', -5000),
(129, 145, 'bis01', 22, 1, '2024-04-20', 'YA', -5000),
(130, 146, 'bis02', 22, 1, '2024-04-20', 'YA', 0);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`) VALUES
(23, 'abcdefgh', 'Yahya W', '0987', '08763728912'),
(32, 'abcdefghij', 'Yahya Wii', '098', '082291919'),
(36, 'agniasff', 'yhyae', '12129', '012345678'),
(37, 'yy', 'yy', '1', '0899999999'),
(38, 'abcde', 'admin', '0987', '1234567567'),
(40, 'agni', 'rer', 'rr', '0789789897'),
(41, 'agnias', 'zara0099', '12', '088214151661'),
(45, 'yy', 'yy', 'yy', '0028642647');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_admin` (`kode_admin`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategori` (`kategori`);

--
-- Indexes for table `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD PRIMARY KEY (`kategoribukuID`),
  ADD KEY `id_buku` (`id_buku`,`id_kategori`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `kategori` (`kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nisn`),
  ADD UNIQUE KEY `kode_member` (`kode_member`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_peminjaman` (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  MODIFY `kategoribukuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_buku` (`id_kategori`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);

--
-- Constraints for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `pengembalian_ibfk_3` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`),
  ADD CONSTRAINT `pengembalian_ibfk_4` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
