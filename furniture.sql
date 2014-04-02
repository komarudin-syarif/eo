-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 27, 2013 at 03:57 
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `furniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'redaksi@bukulokomedia.com', '08238923848', 'admin', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id_banner` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(17, 'Pengiriman', 'http://jne.co.id', 'Pengiriman-FMS.png', '2013-10-25');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(10, 'Katalog 001', 'test.jpg', '2011-01-31', 3);

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE IF NOT EXISTS `header` (
  `id_header` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_header`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(30, 'Header1', '', 'header1.jpg', '2013-10-07'),
(26, 'Header2', '', 'header4.jpg', '2013-10-07'),
(27, 'Header3', '', 'header2.jpg', '2013-10-07'),
(28, 'Header4', '', 'header5.jpg', '2013-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE IF NOT EXISTS `hubungi` (
  `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(34, 'komarudin', 'komarudin.syarif@gmail.com', 'test', 'test123', '2013-10-25');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori_seo`) VALUES
(22, 'Bale - Bale', 'bale--bale'),
(21, 'Ayunan', 'ayunan'),
(20, 'Almari Pakaian', 'almari-pakaian'),
(19, 'Almari Hias', 'almari-hias'),
(23, 'Bufet', 'bufet'),
(24, 'Gazebo', 'gazebo'),
(25, 'Jam Hias', 'jam-hias'),
(26, 'Kursi Tamu Mewah', 'kursi-tamu-mewah'),
(27, 'Kursi Tamu', 'kursi-tamu'),
(28, 'Meja', 'meja'),
(29, 'Meja Makan', 'meja-makan'),
(30, 'Meja Rias', 'meja-rias'),
(31, 'Mimbar Masjid', 'mimbar-masjid'),
(32, 'Cermin', 'cermin'),
(33, 'Sangkar Hewan', 'sangkar-hewan'),
(34, 'Sofa', 'sofa'),
(35, 'Tempat Tidur', 'tempat-tidur'),
(36, 'Handicraft ', 'handicraft-'),
(37, 'Nakas', 'nakas'),
(38, 'Rak Buku', 'rak-buku'),
(39, 'Kursi Teras', 'kursi-teras'),
(40, 'Kayu Meh', 'kayu-meh'),
(41, 'Gebyok Ukir', 'gebyok-ukir'),
(42, 'Meja Bar', 'meja-bar'),
(43, 'Sketsel (penyekat ruangan)', 'sketsel-penyekat-ruangan');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `id_komentar` int(5) NOT NULL AUTO_INCREMENT,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_komentar`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=79 ;

--
-- Dumping data for table `komentar`
--


-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id_kota` int(3) NOT NULL AUTO_INCREMENT,
  `id_perusahaan` int(10) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL,
  PRIMARY KEY (`id_kota`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `id_perusahaan`, `nama_kota`, `ongkos_kirim`) VALUES
(12, 6, 'Solo', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `mainmenu`
--

CREATE TABLE IF NOT EXISTS `mainmenu` (
  `id_main` int(5) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_main`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `mainmenu`
--

INSERT INTO `mainmenu` (`id_main`, `nama_menu`, `link`, `aktif`) VALUES
(10, 'BERANDA', 'index.php', 'Y'),
(11, 'PROFIL ', 'profil-kami.html', 'Y'),
(12, 'PRODUK FURNITURE', 'semua-produk.html', 'Y'),
(13, 'KERANJANG BELANJA', 'keranjang-belanja.html', 'N'),
(14, 'CARA PEMBELIAN', 'cara-pembelian.html', 'Y'),
(15, 'KATALOG DOWNLOAD', 'semua-download.html', 'N'),
(16, 'HUBUNGI KAMI', 'hubungi-kami.html', 'N'),
(18, 'PEMBAYARAN', 'cara-pembayaran.html', 'Y'),
(17, 'PENGIRIMAN', 'pengiriman.html', 'Y'),
(19, 'INFO', 'info.html', 'Y'),
(20, 'WARNA FINISHING', 'warna.html', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=70 ;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `status`, `aktif`, `urutan`) VALUES
(18, 'Tambah Produk', '?module=produk', '', '', 'admin', 'Y', 5),
(42, 'Lihat Order Masuk', '?module=order', '', '', 'admin', 'Y', 8),
(10, 'Manajemen Modul', '?module=modul', '', '', 'admin', 'Y', 19),
(31, 'Tambah Kategori Produk', '?module=kategori', '', '', 'admin', 'Y', 4),
(43, 'Edit Profil', '?module=profil', 'CV RAHMA DEWI FURNITURE\r\n', '12sfhijau.jpg', 'admin', 'Y', 7),
(64, 'Pengiriman', '?module=pengiriman', '', '', 'user', 'Y', 20),
(44, 'Lihat Pesan Masuk', '?module=hubungi', '', '', 'admin', 'Y', 9),
(45, ' Edit Cara Pembelian', '?module=carabeli', '<ol>\r\n	<li>Klik pada tombol&nbsp;<span style="font-weight: bold">Beli</span> pada produk yang ingin Anda pesan.</li>\r\n	<li>Produk yang Anda pesan akan masuk ke dalam <span style="font-weight: bold">Keranjang Belanja</span>. Anda dapat melakukan perubahan jumlah produk yang diinginkan dengan mengganti angka di kolom <span style="font-weight: bold">Jumlah</span>, kemudian klik tombol <span style="font-weight: bold">Update</span>. Sedangkan untuk menghapus sebuah produk dari Keranjang Belanja, klik tombol Kali yang berada di kolom paling kanan.</li>\r\n	<li>Jika sudah selesai, klik tombol <span style="font-weight: bold">Selesai Belanja</span>, maka akan tampil form untuk pengisian data kustomer/pembeli.</li>\r\n	<li>Setelah data pembeli selesai diisikan, klik tombol <span style="font-weight: bold">Proses</span>, maka akan tampil data pembeli beserta produk yang dipesannya (jika diperlukan catat nomor ordernya). Dan juga ada total pembayaran serta nomor rekening pembayaran.</li>\r\n	<li>Apabila telah melakukan pembayaran, maka produk/barang akan segera kami kirimkan. <br />\r\n	</li>\r\n</ol>\r\n', 'gedung.jpg', 'admin', 'Y', 10),
(47, 'Edit Link Terkait', '?module=banner', '', '', 'user', 'Y', 13),
(48, 'Edit Ongkos Kirim', '?module=ongkoskirim', '', '', 'user', 'Y', 11),
(49, 'Ganti Password', '?module=password', '', '', 'user', 'Y', 1),
(53, 'User Yahoo Messenger', '?module=ym', '', '', 'user', 'Y', 15),
(52, 'Lihat Laporan Transaksi', '?module=laporan', '', '', 'user', 'Y', 14),
(56, 'Edit Jasa Pengiriman', '?module=jasapengiriman', '<span class="center_content2"><span class="center_content">\r\n<div class="profil">\r\n<div>\r\n<span class="center_content">\r\n<div>\r\n<p style="text-align: center" class="MsoNormal" align="center">\r\n<strong><font size="4">SELAMAT DATANG DI RAHMA DEWI FURNITURE</font></strong>\r\n</p>\r\n</div>\r\n<div>\r\n&nbsp;\r\n</div>\r\n<div>\r\n<font size="3"><strong style="text-align: center">Hight Quality Furniture Jepara</strong>&nbsp;\r\n</font>\r\n</div>\r\n<div style="font-size: small">\r\n<!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables/>\r\n<w:SnapToGridInCell/>\r\n<w:WrapTextWithPunct/>\r\n<w:UseAsianBreakRules/>\r\n</w:Compatibility>\r\n<w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n</w:WordDocument>\r\n</xml><![endif]-->\r\n<!--\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-parent:"";\r\nmargin:0cm;\r\nmargin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:12.0pt;\r\nfont-family:"Times New Roman";\r\nmso-fareast-font-family:"Times New Roman";}\r\nspan.centercontent\r\n{mso-style-name:center_content;}\r\n@page Section1\r\n{size:612.0pt 792.0pt;\r\nmargin:72.0pt 90.0pt 72.0pt 90.0pt;\r\nmso-header-margin:35.4pt;\r\nmso-footer-margin:35.4pt;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n-->\r\n<!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Table Normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-parent:"";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin:0cm;\r\nmso-para-margin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:10.0pt;\r\nfont-family:"Times New Roman";}\r\n</style>\r\n<![endif]-->\r\n<p class="MsoNormal">\r\n<!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables/>\r\n<w:SnapToGridInCell/>\r\n<w:WrapTextWithPunct/>\r\n<w:UseAsianBreakRules/>\r\n</w:Compatibility>\r\n<w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n</w:WordDocument>\r\n</xml><![endif]-->\r\n<!--\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-parent:"";\r\nmargin:0cm;\r\nmargin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:12.0pt;\r\nfont-family:"Times New Roman";\r\nmso-fareast-font-family:"Times New Roman";}\r\nspan.centercontent\r\n{mso-style-name:center_content;}\r\n@page Section1\r\n{size:612.0pt 792.0pt;\r\nmargin:72.0pt 90.0pt 72.0pt 90.0pt;\r\nmso-header-margin:35.4pt;\r\nmso-footer-margin:35.4pt;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n-->\r\n<!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Table Normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-parent:"";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin:0cm;\r\nmso-para-margin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:10.0pt;\r\nfont-family:"Times New Roman";}\r\n</style>\r\n<![endif]-->\r\n</p>\r\n<p style="text-align: justify" class="MsoNormal">\r\nRAHMA DEWI FURNITURE adalah salah\r\nsatu perusahaan Mebel Furniture di JEPARA yang berproduksi dengan &nbsp;kayu jati dan mahogany, berlokasi di Desa\r\nTahunan, Jepara , Jawa Tengah. Kami&nbsp; \r\n</p>\r\n<p style="text-align: justify" class="MsoNormal">\r\nKami selalu menjaga kepercayaan\r\ndari pelanggan-pelanggan kami, karena kami sadar bahwa mereka adalah asset\r\npaling berharga untuk menjamin perusahaan kami tetap eksis dan berkembang. Dengan\r\nberbagai sumber daya yang kami miliki kami berusaha untuk memberikan yang\r\nterbaik dalam kualitas produk dan pelayanan.\r\n</p>\r\n<p style="text-align: justify" class="MsoNormal">\r\nKami menawarkan KEAMANAN dan\r\nKENYAMANAN berbelanja secara online untuk furniture dengan motif desain dan\r\nukuran yang dapat Anda tentukan sendiri, namun kami memiliki katalog gambar\r\ndesain terkini yang sudah kami tampilkan diwebsite.\r\n</p>\r\n<p style="text-align: justify" class="MsoNormal">\r\nTERIMA KASIH\r\n</p>\r\n</div>\r\n</span>\r\n</div>\r\n</div>\r\n</span></span>\r\n', 'hai.jpg', 'user', 'Y', 12),
(57, 'Edit Rekening Bank', '?module=bank', '', '', 'user', 'Y', 16),
(58, 'Edit Selamat Datang', '?module=welcome', '<strong>mobilestore.com</strong> merupakan website resmi dari Toko HP Lokomedia \r\nyang bermarkas di Jl. Arwana No.24 Minomartani Yogyakarta 55581. \r\nDirintis pertama kali oleh Lukmanul Hakim pada tanggal 14 Maret 2008.<br />\r\n<br />\r\nProduk\r\nunggulan dari Toko HP Lokomedia adalah produk-produk serta aksesoris \r\nbertema Nokia yang merupakan merk produk handphone paling terdepan saat \r\nini.\r\n', 'gedung.jpg', 'user', 'Y', 6),
(59, 'Ganti Header', '?module=header', '', '', 'user', 'Y', 18),
(61, 'Edit Menu Utama', '?module=menuutama', '', '', 'user', 'Y', 2),
(62, 'Edit Sub Menu', '?module=submenu', '', '', 'user', 'Y', 3),
(63, 'Edit Download Katalog', '?module=download', '', '', 'user', 'N', 17),
(67, 'Edit Pengiriman', '?module=kirim', 'Pengiriman\r\n', '', 'admin', 'Y', 52),
(66, 'Edit Cara Bayar', '?module=carabayar', 'cara bayar...\r\n', '', 'admin', 'Y', 51),
(68, 'Edit Info', '?module=info', 'Informasi..\r\n', '', 'admin', 'Y', 53),
(69, 'Edit Warna Finishing', '?module=warna', 'Warna...\r\n', '', 'admin', 'Y', 54);

-- --------------------------------------------------------

--
-- Table structure for table `mod_bank`
--

CREATE TABLE IF NOT EXISTS `mod_bank` (
  `id_bank` int(5) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(100) NOT NULL,
  `no_rekening` varchar(100) NOT NULL,
  `pemilik` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_bank`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mod_bank`
--

INSERT INTO `mod_bank` (`id_bank`, `nama_bank`, `no_rekening`, `pemilik`, `gambar`) VALUES
(3, 'BNI', '0173 1537 10', 'Akhmad Luqman Wibowo', 'bni.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE IF NOT EXISTS `mod_ym` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mod_ym`
--

INSERT INTO `mod_ym` (`id`, `nama`, `username`) VALUES
(1, 'Luqman Wibowo', 'luqman');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id_orders` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kustomer` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kota` int(3) NOT NULL,
  PRIMARY KEY (`id_orders`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=74 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `nama_kustomer`, `alamat`, `telpon`, `email`, `status_order`, `tgl_order`, `jam_order`, `id_kota`) VALUES
(73, 'komarudin', 'Solo', '12345', 'komarudin.syarif@gmail.com', 'Lunas/Terkirim', '2013-10-25', '20:56:29', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(2, 16, 1),
(3, 17, 1),
(0, 56, 1),
(73, 58, 1),
(0, 60, 1),
(0, 50, 1),
(0, 51, 1),
(0, 55, 1),
(0, 61, 1),
(0, 58, 1),
(0, 60, 1),
(0, 56, 1),
(4, 44, 1),
(5, 53, 1),
(0, 58, 1),
(0, 47, 1),
(0, 58, 1),
(0, 61, 1),
(0, 58, 1),
(6, 61, 1),
(7, 58, 1),
(8, 43, 1),
(9, 58, 1),
(11, 43, 1),
(12, 44, 1),
(13, 43, 1),
(13, 58, 1),
(16, 58, 1),
(17, 50, 1),
(18, 45, 1),
(19, 41, 1),
(20, 59, 1),
(31, 58, 1),
(31, 42, 2),
(35, 59, 1),
(35, 54, 1),
(35, 61, 2),
(0, 54, 1),
(0, 59, 1),
(38, 54, 1),
(39, 59, 1),
(40, 61, 1),
(41, 54, 1),
(42, 54, 1),
(42, 55, 1),
(43, 61, 1),
(43, 58, 1),
(45, 145, 1),
(46, 93, 1),
(50, 92, 1),
(52, 94, 1),
(53, 104, 1),
(68, 145, 2),
(71, 104, 1),
(72, 92, 1),
(73, 141, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
--

CREATE TABLE IF NOT EXISTS `orders_temp` (
  `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL,
  PRIMARY KEY (`id_orders_temp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=246 ;

--
-- Dumping data for table `orders_temp`
--


-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE IF NOT EXISTS `poling` (
  `id_poling` int(5) NOT NULL AUTO_INCREMENT,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_poling`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `rating`, `aktif`) VALUES
(1, 'Bagus', 'Jawaban', 27, 'Y'),
(2, 'Lumayan', 'Jawaban', 80, 'Y'),
(3, 'Tidak', 'Jawaban', 21, 'Y'),
(8, 'Bagaimana tampilan web ini?', 'Pertanyaan', 0, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `produk_seo` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  `diskon` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=149 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `produk_seo`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`, `diskon`) VALUES
(139, 35, '(TT-01) Tempat Tidur Minimalis melati', 'tt01-tempat-tidur-minimalis-melati', '', 2800000, 1, 0.00, '2013-10-10', '91Dipanminimalis 28.jpg', 1, 0),
(140, 35, '(TT-02) Tempat Tidur Davinci Tambang', 'tt02-tempat-tidur-davinci-tambang', '', 2900000, 1, 0.00, '2013-10-10', '223053767_davincitambang-28.jpg', 1, 0),
(141, 37, '(NK-01) Nakas Minimalis', 'nk01-nakas-minimalis', '', 1200000, 0, 0.00, '2013-10-10', '49BFTM-78.JPG', 2, 0),
(142, 38, '(RB-01) Rak Buku Parabola', 'rb01-rak-buku-parabola', '', 3600000, 1, 0.00, '2013-10-10', '21parabola.jpg', 1, 0),
(143, 36, '(HC-01) Tempat Tisu Ukir', 'hc01-tempat-tisu-ukir', '', 55000, 1, 0.00, '2013-10-13', '945rbb.jpg', 1, 0),
(144, 36, '(HC-02) Toples Sarang Tawon', 'hc02-toples-sarang-tawon', '', 55000, 1, 0.00, '2013-10-13', '1355rbperpcs.jpg', 1, 0),
(145, 36, '(HC-03) Toples Belimbing', 'hc03-toples-belimbing', '', 55000, 1, 0.00, '2013-10-13', '6555rbperpcss.jpg', 1, 0),
(146, 36, '(HC-04) Tempat Tisu Batik', 'hc04-tempat-tisu-batik', '', 70000, 1, 0.00, '2013-10-13', '1847183_495268017165201_1253463027_n.jpg', 1, 0),
(147, 36, '(HC-05) Tempat Aqua Motif Apel', 'hc05-tempat-aqua-motif-apel', '', 70000, 1, 0.00, '2013-10-13', '82247860_495260080499328_139582124_n.jpg', 1, 0),
(148, 36, '(HC-06) Tempat Payung Serba Guna', 'hc06-tempat-payung-serba-guna', '', 150000, 1, 0.00, '2013-10-13', '67426303_495267753831894_1029027661_n.jpg', 1, 0),
(131, 31, '(MI-01) Mimbar Masjid 01', 'mi01-mimbar-masjid-01', '', 6400000, 1, 0.00, '2013-10-10', '1mimbar masjid 6jt (145x95x135).jpg', 1, 0),
(132, 32, '(CE-01) Cermin Mawar Gold ', 'ce01-cermin-mawar-gold-', '', 1700000, 1, 0.00, '2013-10-10', '61994779_600571059976561_2014467232_n.jpg', 1, 0),
(133, 33, '(SH-01) Sangkar Burung Ukir', 'sh01-sangkar-burung-ukir', '', 470000, 1, 0.00, '2013-10-10', '2175811_415367531915943_1632487064_n.jpg', 1, 0),
(134, 33, '(SH-02) Tempat Aquarium Motif Kuil', 'sh02-tempat-aquarium-motif-kuil', '', 2800000, 1, 0.00, '2013-10-10', '40303770_104273216351403_806708833_n.jpg', 1, 0),
(135, 33, '(SH-03) Sangkar Ayam hias', 'sh03-sangkar-ayam-hias', '', 2700000, 1, 0.00, '2013-10-10', '69kandang ayam 2,5.jpg', 1, 0),
(136, 34, '(SF-01) Sofa Mawar Tampar', 'sf01-sofa-mawar-tampar', '', 2800000, 1, 0.00, '2013-10-10', '63053871_mawartampar.jpg', 1, 0),
(137, 34, '(SF-02) Sofa Madura', 'sf02-sofa-madura', '', 3200000, 1, 0.00, '2013-10-10', '583053852_madura.jpg', 1, 0),
(138, 43, '(SK-01) Sketsel Motif kaligrafi', 'sk01-sketsel-motif-kaligrafi', '', 4000000, 1, 0.00, '2013-10-10', '43688_408995075829479_1809680678_n.jpg', 1, 0),
(114, 27, '(KT-02) Kursi Tamu Arimbi', 'kt02-kursi-tamu-arimbi', '', 3500000, 1, 0.00, '2013-10-09', '79arimbi.jpg', 1, 0),
(115, 27, '(KT-03) Kursi Tamu Minimalis Jari-jari', 'kt03-kursi-tamu-minimalis-jarijari', '', 3300000, 1, 0.00, '2013-10-09', '68387976_571868742846793_1056275755_n.jpg', 1, 0),
(116, 27, '(KT-04) Kursi Tamu Betawi', 'kt04-kursi-tamu-betawi', '', 2600000, 1, 0.00, '2013-10-09', '19betawi.jpg', 1, 0),
(117, 26, '(KW-01) Kursi Tamu Mewah ', 'kw01-kursi-tamu-mewah-', '', 900000, 1, 0.00, '2013-10-09', '646,5jt,bungkus,kaca,nov2012.jpg', 1, 0),
(118, 26, '(KW-02) Kursi Tamu Mewah Ukir kerang gold', 'kw02-kursi-tamu-mewah-ukir-kerang-gold', '', 1200000, 1, 0.00, '2013-10-09', '58ukir kerang 12jt.jpg', 1, 0),
(119, 39, '(KR-01) Kursi Teras Anggur', 'kr01-kursi-teras-anggur', '', 1200000, 1, 0.00, '2013-10-09', '48anggurrr.jpg', 1, 0),
(120, 39, '(KR-02) Kursi Teras Daun ', 'kr02-kursi-teras-daun-', '', 1200000, 1, 0.00, '2013-10-09', '43daun.jpg', 1, 0),
(121, 39, '(KR-03) Kursi Teras Keranjang', 'kr03-kursi-teras-keranjang', '', 1400000, 1, 0.00, '2013-10-09', '79keranjang.jpg', 1, 0),
(122, 39, '(KR-04) Kursi Teras Mini', 'kr04-kursi-teras-mini', '', 1300000, 1, 0.00, '2013-10-09', '36minimalis.jpg', 1, 0),
(123, 28, '(MJ-01) Meja Oshin Oval', 'mj01-meja-oshin-oval', '', 1700000, 1, 0.00, '2013-10-10', '89meja oshin.jpg', 1, 0),
(124, 28, '(MJ-02) Meja teh dorong', 'mj02-meja-teh-dorong', '', 1800000, 1, 0.00, '2013-10-10', '74meja dorong.jpg', 1, 0),
(125, 42, '(MB-01) Meja Bar Motif UKir', 'mb01-meja-bar-motif-ukir', '', 2700000, 1, 0.00, '2013-10-10', '60BTC-01.jpg', 1, 0),
(126, 29, '(MM-01) Meja Makan Minimalis Alim', 'mm01-meja-makan-minimalis-alim', '', 8000000, 1, 0.00, '2013-10-10', '61alim1285-300x225.jpg', 1, 0),
(127, 29, '(MM-02) Meja Makan Minimalis Daun', 'mm02-meja-makan-minimalis-daun', '', 3500000, 1, 0.00, '2013-10-10', '563.5.jpg', 1, 0),
(128, 29, '(MM-03) Meja Makan Kursi Raja', 'mm03-meja-makan-kursi-raja', '', 8500000, 1, 0.00, '2013-10-10', '363390020_k.raja.jpg', 1, 0),
(129, 30, '(MR-01) Meja Rias Kartini', 'mr01-meja-rias-kartini', '', 1900000, 1, 0.00, '2013-10-10', '45kartiini 1.9.jpg', 1, 0),
(130, 30, '(MR-02) Meja Rias Motif Tambang', 'mr02-meja-rias-motif-tambang', '', 3000000, 1, 0.00, '2013-10-10', '15tambang 3.jpg', 1, 0),
(92, 19, '(AL-01) Almari Hias Piala', 'al01-almari-hias-piala', '', 6300000, 1, 0.00, '2013-10-09', '14almarihiastvpiala,6.3jt,(240x50x200).jpg', 1, 0),
(93, 19, '(AL-02) Almari Hias Manohara', 'al02-almari-hias-manohara', '', 9200000, 1, 0.00, '2013-10-09', '79almarihiasmanohara,9.2jt,(210x50x220).jpg', 1, 0),
(94, 19, '(AL-03) Almari Davinci 2pintu', 'al03-almari-davinci-2pintu', '', 3600000, 1, 0.00, '2013-10-09', '98almarihiasdavinci,2pintu,3,6jt,(100x45x210).jpg', 1, 0),
(95, 19, '(AL-04) Almari Hias Sudut Tambang', 'al04-almari-hias-sudut-tambang', '', 2900000, 1, 0.00, '2013-10-09', '45almarisuduttambangfullkaca,2.9jt,(90x50x200).jpg', 1, 0),
(96, 20, '(AP-01) Almari Pakaian Motif gebyok 4pintu', 'ap01-almari-pakaian-motif-gebyok-4pintu', '', 11000000, 1, 0.00, '2013-10-09', '37almarimotifgebyok,4pintu,11jt(240x60x220).jpg', 1, 0),
(97, 20, '(AP-02) Almari Pakaian Mutiara 3pintu', 'ap02-almari-pakaian-mutiara-3pintu', '', 4800000, 1, 0.00, '2013-10-09', '25almaritiara,3pintu,4.8jt(165x50x215).jpg', 1, 0),
(98, 20, '(AP-03) Almari Pakaian Peluru Sliding 2pintu', 'ap03-almari-pakaian-peluru-sliding-2pintu', '', 3800000, 1, 0.00, '2013-10-09', '94almarisliding,2pintu,3.8jt(110x50x210).jpg', 1, 0),
(99, 21, '(AY-01) Ayunan KayuJati', 'ay01-ayunan-kayujati', '', 2700000, 1, 0.00, '2013-10-09', '97ayunankayujati,2,5jt.jpg', 1, 0),
(100, 21, '(AY-02) Ayunan Malboro', 'ay02-ayunan-malboro', '', 2800000, 1, 0.00, '2013-10-09', '42ayunanmalboro,2.6jt.jpg', 1, 0),
(101, 22, '(BB-01) Bale-bale Madura', 'bb01-balebale-madura', '', 2300000, 1, 0.00, '2013-10-09', '10balebalemadurakrawang,2.3jt.jpg', 1, 0),
(102, 22, '(BB-02) Bale-Bale Melati', 'bb02-balebale-melati', '', 2800000, 1, 0.00, '2013-10-09', '75balebaleminimalismelati.2.8jt.jpg', 1, 0),
(103, 22, '(BB-03) Bale-Bale Krawang', 'bb03-balebale-krawang', '', 2300000, 1, 0.00, '2013-10-09', '39balebalekarawang,2.3jt.jpg', 1, 0),
(104, 23, '(BF-01) Bufet Anyaman Pita', 'bf01-bufet-anyaman-pita', '', 1800000, 1, 0.00, '2013-10-09', '491,6jtbungkus.jpg', 1, 0),
(105, 23, '(BF-02) Bufet Tambang Pintu 4', 'bf02-bufet-tambang-pintu-4', '', 2000000, 1, 0.00, '2013-10-09', '243044044_04.jpg', 1, 0),
(106, 23, '(BF-03) Bufet Minimalis Polasegitiga', 'bf03-bufet-minimalis-polasegitiga', '', 2000000, 1, 0.00, '2013-10-09', '61Bufet Minimalis polaSegitiga 2jt.jpg', 1, 0),
(107, 24, '(GZ-01) Gazebo Kayu Jati mayong', 'gz01-gazebo-kayu-jati-mayong', '', 25000000, 1, 0.00, '2013-10-09', '59Gazebo kayu jati n ukir 25jt 2x2m.jpg', 1, 0),
(108, 24, '(GZ-02) Gazebo Kayu Kelapa Kampling', 'gz02-gazebo-kayu-kelapa-kampling', '', 16000000, 1, 0.00, '2013-10-09', '49Gazebo kayu kelapa 16jt 2x2m (2).jpg', 1, 0),
(109, 41, '(GB-01) Gebyok Pintu Satu rangkap', 'gb01-gebyok-pintu-satu-rangkap', '', 20000000, 1, 0.00, '2013-10-09', '50Gebyok Pintu 20jt.jpg', 1, 0),
(110, 41, '(GB-02) Gebyok Pintu jati 2 rangkap', 'gb02-gebyok-pintu-jati-2-rangkap', '', 25000000, 1, 0.00, '2013-10-09', '91Gebyok Pintu dpn 25jt.jpg', 1, 0),
(111, 25, '(JH-01) Jam Hias Mawar', 'jh01-jam-hias-mawar', '', 2900000, 1, 0.00, '2013-10-09', '13,45.jpg', 1, 0),
(112, 25, '(JH-02) Jam Hias Spanyol', 'jh02-jam-hias-spanyol', '', 2500000, 1, 0.00, '2013-10-09', '363043773_aljamspanyol.jpg', 1, 0),
(113, 27, '(KT-01) Kursi Tamu Sudut Mawar Bakar', 'kt01-kursi-tamu-sudut-mawar-bakar', '', 3500000, 1, 0.00, '2013-10-09', '83969060_596128613754139_1120619554_n.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE IF NOT EXISTS `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL AUTO_INCREMENT,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_sekilas`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`) VALUES
(1, 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2010-04-11', 'news5.jpg'),
(2, 'WHO merilis, 30 persen anak-anak di dunia kecanduan menonton televisi dan bermain komputer.', '2010-04-11', 'news4.jpg'),
(3, 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lebih lama.', '2010-04-11', 'news3.jpg'),
(4, 'Menurut United Stated Trade Representatives, 25% obat yang beredar di Indonesia adalah palsu.', '2010-04-11', 'news2.jpg'),
(5, 'Presiden AS Barack Obama memesan Nasi Goreng di restoran Bali langsung dari Amerika', '2010-04-11', 'news1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shop_pengiriman`
--

CREATE TABLE IF NOT EXISTS `shop_pengiriman` (
  `id_perusahaan` int(10) NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_perusahaan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `shop_pengiriman`
--

INSERT INTO `shop_pengiriman` (`id_perusahaan`, `nama_perusahaan`, `gambar`) VALUES
(6, 'JNE', ''),
(5, 'TIKI', ''),
(7, 'POS EKSPRESS', ''),
(8, 'AJI JAYA CARGO (SUMATERA)', ''),
(9, 'JEPARA INDAH CARGO (JAKARTA)', ''),
(10, 'DEWATA EXPRES (BALI)', ''),
(11, 'PRIMA EXPRES (SURABAYA)', ''),
(12, 'ATOX TRANS (BANDUNG)', ''),
(13, 'ABDK (SEMARANG)', '');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE IF NOT EXISTS `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('127.0.0.1', '2011-01-23', 406, '1295797934'),
('127.0.0.1', '2011-01-22', 199, '1295712739'),
('127.0.0.1', '2011-01-20', 18, '1295484485'),
('127.0.0.1', '2011-01-19', 10, '1295452438'),
('127.0.0.1', '2011-01-25', 2, '1295961873'),
('127.0.0.1', '2011-01-26', 4, '1296050267'),
('127.0.0.1', '2011-01-27', 7, '1296110326'),
('127.0.0.1', '2011-01-28', 7, '1296233314'),
('127.0.0.1', '2011-01-29', 574, '1296320383'),
('127.0.0.1', '2011-01-30', 290, '1296393287'),
('127.0.0.1', '2011-01-31', 133, '1296493024'),
('127.0.0.1', '2011-02-01', 79, '1296521132'),
('110.138.43.143', '2011-02-01', 31, '1296540211'),
('66.249.71.118', '2011-02-01', 1, '1296528448'),
('67.195.115.24', '2011-02-01', 6, '1296538036'),
('125.161.211.231', '2011-02-01', 1, '1296529398'),
('222.124.98.187', '2011-02-01', 3, '1296531520'),
('66.249.71.77', '2011-02-01', 1, '1296532249'),
('66.249.71.20', '2011-02-01', 1, '1296534199'),
('117.20.62.233', '2011-02-01', 13, '1296537677'),
('110.137.200.121', '2011-02-01', 24, '1296540049'),
('127.0.0.1', '2011-02-16', 179, '1297875502'),
('127.0.0.1', '2011-02-17', 301, '1297961988'),
('127.0.0.1', '2011-02-18', 54, '1297990124'),
('127.0.0.1', '2011-02-22', 118, '1298393910'),
('127.0.0.1', '2011-02-23', 77, '1298479971'),
('127.0.0.1', '2011-02-24', 1, '1298510525'),
('127.0.0.1', '2011-03-13', 225, '1300027455'),
('127.0.0.1', '2011-03-14', 44, '1300115678'),
('127.0.0.1', '2011-03-15', 121, '1300195187'),
('127.0.0.1', '2011-03-16', 116, '1300292361'),
('127.0.0.1', '2011-03-17', 4, '1300331607'),
('127.0.0.1', '2011-03-18', 52, '1300422211'),
('127.0.0.1', '2011-03-27', 75, '1301234016'),
('127.0.0.1', '2011-03-28', 16, '1301307056'),
('127.0.0.1', '2011-03-29', 77, '1301409884'),
('127.0.0.1', '2013-09-15', 1, '1379226633'),
('127.0.0.1', '2013-09-17', 6, '1379424822'),
('127.0.0.1', '2013-09-20', 1, '1379682945'),
('127.0.0.1', '2013-09-27', 111, '1380298495'),
('36.81.169.75', '2013-09-28', 6, '1380333141'),
('202.67.41.6', '2013-09-28', 9, '1380343302'),
('202.67.41.7', '2013-09-28', 1, '1380357503'),
('141.0.8.161', '2013-09-28', 1, '1380372489'),
('141.0.11.174', '2013-09-28', 1, '1380372663'),
('141.0.8.120', '2013-09-28', 1, '1380372829'),
('141.0.11.150', '2013-09-28', 1, '1380373048'),
('141.0.10.35', '2013-09-28', 1, '1380377468'),
('202.67.41.5', '2013-09-28', 3, '1380382149'),
('223.255.225.1', '2013-09-28', 2, '1380383531'),
('202.67.41.7', '2013-09-29', 1, '1380427568'),
('36.81.124.94', '2013-09-30', 3, '1380506994'),
('202.67.40.6', '2013-09-30', 5, '1380526179'),
('202.67.41.15', '2013-09-30', 2, '1380548332'),
('202.67.41.1', '2013-10-01', 1, '1380598238'),
('202.67.40.3', '2013-10-01', 1, '1380631939'),
('202.67.40.5', '2013-10-01', 6, '1380636254'),
('202.67.40.13', '2013-10-02', 1, '1380695683'),
('202.67.40.9', '2013-10-02', 1, '1380711841'),
('202.67.40.7', '2013-10-03', 1, '1380770143'),
('202.67.40.6', '2013-10-03', 1, '1380779753'),
('141.0.10.208', '2013-10-03', 1, '1380787264'),
('204.236.226.210', '2013-10-03', 2, '1380788627'),
('36.81.144.196', '2013-10-03', 5, '1380808053'),
('202.67.40.2', '2013-10-04', 1, '1380855141'),
('36.81.126.195', '2013-10-04', 4, '1380871050'),
('202.67.40.14', '2013-10-04', 1, '1380873683'),
('204.236.226.210', '2013-10-04', 1, '1380878205'),
('202.67.40.12', '2013-10-04', 2, '1380886155'),
('141.0.9.244', '2013-10-05', 3, '1380975492'),
('202.67.41.14', '2013-10-05', 7, '1380983353'),
('202.67.40.11', '2013-10-07', 27, '1381160290'),
('36.81.126.195', '2013-10-07', 3, '1381115716'),
('202.67.40.15', '2013-10-07', 6, '1381162182'),
('202.67.40.1', '2013-10-07', 3, '1381156129'),
('202.67.41.2', '2013-10-07', 5, '1381161857'),
('141.0.8.218', '2013-10-08', 1, '1381189931'),
('141.0.9.145', '2013-10-08', 1, '1381190062'),
('202.67.41.12', '2013-10-08', 1, '1381195910'),
('202.67.40.6', '2013-10-08', 7, '1381198908'),
('202.67.40.5', '2013-10-08', 1, '1381204958'),
('202.67.40.3', '2013-10-08', 1, '1381213518'),
('36.81.126.195', '2013-10-08', 9, '1381221808'),
('202.67.41.11', '2013-10-09', 1, '1381281568'),
('36.81.126.195', '2013-10-09', 11, '1381287851'),
('111.68.26.19', '2013-10-09', 1, '1381285412'),
('202.67.40.13', '2013-10-09', 7, '1381291736'),
('202.67.40.10', '2013-10-09', 3, '1381292449'),
('202.67.40.6', '2013-10-09', 3, '1381294789'),
('202.67.40.7', '2013-10-09', 2, '1381295096'),
('141.0.10.233', '2013-10-09', 1, '1381295201'),
('202.67.40.12', '2013-10-09', 4, '1381297455'),
('141.0.9.146', '2013-10-09', 1, '1381300772'),
('202.67.40.11', '2013-10-09', 3, '1381302302'),
('141.0.9.128', '2013-10-09', 1, '1381305233'),
('141.0.8.91', '2013-10-10', 1, '1381361110'),
('202.67.40.14', '2013-10-10', 1, '1381368771'),
('202.67.40.8', '2013-10-10', 6, '1381370835'),
('202.67.40.3', '2013-10-10', 5, '1381384947'),
('141.0.8.251', '2013-10-10', 1, '1381384974'),
('202.67.40.5', '2013-10-10', 11, '1381403022'),
('202.67.40.2', '2013-10-10', 23, '1381389392'),
('204.236.226.210', '2013-10-10', 1, '1381389398'),
('36.81.126.195', '2013-10-10', 2, '1381390332'),
('202.67.40.4', '2013-10-11', 8, '1381453308'),
('202.67.40.12', '2013-10-11', 1, '1381477173'),
('202.67.40.15', '2013-10-11', 1, '1381489437'),
('202.67.40.4', '2013-10-12', 7, '1381560839'),
('141.0.8.70', '2013-10-12', 1, '1381566828'),
('204.236.226.210', '2013-10-12', 1, '1381580568'),
('202.67.40.9', '2013-10-13', 11, '1381622295'),
('202.67.40.4', '2013-10-13', 2, '1381629824'),
('114.79.18.149', '2013-10-13', 1, '1381653296'),
('141.0.11.148', '2013-10-13', 1, '1381664201'),
('202.67.40.1', '2013-10-13', 1, '1381673989'),
('202.67.40.10', '2013-10-14', 8, '1381704154'),
('141.0.8.70', '2013-10-15', 1, '1381845652'),
('141.0.11.44', '2013-10-16', 1, '1381882282'),
('141.0.9.103', '2013-10-16', 1, '1381882405'),
('141.0.10.114', '2013-10-16', 1, '1381885676'),
('202.67.40.4', '2013-10-16', 7, '1381920051'),
('202.67.40.13', '2013-10-16', 17, '1381931162'),
('202.67.40.12', '2013-10-17', 7, '1381972995'),
('173.252.112.119', '2013-10-17', 1, '1381972865'),
('180.246.114.152', '2013-10-17', 2, '1381973514'),
('202.67.40.2', '2013-10-18', 2, '1382061688'),
('202.67.40.3', '2013-10-19', 5, '1382151813'),
('141.0.15.17', '2013-10-19', 1, '1382175144'),
('141.0.9.143', '2013-10-19', 1, '1382175318'),
('204.236.226.210', '2013-10-20', 1, '1382269972'),
('36.81.126.180', '2013-10-21', 1, '1382319499'),
('127.0.0.1', '2013-10-21', 33, '1382371229'),
('127.0.0.1', '2013-10-22', 80, '1382451935'),
('127.0.0.1', '2013-10-23', 3, '1382534236'),
('127.0.0.1', '2013-10-25', 116, '1382711191'),
('127.0.0.1', '2013-10-27', 10, '1382842561');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `id_sub` int(5) NOT NULL AUTO_INCREMENT,
  `nama_sub` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link_sub` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_main` int(5) NOT NULL,
  PRIMARY KEY (`id_sub`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id_sub`, `nama_sub`, `link_sub`, `id_main`) VALUES
(31, 'Minimalis Furniture', '', 12),
(30, 'Handicraft Furniture', '', 12),
(29, 'Classic Furniture', '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password1` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktivasi` int(6) NOT NULL DEFAULT '0',
  `cek_aktivasi` int(6) NOT NULL DEFAULT '0',
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

