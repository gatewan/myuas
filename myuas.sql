-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2017 at 03:21 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myuas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_web`
--

CREATE TABLE `admin_web` (
  `id_admin` int(8) NOT NULL,
  `refid_admin` int(8) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `user_name` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `pass` text COLLATE latin1_general_ci NOT NULL,
  `no_hp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `avatar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `tgl_akhir` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jam` varchar(30) CHARACTER SET hebrew NOT NULL,
  `ip` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin_web`
--

INSERT INTO `admin_web` (`id_admin`, `refid_admin`, `nama`, `user_name`, `pass`, `no_hp`, `email`, `alamat`, `avatar`, `tgl`, `tgl_akhir`, `jam`, `ip`) VALUES
(1, 1, 'Admin', 'admin', '88b3340abaa6acbf87abe45f68fa8960224c1e36f6a96433bcbc490c84c9c6d2', '085669604391', 'swidodocom@yahoo.com', 'Jalan Za.Abidin gg.Harapan Bandar Lampung', 'icon-s.png', '30-09-2014', '02:59 PM - 27-07-2015', '10:03 PM', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(8) NOT NULL,
  `title` varchar(40) NOT NULL,
  `link_agenda` varchar(40) NOT NULL,
  `location` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `title`, `link_agenda`, `location`, `content`, `date`, `time`) VALUES
(2, 'cxbcxbcb', 'cxbcxbcb', 'dsfdsf', '<p>ewrewr</p>\r\n', '10-11-2014', '11:21 AM'),
(3, 'Rapat semesteran', 'rapat-semesteran', 'sdsad', '<p>ewrewr</p>\r\n', '09-10-2014', '03:57 PM'),
(4, 'Agenda Baru', 'agenda-baru', 'jakarata', '<p>sadsd</p>\r\n', '06-10-2014', '12:33 PM'),
(5, 'informasi pendaftaran', 'informasi-pendaftaran', 'bandar lampung', '<p>lampung</p>\r\n', '17-11-2014', '11:47 AM'),
(6, 'sdfds', 'sdfds', 'fsdfsdf', '<p>dsfsdf</p>\r\n', '17-11-2014', '11:47 AM');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id_alumni` int(12) NOT NULL,
  `ref_id_member` varchar(40) NOT NULL,
  `kode_alumni` varchar(50) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` int(20) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `tahun_lulus` varchar(20) NOT NULL,
  `status` text NOT NULL,
  `nama_instansi` varchar(30) NOT NULL,
  `alamat_instansi` text NOT NULL,
  `foto_alumni` varchar(255) NOT NULL,
  `date_submit` varchar(20) NOT NULL,
  `status_publish` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id_article` int(12) NOT NULL,
  `title` varchar(50) NOT NULL,
  `link_article` varchar(60) NOT NULL,
  `categories` varchar(50) NOT NULL,
  `keyword` text NOT NULL,
  `content` text NOT NULL,
  `waktu` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stat` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id_article`, `title`, `link_article`, `categories`, `keyword`, `content`, `waktu`, `stat`) VALUES
