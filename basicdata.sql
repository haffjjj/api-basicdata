-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14 Nov 2017 pada 13.38
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
-- Struktur dari tabel `bab_content`
--

CREATE TABLE `bab_content` (
  `id` int(10) NOT NULL,
  `id_bab` int(10) NOT NULL,
  `title` varchar(99) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bab_content`
--

INSERT INTO `bab_content` (`id`, `id_bab`, `title`, `content`) VALUES
(1, 1, 'Perancangan Basis Data', '<ul>\r\n<li>Perancang basis data merupakan suatu hal yang sangat penting.</li>\r\n<li>Kesulitan utama datam merancang database dalah bagaimana merancang sehingga database dapat memuaskan keperluan saat ini dan masa mendatang.</li>\r\n<li>Tujuan perancangan adalah agar dapat memiliki basis data yang kompak, efisien dalam penggunaan ruang penyimpanan, Cepat dalam pengaksesan dan mudah dalam memanipulasi data (operasitambah,ubah, hapus).</li>\r\n<li>Beberapa pengertian berkaiatan dengan perancangan</li>\r\n</ul>\r\n<p>modelkonseptual, ialah :</p>\r\n<ol>\r\n<li>Bukan merupakan pendekatan proses informasi untuk seorang programmer aplikasi, tetapi merupakan kombinasi beberapa cara untuk memproses data untuk beberapa aplikasi.</li>\r\n<li>Tidak tergantung pada aplikasi individual.</li>\r\n<li>Tidak tergantung pada DBMS yang digunakan.</li>\r\n<li>Tidak tergantung pada hardware yang digunakan.</li>\r\n<li>Tidak tergantung pada phisikal model.</li>\r\n<li>Tidaklah perlu dipikirkan tentang terapan dan operasi yang akan dilakukan pada database.</li>\r\n</ol>\r\n<ul>\r\n<li>Dalam merancang basis data dapat dilakukan melalui dua pendekatan yaitu:</li>\r\n</ul>\r\n<ol>\r\n<li>Model Entity&ndash;Relationship-diagram (telah dijelaskan dalam uraian kegiatan 3, 4 dan 5).</li>\r\n<li>Menerapkan normalisasi terhadap struktur tabel yang telah diketahui.</li>\r\n</ol>'),
(2, 2, 'Definisi Normalisasi', '<ul>\r\n<li>Normalisasi diartikan sebagai suatu teknik yang menstrukturkan atau mendekomposisi atau memecah data menggunakan cara&ndash;cara tertentu untuk mencegah timbulnya permasalahan pengolahan data dalam basis data.</li>\r\n<li>Proses normalisasi akan menghasilkan relasi yang optimal, yaitu :</li>\r\n</ul>\r\n<ol>\r\n<li>Memiliki struktur <em>record </em>yang mudah untuk dimengerti.</li>\r\n<li>Memiliki struktur <em>record </em>yang sederhana dalam pemeliharaan.</li>\r\n<li>Memiliki struktur <em>record </em>yang mudah untuk ditampilkan kembali untuk memenuhi kebutuhan pemakai.</li>\r\n<li>Minimalisasi kerangkapan data guna meningkatkan kinerja sistem.</li>\r\n</ol>'),
(4, 3, 'Domain dan Tipe Data Konsep pendukung teknik normalisasi.', '<ul>\r\n<li>teknik normalisasi data antara lain ialah:</li>\r\n</ul>\r\n<ol>\r\n<li>ketergantungan fungsional (sudah dibahas dalam kegiatan belajar tujuh).</li>\r\n<li>Domain dan tipe data.</li>\r\n<li>Konsep key atribut (Field/atribute kunci).</li>\r\n</ol>\r\n<ul>\r\n<li>Jika telah menetapkan bahwa tipe data untuk sebuah atribut adalah</li>\r\n</ul>\r\n<p>integer, maka kita hanya mungkin untuk menyimpan data angka yang bulat diantara &ndash;32.768 hingga 32.768.</p>'),
(5, 4, 'Key Attribute', '<ul>\r\n<li>Setiap file atau tabel selalu mempunyai kunci (key) yaitu berupa satu field atau satu set field yang dapat mewakili record.</li>\r\n<li><em>Key </em>adalah satu atau gabungan dari beberapa atribut yang dapat membedakan semua baris data (row) dalam table secara unik.</li>\r\n<li>Macam-macam Filed/attribute kunci:</li>\r\n</ul>\r\n<ol>\r\n<li><em>Candidate Key </em>(Kunci Kandidat/Kunci Calon)</li>\r\n<li><em>Primary Key </em>(Kunci Primer)</li>\r\n<li><em>Alternate Key </em>(Kunci Alternatif)</li>\r\n<li><em>Foreign Key </em>(Kunci Tamu)</li>\r\n<li><em>Candidate Key </em>(Kunci Kandidat/Kunci calon)</li>\r\n<li>composite key (kunci campuran/ gabungan).</li>\r\n</ol>\r\n<ul>\r\n<li><em>Primary Key </em>adalah satu atribute atau satu set minimal atribute yang tidak hanya mengidentitikasi secara unik suatu kejadian spesific, tapi juga dapat mewakili setiap kejadian dari suatu entity.</li>\r\n<li><em>Alternate Key </em>(Kunci alternatif)adalah kunci kandidat yang tidak dipakai sebagai primary key. Contoh: Kunci Alternatif untuk pengurutan berdasarkan nama.</li>\r\n<li><em>Foreign Key </em>(Kunci Tamu/Asing)<em>Foreign Key </em>adalah satu atribute (atau satu set atribute) yang melengkapi satu relationship (hubungan) yang menunjukkan ke</li>\r\n</ul>\r\n<p>induknya. Contoh:</p><img src=\'http://localhost/basicdata/_assets/img/materi_4_1.png\'>'),
(6, 5, 'Persyaratan teknik normalisasi data.', '<ul>\r\n<li>Dalam perspektif normalisasi, sebuah basis data dapat dikatakan baik, jika setiap tabel yang menjadi unsur pembentuk basis data tersebut juga telah berada dalam keadaan baik atau normal. Selanjutnya, sebuah tabel dapat dikategorikan baik (<em>efisien</em>) atau normal, jika telah memenuhi 3 (tiga) kriteria berikut :</li>\r\n</ul>\r\n<ol>\r\n<li>Jika ada <em>dekomposisi </em>(penguraian) tabel, maka dekomposisinya harus dijamin aman</li>\r\n</ol>\r\n<p>(<em>Lossless</em><em>&ndash;</em><em>Join Decomposition</em>).</p>\r\n<ol start=\"2\">\r\n<li>Terpeliharanya ketergantungan fungsional pada saat perubahan data</li>\r\n</ol>\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp; </strong>(<em>DependencyPreservation</em>).</p>\r\n<ol start=\"3\">\r\n<li>Tidak melanggar <em>Boyce</em><em>&ndash;</em><em>Code Normal Form </em>(BCNF)</li>\r\n</ol>'),
(9, 6, 'Lossless Join Decomposition', '<ul>\r\n<li>Dekomposisi memang merupakan upaya untuk mendapatkan tabel yang baik. Tetapi jika tidak hati&ndash;hati, upaya ini justru dapat menghasilkan kesalahan. Dekomposisi yang benar terjadi jika tabel&ndash;tabel hasil dekomposisi kita gabungkan kembali dapat menghasilkan tabel awal sebelum didekomposisi.</li>\r\n<li>contoh abstrak yang menghasilkan dekomposisi tidak aman (<em>Lossy&ndash;Join Decomposition</em>) :</li>\r\n</ul>\r\n<p>Diasumsikan ada table XYZ yang didefinisikan dua buah ketergantungan fungsional &nbsp;&nbsp;&nbsp;&nbsp;X &agrave; Y dan Y &agrave; Z. Kedua ketergantungan fungsional tersebut diperoleh dari pengamatan terhadap data yang kurang memadai atau karena asumsi yang kurang tepat. Katakan isi tabel XYZ tersebut adalah sebagai berikut:</p>\r\n<p><img class=\"materi-img\" src=\"http://localhost/basicdata/_assets/img/materi_6_1.png\" /></p>\r\n<p>Memang dengan isi seperti itu, pernyataan ketergantungan fungsional yang kedua Y &agrave; Z tidak sepenuhnya tepat, karena pada <em>row </em>2 dan <em>row </em>4, dengan nilai untuk atribut Z&ndash;nya berbeda. Tetapi yang ingin ditekankan di sini adalah adanya dua buah ketergantunagn fungsional itu mendorong kita untuk mendekomposisi tabel XYZ tersebut menjadi dua buah tabel yaitu tabel XY dan</p>\r\n<p>YZ sebagai berikut :</p>\r\n<p><img class=\"materi-img\" src=\"http://localhost/basicdata/_assets/img/materi_6_2.png\" /></p>\r\n<p>Jika kedua tabel diatas kita gabungkan kembali, maka hasilnya adalah :</p>\r\n<p>&nbsp;</p>\r\n<p><img class=\"materi-img\" src=\"http://localhost/basicdata/_assets/img/materi_6_3.png\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Maka ini tentu saja berbeda dengan tabel awal (sebelum didekomposisi). Maka dekomposisi semacam ini disebut <em>Lossy</em><em>&ndash;</em><em>Join Decomposition </em>(dekomposisi tidak aman), yaitu sebuah dekomposisi yang sedapat mungkin kita hindari.Akan tetapi</p>\r\n<p>jika data pada <em>row 4 </em>yang ada di tabel XYZ awal, kita ganti dengan data berikut :</p>\r\n<p><img class=\"materi-img\" src=\"http://localhost/basicdata/_assets/img/materi_6_4.png\" /></p>'),
(10, 11, 'Dependency Preservation', '<ul>\r\n<li><em>Dependency Preservation </em>(pemeliharaan ketergantungan) merupakankriteria kedua yang harus dapat dicapai untuk mendapatkan tabel dan basis data yang baik.</li>\r\n<li>Ketika melakukan perubahan data, maka harus bisa dijamin agarperubahan tersebut tidak menghasilkan <em>inkonsistensi </em>data yang mengakibatkan ketergantungan fungsional yang sudah benar menjadi tidak terpenuhi.</li>\r\n<li>Contoh :\r\n<ul>\r\n<li>Tabel mahasiswa : (nim, nama_mhs, alamat_mhs, tgl_lahir)</li>\r\n<li>Dengan ketergantungan fungsional&ndash;nya yaitu :</li>\r\n<li>Nim -&gt; nama_mhs, alamat_mhs, tgl_lahir</li>\r\n<li>Tabel nilai : (nama_kul, nim, nama_mhs, indeks_nilai)</li>\r\n<li>Dengan ketergantungan fungsional&ndash;nya yaitu : nama_kul, nim -&gt; indeks_nilai dan</li>\r\n<li>nim -&gt; nama_mhs</li>\r\n</ul>\r\n</li>\r\n<li>Jika ada perubahan nama_mhs di tabel mahasiswa maka perubahan tersebut harus juga dilakukan di tabel nilai dan juga berlaku sebaliknya yaitu jika ada perubahan nama_mhs di tabel nilai maka perubahan tersebut harus juga dilakukan di tabel mahasiswa.</li>\r\n</ul>'),
(11, 12, 'Boyce Code Normal Form (BCNF)', '<ul>\r\n<li>Sebuah tabel dikatakan memenuhi BCNF jika untuk semua ketergantungan fungsional dengan notasi X -&gt; Y, maka X harus merupakan <em>candidate key </em>pada tabel tersebut. Jika tidak demikian, maka tabel tersebut harus didekomposisi berdasarkan ketergantungan fungsional yang ada, sedemikian hingga X menjadi <em>candidat key </em>dari tabel&ndash;tabel hasil dekomposisi</li>\r\n<li><em>Contoh tabel yang tidak memenuhi BCNF :</em></li>\r\n<li style=\"list-style-type: none;\">\r\n<p>Ditentukan tabel A = (E, F, G, H, I) dan berlaku ketergantungan fungsional, yaitu :</p>\r\n<p>E, F -&gt; G, H, I</p>\r\n<p>F, G -&gt;&nbsp; H, I</p>\r\n<p>Disini tabel A tidak memenuhi BCNF karena ada X yang bukan <em>candiday key</em>, yaitu F, G sehingga F, G &agrave;H, I. Sedangkan E, F adalah <em>candidat key </em>karena E, F&agrave; G, H, I</p>\r\n<p>Karena terdapat 2 ketergantungan fungsional maka agar tabel A tidak memenuhi BCNF maka tabel tersebut harus didekomposisikan menjadi :</p>\r\n<p>A1 = (E, F, G) dengan ketergantungan fungsional E, F -&gt; G</p>\r\n<p>A2 = (F, G, H, I) dengan ketergantungan fungsional F, G -&gt; H, I</p>\r\n</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bab_materi`
--

CREATE TABLE `bab_materi` (
  `id` int(10) NOT NULL,
  `imgpath` varchar(255) NOT NULL,
  `no` int(10) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bab_materi`
--

INSERT INTO `bab_materi` (`id`, `imgpath`, `no`, `title`) VALUES
(1, 'perancanganbasic', 1, 'Perancangan Basis Data'),
(2, 'definisinor', 2, 'Definisi Normalisasi'),
(3, 'domaindantipedata', 3, 'Domain dan Tipe Data Konsep pendukung teknik norma'),
(4, 'keyattribute', 4, 'Key Attribute'),
(5, 'persyaratanteknik', 5, 'Persyaratan teknik normalisasi data'),
(6, 'losslessjoin', 6, 'Lossless Join Decomposition'),
(11, 'dependencypres', 7, 'Dependency Preservation'),
(12, 'boycecode', 8, 'Boyce Code Normal Form (BCNF)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz`
--

CREATE TABLE `quiz` (
  `id` int(10) NOT NULL,
  `id_level` int(10) NOT NULL,
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

INSERT INTO `quiz` (`id`, `id_level`, `quiz`, `a`, `b`, `c`, `d`, `e`, `answer`) VALUES
(1, 1, '<p><strong>Perhatikan data berikut !</strong></p>\r\n<ol>\r\n<li><em>Candidate Key</em></li>\r\n<li><em>Primary Key</em></li>\r\n<li>Secondary Key</li>\r\n<li><em>Alternate Key</em></li>\r\n<li><em>Foreign Key</em></li>\r\n<li>Master Key</li>\r\n</ol>\r\n<p>&nbsp;Yang termasuk dalam Macam macam Filed / attribute kunci adalah &hellip;</p>', '1, 2, 5, 6', '1, 2, 4, 5', '1, 2, 3, 4', '2, 3 , 4 , 5', '1, 2 , 3 , 6 ', 'b'),
(2, 1, '<p>Jika telah menetapkan bahwa tipe data untuk sebuah atribut adalah integer, maka kita hanya mungkin untuk menyimpan data angka yang bulat diantara angka...</p>', '-32.768 hingga 32.768.', '-32.786 hingga 32.768', '-32.678 hingga 32.768', '-32.678 hingga 32.768', '-32.768 hingga 32.786', 'a'),
(3, 1, '<p><strong>Perhatikan Data Berikut !</strong></p>\r\n<p>1) Model Entity&ndash;Relationship-diagram</p>\r\n<p>2) Menerapkan normalisasi terhadap struktur tabel yang telah diketahui</p>\r\n<p>3) Struktur diagram yang sesuai</p>\r\n<p>4) Ketepatan Tipedata</p>\r\n<p>Dalam merancang basis data dapat dilakukan melalui dua Pendekatan, ditunjukan dengan nomor &hellip;</p>', '1 dan 3', '2 dan 4', '2 dan 3', '1 dan 2', 'Semua benar', 'd'),
(4, 1, '<p>Jika telah menetapkan bahwa tipe data untuk sebuah atribut adalah integer, maka kita hanya mungkin untuk menyimpan data angka yang bulat diantara batas tertentu . Pengguna tidak mungkin untuk memasukkan data diluar batas nilai tersebut. untuk memasukkan data pecahan pengguna harus menggunakan data bertipe...</p>', 'String atau text', 'Float atau text', 'String atau float', 'Char atau text', 'Semua benar', 'a'),
(5, 1, '<p>Jika satu kunci kandidat berisi lebih dari satu atribute, maka biasanya disebut sebagai...</p>', 'Candidate Key ', 'Primary Key ', 'Foreign Key', 'Alternate Key ', 'Composite key', 'e'),
(6, 1, '<p><strong>Perhatikan data berikut !</strong></p>\r\n<ol>\r\n<li>Jika ada <em>dekomposisi</em> (penguraian) tabel, maka dekomposisinya harus dijamin aman (<em>Lossless&ndash;Join Decomposition</em>).</li>\r\n<li>Terpeliharanya ketergantungan fungsional pada saat perubahan data (<em>DependencyPreservation</em>).</li>\r\n<li>Tidak melanggar <em>Boyce&ndash;Code Normal Form</em> (BCNF)</li>\r\n<li>Tidak melanggar rule of third</li>\r\n</ol>\r\n<p>sebuah tabel dapat dikategorikan baik (<em>efisien</em>) atau normal, jika telah memenuhi beberapa kriteria, ditunjukan nomor &hellip;</p>', '1, 3, 4', '1, 2, 3, 4', '1, 2, 3', '2, 3, 4', 'Semua benar', 'c'),
(7, 1, '<p>&hellip;adalah satu atribute (atau satu set atribute) yang melengkapi satu relationship (hubungan) yang menunjukkan ke induknya.</p>\r\n<p>Yang tepat untuk mengisi titik titik diatas adalah&hellip;.</p>', 'Candidate Key', 'Primary Key', 'Foreign Key', 'Alternate Key', 'Composite key', 'c'),
(8, 1, '<p><em>...</em>adalah kunci kandidat yang tidak dipakai sebagai primary key. Kerap kali kunci alternatif dipakai sebagai kunci pengurutan dalam laporan.</p>\r\n<p>Yang tepat untuk mengisi titik titik diatas adalah&hellip;.</p>', 'Candidate Key ', 'Primary Key ', 'Foreign key', 'Alternate Key', 'Compsite Key', 'd'),
(9, 1, '<p>Dekomposisi yang benar terjadi jika tabel&ndash;tabel hasil dekomposisi kita gabungkan kembali dapat menghasilkan tabel awal sebelum didekomposisi. Dekomposisi yang benar semacam ini disebut..</p>', 'Lossless Join Composition atau Lossless Decomposition', 'Lossless Join Deposition atau Losless Composition', 'Lossless Join Decomposition atau Lossless Decomposition', 'DependencyPreservation', 'BoyceCode Normal Form', 'c'),
(10, 1, '<p><strong>Perhatikan Kasus dibawah ini untuk menjawab soal !</strong></p>\r\n<p>Pada tabel kuliah, ditetapkan tipe data untuk atribut sks adalah integer. Dengan begitu secara fisik kita dapat menyimpan nilai &ndash;1, 0 atau 100 untuk atribut sks. Tetapi kita mengetahui dengan pasti, bahwa nilai&ndash;nilai tersebut tidak pantas (<em>invalid</em>) untuk menjadi data pada atribut sks. Lalu nilai&ndash;nilai yangboleh (<em>valid</em>) untuk atribut sks adalah 1, 2, 3, 4 dan 5, maka dapat dikatakan, domain nilai untuk atribut sks adalah &hellip;</p>', '-1, 0 atau 100', '1,2,3,4 dan 5', '0 sampai 100', '-1, 0 , 1, 2, 3, 4, 5, 6', '0, 1, 2, 3 sampai 100', 'b'),
(12, 2, 'Test quiz 2', 'false', 'false', 'false', 'true', 'false', 'd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz_level`
--

CREATE TABLE `quiz_level` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `quiz_level`
--

INSERT INTO `quiz_level` (`id`, `title`, `content`) VALUES
(1, 'Level 1', 'Sangat Dasar'),
(2, 'Level 2', 'Dewa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz_result`
--

CREATE TABLE `quiz_result` (
  `id` int(10) NOT NULL,
  `id_quiz_level` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `score` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `quiz_result`
--

INSERT INTO `quiz_result` (`id`, `id_quiz_level`, `username`, `score`) VALUES
(2, 1, 'jondes', 10),
(3, 1, 'jondes', 10),
(4, 1, 'helo', 0),
(5, 1, 'helo', 10),
(6, 2, 'jondes', 0),
(7, 2, 'jondes', 100),
(8, 1, 'hehe', 10),
(9, 1, 'joo', 10),
(10, 2, 'hellya', 0),
(11, 2, 'muah', 100),
(12, 1, 'jondes', 10),
(13, 2, 'test', 100),
(14, 1, 'jon', 10),
(15, 1, 'jond', 10),
(16, 2, 'hel', 100),
(17, 2, 'hel', 100),
(18, 1, 'jondes', 10),
(19, 1, 'jondes', 20),
(20, 2, 'testtemuah', 100),
(21, 2, 'JON', 100),
(22, 2, 'HELL', 0),
(23, 1, 'helo', 0),
(24, 2, 'jondd', 0),
(25, 2, 'jonddy', 100),
(26, 2, 'hello', 100),
(27, 2, 'jondes', 100),
(28, 2, 'k', 100),
(29, 1, 'jondes', 10),
(30, 1, 'jondes', 20),
(31, 2, 'uh', 0),
(32, 2, 'sd', 100),
(33, 1, 'wef', 0),
(34, 2, 'sdf', 0),
(35, 2, 'sdf', 100),
(36, 1, 'syafie', 10),
(37, 2, 'jen', 100),
(38, 1, 'hel', 10),
(39, 1, 'jon', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bab_content`
--
ALTER TABLE `bab_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bab` (`id_bab`);

--
-- Indexes for table `bab_materi`
--
ALTER TABLE `bab_materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_level` (`id_level`);

--
-- Indexes for table `quiz_level`
--
ALTER TABLE `quiz_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_result`
--
ALTER TABLE `quiz_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_quiz_level` (`id_quiz_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bab_content`
--
ALTER TABLE `bab_content`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bab_materi`
--
ALTER TABLE `bab_materi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quiz_level`
--
ALTER TABLE `quiz_level`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_result`
--
ALTER TABLE `quiz_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bab_content`
--
ALTER TABLE `bab_content`
  ADD CONSTRAINT `bab_content_ibfk_1` FOREIGN KEY (`id_bab`) REFERENCES `bab_materi` (`id`);

--
-- Ketidakleluasaan untuk tabel `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `quiz_level` (`id`);

--
-- Ketidakleluasaan untuk tabel `quiz_result`
--
ALTER TABLE `quiz_result`
  ADD CONSTRAINT `quiz_result_ibfk_1` FOREIGN KEY (`id_quiz_level`) REFERENCES `quiz` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
