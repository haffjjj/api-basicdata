-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12 Nov 2017 pada 06.58
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
-- Struktur dari tabel `quiz`
--

CREATE TABLE `quiz` (
  `id` int(10) NOT NULL,
  `quiz` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `e` text NOT NULL,
  `answer` enum('a','b','c','d','e') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `quiz`
--

INSERT INTO `quiz` (`id`, `quiz`, `a`, `b`, `c`, `d`, `e`, `answer`) VALUES
(1, '<p><strong>Perhatikan data berikut !</strong></p>\r\n<ol>\r\n<li><em>Candidate Key</em></li>\r\n<li><em>Primary Key</em></li>\r\n<li>Secondary Key</li>\r\n<li><em>Alternate Key</em></li>\r\n<li><em>Foreign Key</em></li>\r\n<li>Master Key</li>\r\n</ol>\r\n<p>&nbsp;Yang termasuk dalam Macam macam Filed / attribute kunci adalah &hellip;</p>', '1, 2, 5, 6', '1, 2, 4, 5', '1, 2, 3, 4', '2, 3 , 4 , 5', '1, 2 , 3 , 6 ', 'b'),
(2, '<p>Jika telah menetapkan bahwa tipe data untuk sebuah atribut adalah integer, maka kita hanya mungkin untuk menyimpan data angka yang bulat diantara angka...</p>', '–32.768 hingga 32.768.', '–32.786 hingga 32.768', '–32.678 hingga 32.768', '–32.678 hingga 32.768', '–32.768 hingga 32.786', 'a'),
(3, '<p><strong>Perhatikan Data Berikut !</strong></p>\r\n<p>1) Model Entity&ndash;Relationship-diagram</p>\r\n<p>2) Menerapkan normalisasi terhadap struktur tabel yang telah diketahui</p>\r\n<p>3) Struktur diagram yang sesuai</p>\r\n<p>4) Ketepatan Tipedata</p>\r\n<p>Dalam merancang basis data dapat dilakukan melalui dua Pendekatan, ditunjukan dengan nomor &hellip;</p>', '1 dan 3', '2 dan 4', '2 dan 3', '1 dan 2', 'Semua benar', 'd'),
(4, '<p>Jika telah menetapkan bahwa tipe data untuk sebuah atribut adalah integer, maka kita hanya mungkin untuk menyimpan data angka yang bulat diantara batas tertentu . Pengguna tidak mungkin untuk memasukkan data diluar batas nilai tersebut. untuk memasukkan data pecahan pengguna harus menggunakan data bertipe...</p>', 'String atau text', 'Float atau text', 'String atau float', 'Char atau text', 'Semua benar', 'a'),
(5, '<p>Jika satu kunci kandidat berisi lebih dari satu atribute, maka biasanya disebut sebagai...</p>', 'Candidate Key ', 'Primary Key ', 'Foreign Key', 'Alternate Key ', 'Composite key', 'e'),
(6, '<p><strong>Perhatikan data berikut !</strong></p>\r\n<ol>\r\n<li>Jika ada <em>dekomposisi</em> (penguraian) tabel, maka dekomposisinya harus dijamin aman (<em>Lossless&ndash;Join Decomposition</em>).</li>\r\n<li>Terpeliharanya ketergantungan fungsional pada saat perubahan data (<em>DependencyPreservation</em>).</li>\r\n<li>Tidak melanggar <em>Boyce&ndash;Code Normal Form</em> (BCNF)</li>\r\n<li>Tidak melanggar rule of third</li>\r\n</ol>\r\n<p>sebuah tabel dapat dikategorikan baik (<em>efisien</em>) atau normal, jika telah memenuhi beberapa kriteria, ditunjukan nomor &hellip;</p>', '1, 3, 4', '1, 2, 3=4', '1, 2, 3', '2, 3, 4', 'Semua benar', 'c'),
(7, '<p>&hellip;adalah satu atribute (atau satu set atribute) yang melengkapi satu relationship (hubungan) yang menunjukkan ke induknya.</p>\r\n<p>Yang tepat untuk mengisi titik titik diatas adalah&hellip;.</p>', 'Candidate Key', 'Primary Key', 'Foreign Key', 'Alternate Key', 'Composite key', 'c'),
(8, '<p><em>...</em>adalah kunci kandidat yang tidak dipakai sebagai primary key. Kerap kali kunci alternatif dipakai sebagai kunci pengurutan dalam laporan.</p>\r\n<p>Yang tepat untuk mengisi titik titik diatas adalah&hellip;.</p>', 'Candidate Key ', 'Primary Key ', 'Foreign key', 'Alternate Key', 'Compsite Key', 'd'),
(9, '<p>Dekomposisi yang benar terjadi jika tabel&ndash;tabel hasil dekomposisi kita gabungkan kembali dapat menghasilkan tabel awal sebelum didekomposisi. Dekomposisi yang benar semacam ini disebut..</p>', 'Lossless-Join Composition atau Lossless Decomposition', 'Lossless-Join Deposition atau Losless Composition', 'Lossless–Join Decomposition atau Lossless Decomposition', 'DependencyPreservation', 'Boyce–Code Normal Form', 'c'),
(10, '<p><strong>Perhatikan Kasus dibawah ini untuk menjawab soal !</strong></p>\r\n<p>Pada tabel kuliah, ditetapkan tipe data untuk atribut sks adalah integer. Dengan begitu secara fisik kita dapat menyimpan nilai &ndash;1, 0 atau 100 untuk atribut sks. Tetapi kita mengetahui dengan pasti, bahwa nilai&ndash;nilai tersebut tidak pantas (<em>invalid</em>) untuk menjadi data pada atribut sks. Lalu nilai&ndash;nilai yangboleh (<em>valid</em>) untuk atribut sks adalah 1, 2, 3, 4 dan 5, maka dapat dikatakan, domain nilai untuk atribut sks adalah &hellip;</p>', '–1, 0 atau 100', '1,2,3,4 dan 5', '0 sampai 100', '-1, 0 , 1, 2, 3, 4, 5, 6', '0, 1, 2, 3 sampai 100', 'b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