(21, 'Testing Markdown', '', 'test', '', '# hello, This is Markdown Live Preview\r\n\r\n----\r\n## what is Markdown?\r\nsee [Wikipedia](http://en.wikipedia.org/wiki/Markdown)\r\n\r\n> Markdown is a lightweight markup language, originally created by John Gruber and Aaron Swartz allowing people \\"to write using an easy-to-read, easy-to-write plain text format, then convert it to structurally valid XHTML (or HTML)\\".\r\n\r\n----\r\n## usage\r\n1. Write markdown text in this textarea.\r\n2. Click \\\'HTML Preview\\\' button.\r\n\r\n----\r\n## markdown quick reference\r\n# headers\r\n\r\n*emphasis*\r\n\r\n**strong**\r\n\r\n* list\r\n\r\n>block quote\r\n\r\n    code (4 spaces indent)\r\n[links](http://wikipedia.org)\r\n\r\n----\r\n## changelog\r\n* 17-Feb-2013 re-design\r\n\r\n----\r\n## thanks\r\n* [markdown-js](https://github.com/evilstreak/markdown-js)', '2017-06-15 21:55:05', 0),
(24, 'Blusukan ke Teluk Hijau Banyuwangi', '', 'blusukan', '', '![enter image description here](https://1.bp.blogspot.com/-GRbO3rfJsjE/WM8MDto81ZI/AAAAAAAAO0A/xIuRLFIoTac-Au0_NSuHYLp58g8YfBtUQCLcB/s1600/1.jpg)\r\n\r\nCerita ini bermula dari rasa penasaran teman saya tentang Pesona **Teluk Biru** di Banyuwangi. Awalnya dia berencana bahwa di awal tahun 2017 ingin mengadakan ekspedisi ke daerah-daerah yang masih belum banyak terekspose, dan hal itu ternyata memang benar, bahwa yang namanya **Teluk Biru** di banyuwangi itu memang benar-benar belum terekspose, kenapa bisa begitu? ya, karena teluk biru itu memang mitos, kami menyebutnya mitos, karena kami memang tidak menemukan keberadaannya di lokasi, bahkan Google map saja tidak mengetahui keberadaannya, jangankan Google, orang pribumi yang berada di deretan pantai Banyuwangi saja juga tidak mengetahui. Jadi Apa-apaan ini, sepertinya teman saya telah dikibulin oleh oknum publisher di internet. \r\n\r\nSialan, tadinya kami mengira bahwa pesona Teluk Biru itu hampir-hampir mirip seperti Raja Ampat, dimana kita bisa snorkeling, mancing, diving, dll. Eh taunya itu semua hanya fiktif belaka. Tapi tak apa, kami tak putus asa, karena masih banyak destinasi alternatif di banyuwangi seperti Teluk Hijau ya, petugas pariwisata di Banyuwangi justru menyarankan kami untuk berkunjung ke Teluk Hijau bahkan mereka sendiri juga heran dari mana kami bisa sok tau tentang **Teluk Biru** padahal adanya hanya Teluk Hijau kata bapak petugas tersebut, sehingga beliau juga sama menyakinkan kami bahwa mungkin yang kami maksud itu adalah Teluk Hijau dan kamipun terpaksa harus percaya, apalah daya, google map juga mengarahkan kami ke lokasi _**Teluk Hijau**_\r\n\r\n\r\n\r\nsumber: santaiarea.com', '2017-06-15 21:52:03', 0),
(25, 'Wisata Pantai Nglambor', '', 'blusukan', '', '![enter image description here](https://c3.staticflickr.com/1/399/20148567450_19ac6e1731_c.jpg)\r\n\r\n### Detail Informasi Lokasi Nglambor:\r\n\r\n- Alamat : Jl. Dewadaru 140, Gunungkidul, Wonosari, Yogyakarta 55812, Indonesia.\r\n- Lokasi : Asia  &gt;  Indonesia  &gt;  Java  &gt;  Yogyakarta  &gt;  Wonosari &gt; Desa Tanjungsari, Kecamatan Tepus, Kabupaten Gunung Kidul.\r\n\r\n### Koordinat:\r\n\r\n- Latitude : 8° 10\\\' 56.412\\" S\r\n- Longitude : 110° 40\\\' 43.224\\" E\r\n- Altitude : 169.50 m\r\n\r\n### Kesan pertama\r\n\r\n> Saat kami melewati akses jalan yang terjal dan tajam adalah \\"WOW - Gilaak\\", dengan penuh kehati-hatian mengatur ritme gas motor, kami mencoba melewati tantangan tersebut, perasaan kami campur aduk dan berharap, semoga saja ban motor bebek kami tidak meletus.. :D\r\n\r\n### Kesan kedua\r\n\r\n> Adalah saat kami tiba di toilet umum pertama, sambil menunggu antrian. Diantara hiruk-pikuk sepanjang jalan terjal, tak lepas dari perhatian kami adalah para Jonki Ojek yang super nekat, dengan motor bebek merk boyband, mereka melesat bagai ATV di sepanjang tajamnya jalan utama, sekali lagi \\"WOW - Gilaak\\", kami pun mengira kalau mur - baut motor mereka sudah tak genap lagi .. :D\r\n\r\n### Kesan ketiga\r\n\r\n> Adalah saat pandangan pertama pada Nglambor, \\"menakjubkan\\", diapit oleh dua perbukitan karang, dan keindahan biota lautnya yang menyimpan banyak pesona. Sampai saat ini, Nglambor masih menjadi satu-satunya pantai di Gunung Kidul yang dapat digunakan untuk snorkeling. Tulisan maupun kata, tak mampu menggambarkan keindahan alamnya, sekali lagi saya hanya bisa bilang \\"WOW - Keren\\".\r\n\r\n### Rincian Pengeluaran Pokok:\r\n\r\n1. Retribusi : Rp.5000,- \r\n2. Parkir : Rp.3000,-\r\n3. Snorkeling : Rp.50.000,-\r\n4. Kencing : Rp.2000,-\r\n5. Mandi : Rp.4000,-\r\n\r\n### Crew:\r\n![enter image description here](https://3.bp.blogspot.com/-w-4N8qJdNNA/VcL6K2CGx0I/AAAAAAAAGKQ/YPKcJhcCMzQ/s1600/crew.png)\r\nSumber: santaiarea.com\r\n', '2017-06-15 22:07:59', 0),
(26, 'Mancing Mania Batam BLOK P ', '', 'blusukan', '', '![enter image description here](https://1.bp.blogspot.com/-jTYcoHxJUI0/Vl2QVUgUEGI/AAAAAAAAHEA/5WeKyc3EI58/s1600/mancing%2Bmania%2Bbatam.jpg )\r\n\r\nKami adalah para bujangan (waktu itu), yang berasal dari berbagai penjuru kota di Indonesia dan dipertemukan di Pulau Perantauan yaitu Batam Island, kami selalu memperlakukan hari libur kerja sebagai hari istimewa, yaitu hari dimana kita bisa manfaatkan untuk melepas penat dan melepas rindu, :D\r\n\r\nTidak setiap hari libur kita dapat selalu bersama, mengingat sistim kerja di perusahaan yang kita naungi adalah 4-3, 4-2, dan 5-2, mirip dengan strategi bola, pengertian dari angka mewakili jumlah hari kerja dan hari libur.\r\n\r\nBatam, masih termasuk dalam kepulauan Riau, pemandangannya sungguh luar biasa, sehingga menarik perhatian kita untuk melakukan casting joran di berbagai spot yang sangat potensial menurut kami, :D\r\n\r\nsumber: santaiarea.com', '2017-06-15 22:16:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `article_categories`
--

CREATE TABLE `article_categories` (
  `id` int(8) NOT NULL,
  `title` varchar(40) NOT NULL,
  `link_categories` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article_categories`
--

INSERT INTO `article_categories` (`id`, `title`, `link_categories`) VALUES
(1, 'kegiatan osis', 'kegiatan-osis'),
(2, 'Prestasi', 'prestasi'),
(3, 'Pendidikan', 'pendidikan'),
(4, 'Upacara', 'upacara');

-- --------------------------------------------------------

--
-- Table structure for table `browser`
--

CREATE TABLE `browser` (
  `name` varchar(100) NOT NULL,
  `hits` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `id_buku` int(12) NOT NULL,
  `nama_buku_tamu` varchar(80) NOT NULL,
  `email_buku_tamu` varchar(80) NOT NULL,
  `pesan_buku_tamu` text NOT NULL,
  `date_buku_tamu` varchar(40) NOT NULL,
  `status` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku_tamu`
--

INSERT INTO `buku_tamu` (`id_buku`, `nama_buku_tamu`, `email_buku_tamu`, `pesan_buku_tamu`, `date_buku_tamu`, `status`) VALUES
(3, 'suprapto', 'widodocoki@yahoo.com', 'pesan dari buku tamu', '3:40: PM / 20-11-2014', 'Publish'),
(4, 'widodo', 'widodocoki@yahoo.com', 'Selamat datang di fitur buku tamu web kami', '2:47: PM / 30-11-2014', 'Publish');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_koment` int(12) NOT NULL,
  `id_article` int(12) NOT NULL,
  `nama_comment` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `email_comment` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url_website_komen` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `comment` text COLLATE latin1_general_ci NOT NULL,
  `date_comment` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(8) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id_koment`, `id_article`, `nama_comment`, `parent_id`, `email_comment`, `url_website_komen`, `comment`, `date_comment`, `status`) VALUES
(1, 5, 'widodo', 0, 'widodocoki@yahoo.com', 'http://s-widodo.com', 'pesan', '11:31:56-16-Nov-2014', 'Y'),
(2, 5, 'balas komentar', 1, 'widodocoki@yahoo.com', 'http://s-widodo.com', 'widodo', '11:45:28-16-Nov-2014', 'Y'),
(3, 4, 'widodo"keren"', 0, 'widodocoki@yahoo.com', 'http://s-widodo.com', 'widodo "keren\'', '12:12:40-16-Nov-2014', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(12) NOT NULL,
  `kode` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `subject` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `mail_message` text COLLATE latin1_general_ci NOT NULL,
  `datetime` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(30) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `kode`, `nama`, `subject`, `email`, `mail_message`, `datetime`, `status`) VALUES
(10, '8HE2dj34b7', 'widodo', 'judul email', 'widodocokI@yahoo.co', 'ejjk', '6:53: PM / 23-11-2014', 'Sudah Dibaca');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(8) NOT NULL,
  `code` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `file_download` varchar(100) NOT NULL,
  `resize` varchar(20) NOT NULL,
  `datetime` varchar(30) NOT NULL,
  `stat` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `code`, `title`, `file_download`, `resize`, `datetime`, `stat`) VALUES
(3, '5', 'widodo', 'menu6894107toucscreen.xlsx', '$16775', '27-11-2014', 4),
(4, '4135', 'file download bla bla bla', 'appicns_ical4135copy.png', '17305', '27-11-2014', 4),
(5, '7829650143', 'cvb fdgvdfv', 'menu7829650143toucscreen.xlsx', '16775', '27-11-2014', 1),
(6, '509186', 'safsaf', 'proposal-penawaran-1-728.jpg', '51934', '27-11-2014', 1),
(7, '916', 'xzvxzv', 'proposal-penawaran-1-728.jpg', '51934', '27-11-2014', 2),
(8, '1649308275', 'fdsf', 'proposal-penawaran-pembuatan-website-baru-1-638.jpg', '34068', '27-11-2014', 1),
(9, '83427', 'ertertrt', 'proposal-penawaran-1-728.jpg', '51934', '27-11-2014', 1),
(10, '83754', 'werwer', 'menu83754toucscreen.xlsx', '16775', '27-11-2014', 0),
(11, '92760', 'werwer', 'jadwal92760to927601192760sma92760ipa.docx', '429888', '27-11-2014', 0);

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE `galery` (
  `id_galery` int(8) NOT NULL,
  `title` varchar(40) NOT NULL,
  `categories` varchar(20) NOT NULL,
  `gambar` varchar(40) NOT NULL,
  `datetime` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galery`
--

INSERT INTO `galery` (`id_galery`, `title`, `categories`, `gambar`, `datetime`) VALUES
(2, 'dfgdfg', 'upacara', 'aff.jpg', '29-10-2014'),
(3, 'sfdsf', 'upacara', 'aff.jpg', '29-10-2014'),
(4, 'sd', 'upacara', 'sdgfdf.jpg', '16-11-2014'),
(6, 'asssssssssssss', 'osis', 'aff.jpg', '07-11-2014');

-- --------------------------------------------------------

--
-- Table structure for table `galery_categories`
--

CREATE TABLE `galery_categories` (
  `id` int(8) NOT NULL,
  `title` varchar(30) NOT NULL,
  `link_categories` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galery_categories`
--

INSERT INTO `galery_categories` (`id`, `title`, `link_categories`) VALUES
(1, 'Upacara', 'upacara'),
(2, 'Kegiatan Osis', 'osis');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(12) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `link_guru` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `agama` varchar(10) NOT NULL,
  `pendidikan_akhir` varchar(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `perangkat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama`, `link_guru`, `gambar`, `nip`, `jenis_kelamin`, `ttl`, `alamat`, `agama`, `pendidikan_akhir`, `jabatan`, `perangkat`) VALUES
(2, 'Widodo', 'widodo', '1489268_842645992454592_8467311695430776307_n.jpg', '-', 'Laki-Laki', 'Bandar Lampung', 'Bandar Lampung', 'Islam', 'S2', 'Guru', 'B3'),
(4, 'widodo', '', 'file.png', 'e93w5787', 'Laki Laki', 'kudus 07-08-1991', 'dsff', 'Islam', 'D3', 'admin', 'B3');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `member_web`
--

CREATE TABLE `member_web` (
  `id_member` int(12) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email_member` varchar(40) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_name_hast` varchar(100) NOT NULL,
  `password_member` varchar(100) NOT NULL,
  `date_login` varchar(40) NOT NULL,
  `date_logout` varchar(40) NOT NULL,
  `ip_member` varchar(20) NOT NULL,
  `browser_member` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `type` int(1) NOT NULL,
  `target` varchar(100) NOT NULL,
  `number` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `type`, `target`, `number`) VALUES
(1, 'Beranda', 'http://localhost/sekolah/', 1, '_self', 1),
(2, 'Jurusan', '#', 2, '_self', 3),
(3, 'Profil', '#', 2, '_self', 2),
(4, 'Bank Data', '#', 2, '_self', 5),
(5, 'Infomasi', '#', 2, '_self', 6),
(6, 'Prestasi', 'http://localhost/sekolah/article/tags/prestasi', 1, '_self', 7),
(7, 'Fasilitas', '#', 2, '_self', 4),
(8, 'Galery', 'http://localhost/sekolah/galery-foto.html', 1, '_self', 8),
(9, 'Download', 'http://localhost/sekolah/download', 1, '_self', 9),
(10, 'Buku Tamu', 'http://localhost/sekolah/buku-tamu', 1, '_self', 10),
(11, 'Kontak', 'http://localhost/sekolah/kontak-kami.html', 1, '_self', 11);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id_pages` int(8) NOT NULL,
  `title` varchar(40) NOT NULL,
  `link_pages` varchar(40) NOT NULL,
  `keyword` text NOT NULL,
  `content` text NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id_pages`, `title`, `link_pages`, `keyword`, `content`, `date`, `time`) VALUES
(2, 'Profil 2', 'profil-2', 'profil-2', '<p><img alt="" src="/images/images/banner-taqwa%20copy.jpg" style="width: 1200px; height: 1200px;" /></p>\r\n\r\n<p>gfjgfj</p>\r\n\r\n<p>&nbsp;</p>\r\n', '29-10-2014', '10:03 PM'),
(3, 'Struktur Organisasi', 'struktur-organisasi', 'Struktur Organisasi', '<p>Isi dengan Struktur Organisasi</p>\r\n', '12-11-2014', '12:14 PM'),
(4, 'Visi Dan Misi', 'visi-dan-misi', 'visi-dan-misi', '<p>Isi dengan content visi dan misi sekolah</p>\r\n', '12-11-2014', '12:13 PM'),
(5, 'Sejarah', 'sejarah', 'sejarah', '<p>Isi dengan content sejarah</p>\r\n', '12-11-2014', '12:16 PM'),
(6, 'Program 1', 'program-1', 'program-1', '<p>Isi dengan content program</p>\r\n', '12-11-2014', '12:12 PM'),
(7, 'Program 1 5', 'Program keahlian', 'program-1-5', '<p>Isi dengan content program</p>\r\n', '12-11-2014', '12:11 PM'),
(8, 'Pendaftaran', 'pendaftaran', 'pendaftaran', '<p>Informasi Pendaftaran</p>\r\n', '14-11-2014', '01:38 PM');

-- --------------------------------------------------------

--
-- Table structure for table `polling`
--

CREATE TABLE `polling` (
  `id_soal` int(2) NOT NULL,
  `soal` text NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polling`
--

INSERT INTO `polling` (`id_soal`, `soal`, `status`) VALUES
(1, 'Apakah informasi di website kami sudah lengkap..?', 'polling_web');

-- --------------------------------------------------------

--
-- Table structure for table `polling_vote`
--

CREATE TABLE `polling_vote` (
  `id_jwb` int(2) NOT NULL,
  `id_soal` int(2) NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `vote` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polling_vote`
--

INSERT INTO `polling_vote` (`id_jwb`, `id_soal`, `jawaban`, `vote`) VALUES
(1, 1, 'Legkap', 14),
(2, 1, 'Cukup Lengkap', 2),
(3, 1, 'Kurang Lengkap', 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting_web`
--

CREATE TABLE `setting_web` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `deskripsi` text NOT NULL,
  `keyword` text NOT NULL,
  `logo` varchar(20) NOT NULL,
  `favicon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_web`
--

INSERT INTO `setting_web` (`id`, `title`, `deskripsi`, `keyword`, `logo`, `favicon`) VALUES
(43545, 'Profile Sekolah', 'des', 'key', 'logo-widodo.png', 'icon-s.png');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(8) NOT NULL,
  `title_slider` varchar(100) NOT NULL,
  `gambar_slider` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `title_slider`, `gambar_slider`, `description`, `date`) VALUES
(1, 'slider 2', 'middle-school-slider-1.jpg', 'Description Lorem ipsum lorem ipsum lorem ipsum Description Lorem ipsum lorem ipsum lorem ipsum Description Lorem ipsum lorem ipsum lorem ipsum Description Lorem ipsum lorem ipsum lorem ipsum Description Lorem ipsum lorem ipsum lorem ipsum Description Lorem ipsum lorem ipsum lorem ipsum Description Lorem ipsum lorem ipsum lorem ipsum', '27-07-2015'),
(2, 'Slider 1', 'gs-schoolconn-slide-004.jpg', 'Description Lorem ipsum lorem ipsum lorem ipsum Description Lorem ipsum lorem ipsum lorem ipsum Description Lorem ipsum lorem ipsum lorem ipsum Description Lorem ipsum lorem ipsum lorem ipsum Description Lorem ipsum lorem ipsum lorem ipsum Description Lorem ipsum lorem ipsum lorem ipsum Description Lorem ipsum lorem ipsum lorem ipsum', '27-07-2015');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `hits` int(100) NOT NULL,
  `date` date NOT NULL,
  `online` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`hits`, `date`, `online`) VALUES
(121, '2014-11-28', 1),
(73, '2014-11-29', 1),
(261, '2014-11-30', 1),
(66, '2014-12-01', 1),
(25, '2015-07-27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `target` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `name`, `link`, `menu`, `target`) VALUES
(7, 'Struktur Organisasi', 'http://localhost/sekolah/pages/struktur-organisasi.html', '3', '_self'),
(11, 'Selayang Pandang', 'http://localhost/sekolah/#', '3', '_self'),
(12, 'Visi Dan Misi', 'http://localhost/sekolah/pages/visi-dan-misi.html', '3', '_self'),
(13, 'Sejarah', 'http://localhost/sekolah/pages/sejarah.html', '3', '_self'),
(14, 'Alumni', 'http://localhost/sekolah/data-alumni', '4', '_self'),
(15, 'Pendaftaran', 'http://localhost/sekolah/pages/infomasi.html', '5', '_self'),
(16, 'Siswa', 'http://localhost/sekolah/siswa', '4', '_self'),
(17, 'Guru', 'http://localhost/sekolah/guru', '4', '_self');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1497537920, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(3, 1, 1),
(4, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE `widget` (
  `id` int(8) NOT NULL,
  `refid` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `icon_widget` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `number` int(8) NOT NULL,
  `number2` int(8) NOT NULL,
  `position` varchar(10) NOT NULL,
  `type` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `widget`
--

INSERT INTO `widget` (`id`, `refid`, `title`, `icon_widget`, `content`, `number`, `number2`, `position`, `type`) VALUES
(1, '3641EC97D052FAB', '', '<i class="icon-beaker"></i>', 'widget_tab.txt', 0, 2, 'right', 1),
(2, '03FG46ED82A1C9B', 'Artikel Terbaru', '<i class="icon-star"></i>', 'widget_article_terbaru.txt', 0, 3, 'right', 1),
(3, 'E46935BD1GC078F', 'Kategori', '<i class="icon-tags"></i>', 'widget_tags.txt', 0, 4, 'right', 1),
(4, 'E940C15AD87B6F3', 'File Download', '<i class="icon-download-alt"></i>', 'widget_download.txt', 0, 5, 'right', 1),
(5, '54EA79CDBG20368', 'Polling', '<i class="icon-ok-circle"></i>', 'widget_polling.txt', 0, 6, 'right', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_web`
--
ALTER TABLE `admin_web`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id_alumni`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`);

--
-- Indexes for table `article_categories`
--
ALTER TABLE `article_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_koment`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id_galery`);

--
-- Indexes for table `galery_categories`
--
ALTER TABLE `galery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_web`
--
ALTER TABLE `member_web`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id_pages`);

--
-- Indexes for table `polling`
--
ALTER TABLE `polling`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `polling_vote`
--
ALTER TABLE `polling_vote`
  ADD PRIMARY KEY (`id_jwb`);

--
-- Indexes for table `setting_web`
--
ALTER TABLE `setting_web`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_web`
--
ALTER TABLE `admin_web`
  MODIFY `id_admin` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id_alumni` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `article_categories`
--
ALTER TABLE `article_categories`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  MODIFY `id_buku` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_koment` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id_galery` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `galery_categories`
--
ALTER TABLE `galery_categories`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member_web`
--
ALTER TABLE `member_web`
  MODIFY `id_member` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id_pages` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `polling`
--
ALTER TABLE `polling`
  MODIFY `id_soal` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `polling_vote`
--
ALTER TABLE `polling_vote`
  MODIFY `id_jwb` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `setting_web`
--
ALTER TABLE `setting_web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43546;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
