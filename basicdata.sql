-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07 Nov 2017 pada 12.26
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basicdata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `content_bab`
--

CREATE TABLE `content_bab` (
  `id` int(10) NOT NULL,
  `id_bab` int(10) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `content_bab`
--

INSERT INTO `content_bab` (`id`, `id_bab`, `content`) VALUES
(1, 1, 'Lorem Ipsum dono dan si memet bermain bersama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi_bab`
--

CREATE TABLE `materi_bab` (
  `id` int(10) NOT NULL,
  `imgpath` varchar(255) NOT NULL,
  `no` int(10) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `materi_bab`
--

INSERT INTO `materi_bab` (`id`, `imgpath`, `no`, `title`) VALUES
(1, 'blabla', 1, 'Pengertian bla bla'),
(2, 'bla', 2, 'Pengertian 2'),
(3, 'asd', 3, 'Pengertian 3'),
(4, 'asdf', 4, 'Basis Data Pak AIC'),
(5, 'sgf', 5, 'ZTH Team 17'),
(6, '', 6, 'Test Passing data');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content_bab`
--
ALTER TABLE `content_bab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi_bab`
--
ALTER TABLE `materi_bab`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content_bab`
--
ALTER TABLE `content_bab`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materi_bab`
--
ALTER TABLE `materi_bab`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
