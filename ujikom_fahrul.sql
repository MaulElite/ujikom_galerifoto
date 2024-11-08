-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2024 at 07:43 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom_fahrul`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `nama_album` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `nama_album`, `deskripsi`, `tanggal`, `id_user`) VALUES
(1, 'Mountain', 'Gunung', '2024-10-16', 1),
(2, 'School', 'Sekolah', '2024-10-03', 1),
(10, 'Fashion', 'Pakaian', '2024-10-31', 1),
(11, 'khusus pepe', 'pepe', '2024-10-31', 2),
(12, 'cee punya', 'ceeceee', '2024-11-20', 5),
(13, 'si kami', 'calon ahli surga', '2024-11-03', 8),
(14, 'arul ganteng', 'kuyaa', '2024-11-03', 4),
(15, 'wallpaper', 'wallpaper aesthetic', '2024-11-03', 1),
(16, 'khick', ' l vljbjl/b', '2024-11-05', 4),
(17, 'Itspepe', 'second', '2024-11-05', 2),
(19, 'arul dan kawan kawan', 'me and friend', '2024-11-06', 4),
(20, 'sekolah', 'Foto sekolah', '2024-11-06', 9);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `id_album` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id_foto`, `judul`, `deskripsi`, `tanggal`, `gambar`, `id_album`, `id_user`) VALUES
(3, 'hh starboy', 'asaiki', '2024-10-26', 'WhatsApp Image 2024-05-29 at 21.52.32_b88b4cb3.jpg', 2, 1),
(7, 'gabut 2', 'P5', '2024-10-31', 'WhatsApp Image 2024-08-16 at 14.53.41_d8dc5b30.jpg', 2, 1),
(10, 'wew egii', 'Manusia asal mars ini turun ke bumi untuk mencari bola dragonball yang terletak di belahan dunia, tetapi pria tersebut menemukan teman masa kecilnya di bumi yaitu ki starboy dia sangat senang saat ketemu teman masa kecilnya. dia juga memberi sambutan hangat kepada pria tersebut', '2024-11-01', '365321188_1343460606547457_242829854891721138_n.jpg', 11, 2),
(12, 'cee', 'shees', '2024-11-08', 'Republic_of_Gamers_Logo_Wallpaper-removebg-preview.png', 12, 5),
(16, 'gatau arul yang ngisi', 'arul punyaa', '2024-11-03', 'PYO.jpeg', 14, 4),
(19, 'welcome', 'wp', '2024-11-03', 'bgwelcome.jpg', 15, 1),
(20, 'wp', 'wp', '2024-11-03', 'HALODOC.jpg', 15, 1),
(21, 'SKY', 'langit dan awan', '2024-10-27', 'sky.png', 15, 1),
(22, 'animesky', 'langit anime', '2024-11-03', 'animesky.jpg', 15, 1),
(23, 'kimi no na wa', 'taki', '2024-11-03', 'knnw.webp', 15, 1),
(24, 'taki', 'wallpaper taki', '2024-11-03', 'taki.jpg', 15, 1),
(27, 'galeri online logo png', 'galon yaitu galeri online by arul', '2024-11-05', '20241024_103214.png', 14, 4),
(28, 'neru', 'school', '2024-11-05', 'book.png', 2, 1),
(30, 'me and friends ', 'teman teman yang membuat saya bahagia', '2024-11-06', 'ateman.webp', 19, 4);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_foto` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_foto`, `id_user`, `komentar`, `tanggal`) VALUES
(1, 7, 1, 'mantap', '2024-10-31'),
(2, 7, 1, 'tes', '2024-11-03'),
(4, 10, 1, 'starboy', '2024-11-03'),
(5, 3, 8, 'kecee starboy', '2024-11-03'),
(11, 16, 2, 'madep', '2024-11-05'),
(12, 21, 2, 'hahaha', '2024-11-05'),
(13, 16, 2, 'kecee\r\n', '2024-11-05'),
(14, 10, 2, 'busettt', '2024-11-05'),
(15, 27, 2, 'apasih', '2024-11-05'),
(16, 28, 2, 'tes', '2024-11-05'),
(17, 23, 2, 'takii can', '2024-11-06'),
(19, 27, 4, 'ga kelihatan cuy\r\n', '2024-11-06'),
(20, 12, 4, 'rog keren banget', '2024-11-06'),
(23, 3, 9, 'mantap sekali', '2024-11-06'),
(24, 3, 4, 'slebew', '2024-11-06');

-- --------------------------------------------------------

--
-- Table structure for table `likefoto`
--

CREATE TABLE `likefoto` (
  `id_like` int(11) NOT NULL,
  `id_foto` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tanggal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likefoto`
--

INSERT INTO `likefoto` (`id_like`, `id_foto`, `id_user`, `tanggal`) VALUES
(5, 12, 1, NULL),
(7, 3, 2, NULL),
(9, 12, 2, NULL),
(16, 10, 1, NULL),
(20, 10, 2, NULL),
(21, 12, 4, NULL),
(31, 10, 4, NULL),
(35, 7, 1, NULL),
(36, 19, 2, NULL),
(38, 20, 2, NULL),
(39, 7, 2, NULL),
(40, 24, 2, NULL),
(41, 16, 2, NULL),
(42, 21, 2, NULL),
(46, 23, 2, NULL),
(47, 28, 2, NULL),
(48, 16, 4, NULL),
(49, 27, 4, NULL),
(51, 3, 1, NULL),
(52, 3, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `roles` enum('admin','user') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `nama_lengkap`, `alamat`, `roles`) VALUES
(1, 'maul', 'b5e4eae83cc3c4d7a4bf956ce0fc3016', 'maul@gmail.com', 'maul elite', 'cileunyi', 'admin'),
(2, 'pepe', '7edede46f596b580cd10469463987280', 'pepe@gmail.com', 'pepe thani', 'Wonosobo', 'user'),
(4, 'qw', '4c9d4914f727114e49e936c86aba34ec', 'qwerty@gmail.com', 'arul', 'hulahula', 'user'),
(5, 'cee', '3597bdb8b9b520b2c1cedbb8f4d8fb3c', 'cee@gmailcom', 'cee', 'Wonogiri', 'user'),
(6, 'nana', '6ebba2abeb5cb63a539ec3d67a72bbba', 'nana@gmail.com', 'nana', 'Nagapuro', 'user'),
(8, 'mOREN', '827ccb0eea8a706c4c34a16891f84e7b', 'moqrennn@gmail.com', 'moren', 'CImahi', 'user'),
(9, 'akunbaru', '72c1bc1e66d785bc0f12578243fd9d09', 'akunbaru@gamil.com', 'akun baru', 'Bandung', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `id_album` (`id_album`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_foto` (`id_foto`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`id_like`),
  ADD KEY `id_foto` (`id_foto`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `id_like` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_foto`) REFERENCES `foto` (`id_foto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`id_foto`) REFERENCES `foto` (`id_foto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
