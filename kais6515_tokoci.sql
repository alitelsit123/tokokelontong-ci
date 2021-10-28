-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 28, 2021 at 04:16 PM
-- Server version: 10.2.39-MariaDB-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kais6515_tokoci`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`id_user`, `nama`, `email`, `password`, `level`) VALUES
(1, 'Rahma', 'purwantiibuku@gmail.com', '$2y$10$LmFWCdzCXFrzzz5WJeKFMOatmrEBiEU9QoIpv/h4T9xNWKfi7l37.', 'Owner'),
(2, 'Admin Toko', 'admin@admin.com', '$2y$10$LmFWCdzCXFrzzz5WJeKFMOatmrEBiEU9QoIpv/h4T9xNWKfi7l37.', 'Admin'),
(3, 'Owner Toko', 'owner@owner.com', '$2y$10$LmFWCdzCXFrzzz5WJeKFMOatmrEBiEU9QoIpv/h4T9xNWKfi7l37.', 'Owner'),
(56, 'Demo Member', 'mochfattah7@gmail.com', '$2y$10$LmFWCdzCXFrzzz5WJeKFMOatmrEBiEU9QoIpv/h4T9xNWKfi7l37.', 'Member'),
(57, 'Muhammad Alief', 'muhammadalief57@gmail.com', '$2y$10$OKT13y8m4beN6IVlMwOYGuGo.nCsXdleaIffpdViN6su6h.c2Kc7e', 'Member'),
(58, 'JesseCic JesseCic', 'i.o.o.xv.ertri.s@gmail.com', '$2y$10$35YPrQd7pHyOyvz4E9.Dx.i/K7SpltKbeUZxfejJKv.hXY/2iqfaK', 'Member');

--
-- Triggers `data_user`
--
DELIMITER $$
CREATE TRIGGER `after_insert_data_user` AFTER INSERT ON `data_user` FOR EACH ROW BEGIN
    INSERT INTO detail_user
    SET id_user = NEW.id_user;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_delete_data_user` BEFORE DELETE ON `data_user` FOR EACH ROW BEGIN
	DELETE FROM detail_user WHERE id_user = OLD.id_user;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `detail_produk`
--

CREATE TABLE `detail_produk` (
  `id_detail` int(10) NOT NULL,
  `stok` int(20) DEFAULT 0,
  `diskon` int(10) DEFAULT 0,
  `ukuran` varchar(100) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `aktif` int(1) NOT NULL DEFAULT 0,
  `id_produk` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_produk`
--

INSERT INTO `detail_produk` (`id_detail`, `stok`, `diskon`, `ukuran`, `berat`, `aktif`, `id_produk`) VALUES
(27, 9, 10, 'all size, ', 250, 0, 42),
(28, 100, 0, 'all size, ', 250, 0, 43),
(29, 100, 0, 'all size, ', 250, 0, 44),
(30, 99, 5, 'XS, S, M, L, ', 250, 0, 45),
(31, 100, 0, 'M, L, XL, ', 250, 0, 46),
(32, 99, 0, 'S, M, L, ', 250, 0, 47),
(33, 91, 0, 'all size, ', 250, 0, 48),
(34, 99, 0, 'S, M, L, ', 250, 0, 49),
(35, 98, 20, 'M, L, ', 250, 0, 50),
(36, 100, 10, 'all size, ', 500, 0, 51),
(37, 98, 0, 'Coklat, ', 50, 0, 52),
(38, 80, 0, '', 1, 0, 53),
(39, 80, 0, 'Besar, ', 30, 0, 54),
(40, 100, 20, 'Mix, ', 120, 0, 55),
(41, 100, 10, 'Coklat, ', 500, 1, 56),
(42, 100, 0, 'Coklat Keju, ', 500, 1, 57),
(43, 100, 0, 'Strawberry, ', 500, 1, 58),
(44, 100, 0, 'Blueberry, ', 500, 1, 59),
(45, 100, 0, 'Durian, ', 500, 1, 60),
(46, 99, 0, 'Kombinasi, ', 500, 1, 61),
(47, 98, 0, 'Ayam, ', 500, 1, 62),
(48, 99, 0, 'Srikaya, ', 500, 1, 63),
(49, 100, 0, 'Ayam Mozarella, ', 500, 0, 64),
(50, 100, 0, 'Original mini, ', 500, 0, 65),
(51, 92, 0, 'Original mini, ', 1000, 1, 66),
(52, 100, 10, 'Mix, ', 500, 1, 67);

-- --------------------------------------------------------

--
-- Table structure for table `detail_user`
--

CREATE TABLE `detail_user` (
  `id_detail` int(11) NOT NULL,
  `foto` varchar(50) DEFAULT 'default.png',
  `is_active` int(1) DEFAULT 1,
  `create_date` int(11) DEFAULT NULL,
  `delete_at` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_user`
--

INSERT INTO `detail_user` (`id_detail`, `foto`, `is_active`, `create_date`, `delete_at`, `id_user`) VALUES
(1, 'owner.jpg', 1, 1566678130, NULL, 1),
(2, 'default.png', 1, 1566678360, NULL, 2),
(3, 'owner.jpg', 1, 1566678260, NULL, 3),
(58, 'default.png', 1, 1587938386, NULL, 56),
(59, 'default.png', 1, 1622294318, NULL, 57),
(60, 'default.png', 1, 1629631816, NULL, 58);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_cat` int(10) NOT NULL,
  `nama_cat` varchar(50) NOT NULL,
  `ket_cat` varchar(255) NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_cat`, `nama_cat`, `ket_cat`, `active`) VALUES
(1, 'Baju', 'Pakaian berbentuk baju', 0),
(4, 'Celana', 'Jenis - jenis celana', 0),
(5, 'Topi', 'Tutup kepala', 0),
(7, 'Sendal', 'Alas kaki bernama sepatu', 0),
(9, 'Tas', 'Untuk angkut barang', 0),
(12, 'Muda', 'Untuk anak muda', 0),
(13, 'Sandal', 'Sejenis alas kaki', 0),
(14, 'Makanan', 'Makanan sehat dan bergizi', 1),
(15, 'Roti', 'Roti instan lezat dan bergizi', 1),
(16, 'Lumpia', 'Lumpia rebung instant dengan berbagai rasa', 1),
(17, 'SariBuah', 'Minuman sari buah asli tanpa pengawet makanan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `midtrans`
--

CREATE TABLE `midtrans` (
  `id_midtrans` int(10) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `status_message` text NOT NULL,
  `va_number` varchar(50) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `gross_amount` int(11) NOT NULL,
  `transaction_time` varchar(100) NOT NULL,
  `transaction_status` varchar(20) NOT NULL,
  `settlement_time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `midtrans`
--

INSERT INTO `midtrans` (`id_midtrans`, `transaction_id`, `status_message`, `va_number`, `bank`, `payment_type`, `order_id`, `gross_amount`, `transaction_time`, `transaction_status`, `settlement_time`) VALUES
(75, 'd2fdf30c-d43e-4851-b2cd-1f8adb9130d2', 'midtrans payment notification', NULL, 'Gopay', 'gopay', 'Millano-5ea2bab5bd15d', 78000, '2020-04-24 17:09:10', 'settlement', '2020-04-24 17:10:10'),
(77, '75738a13-b51f-4d05-a01f-bd521bcf638c', 'midtrans payment notification', '194008982659021', 'permata', 'bank_transfer', 'Millano-5f3d015a2facc', 374000, '2020-08-19 17:39:44', 'settlement', '2020-08-19 17:44:25'),
(78, 'a7446d67-309e-49c0-be2c-3209b1af62b6', 'midtrans payment notification', NULL, 'Gopay', 'gopay', 'Millano-5f3d0f126a2b0', 270000, '2020-08-19 18:38:09', 'cancel', '2020-08-19 18:40:42'),
(79, '8eba5beb-1ce3-4b61-b967-28d437a7f1f5', 'midtrans payment notification', NULL, 'Gopay', 'gopay', 'Millano-5f3d10b4dfde5', 456000, '2020-08-19 18:45:04', 'settlement', '2020-08-19 18:46:43'),
(80, 'b2c40a9d-4b68-4c79-a663-cfd3aae86749', 'midtrans payment notification', '391229174675', 'mandiri-kode bank-70012', 'echannel', 'KaisarProducts-60628f70ce63c', 147000, '2021-03-30 09:39:49', 'settlement', '2021-03-30 09:40:07'),
(81, '8390fa9c-6f21-4bcd-952d-054d2b8bb32f', 'midtrans payment notification', '172567037624', 'mandiri-kode bank-70012', 'echannel', 'KaisarProducts-60629480796a0', 37000, '2021-03-30 10:01:25', 'settlement', '2021-03-30 10:02:05'),
(86, 'e9218502-2113-4635-9fe9-d507e5b4a2f8', 'midtrans payment notification', '37813975088', 'bca', 'bank_transfer', 'KaisarProducts-6066ee2173223', 133000, '2021-04-02 17:13:13', 'expire', NULL),
(87, '2e286726-7d63-4656-9e01-00ad7b551de5', 'midtrans payment notification', '418738092522', 'mandiri-kode bank-70012', 'echannel', 'KaisarProducts-60715a6843a21', 37000, '2021-04-10 14:57:45', 'expire', NULL),
(88, '1c99ec57-da7d-41b8-ac60-afb9e8314f2a', 'midtrans payment notification', '395867691360', 'mandiri-kode bank-70012', 'echannel', 'KaisarProducts-609414c339b25', 36000, '2021-05-06 23:09:48', 'settlement', '2021-05-06 23:10:42'),
(89, '54f5db6b-fe98-4819-b6a2-9bc48fe4d695', 'midtrans payment notification', '378131578666557989', 'bri', 'bank_transfer', 'KaisarProducts-609433e2af8d5', 61000, '2021-05-07 01:22:33', 'settlement', '2021-05-07 01:22:53'),
(90, 'a7ed7dba-dafb-407e-8167-44a46052832b', 'midtrans payment notification', '378135456370406308', 'bri', 'bank_transfer', 'KaisarProducts-6094355c04894', 38000, '2021-05-07 01:28:52', 'settlement', '2021-05-07 01:29:06'),
(91, 'ef274c74-27cf-4f0e-b2ed-cef074a718c2', 'midtrans payment notification', '378130794836719402', 'bri', 'bank_transfer', 'KaisarProducts-60b23fb6cc514', 312000, '2021-05-29 20:21:40', 'settlement', '2021-05-29 20:25:33'),
(92, '577e97c7-da29-408f-83cf-d0c97d6eef5e', 'midtrans payment notification', NULL, NULL, 'qris', 'KaisarProducts-60cdc8d1e97d7', 27000, '2021-06-19 17:45:16', 'expire', NULL),
(93, '4b81d4fe-07c8-4958-a6ff-fa767f15540b', 'midtrans payment notification', NULL, NULL, 'qris', 'KaisarProducts-60cdcb18c9035', 28000, '2021-06-19 17:46:53', 'expire', NULL),
(94, '0321a460-1c05-4d1f-a963-76c3badf3766', 'midtrans payment notification', NULL, NULL, 'qris', 'KaisarProducts-60cdcbafd50d3', 28000, '2021-06-19 17:49:28', 'expire', NULL),
(95, '409c813c-8540-4982-b8cf-820efcadc775', 'midtrans payment notification', NULL, NULL, 'cimb_clicks', 'KaisarProducts-60cdcc3a07e07', 28000, '2021-06-19 17:52:45', 'expire', NULL),
(96, '9d7cb600-6d50-45e7-9ad3-e88aac8ad36b', 'midtrans payment notification', '378130137657225562', 'bri', 'bank_transfer', 'KaisarProducts-60cdcede4655e', 28000, '2021-06-19 18:10:04', 'expire', NULL),
(97, '6fbb91ae-6fb1-4732-a373-12cd6dbcbb82', 'midtrans payment notification', NULL, NULL, 'cimb_clicks', 'KaisarProducts-60cdd0ee9d71e', 28000, '2021-06-19 18:11:51', 'deny', '2021-06-19 18:12:04'),
(98, '62c6511e-53e0-4e44-ac96-b865844e67b4', 'midtrans payment notification', NULL, NULL, 'danamon_online', 'KaisarProducts-60cdd1232998a', 28000, '2021-06-19 18:12:43', 'settlement', '2021-06-19 18:12:46'),
(99, 'd551fc53-5025-48d4-aa34-cb163b59178c', 'midtrans payment notification', NULL, NULL, 'akulaku', 'KaisarProducts-60cdd1a487cb4', 28000, '2021-06-19 18:15:07', 'settlement', '2021-06-19 18:15:20'),
(100, '7f7fa372-1ab3-486b-bb78-e4a80c333c23', 'midtrans payment notification', NULL, NULL, 'credit_card', 'KaisarProducts-60cdd3181e6aa', 33000, '2021-06-19 18:21:45', 'expire', '2021-06-19 18:22:10'),
(101, '93eb887d-0d74-4a7c-ad85-997ee9e90df4', 'midtrans payment notification', NULL, NULL, 'credit_card', 'KaisarProducts-60cdd450ae6ad', 33000, '2021-06-19 18:26:49', 'expire', '2021-06-19 18:26:59'),
(102, 'fcb889c3-a8da-49a8-b343-367d0d6f8ef5', 'midtrans payment notification', '6594249139428242', 'Alfamart', 'cstore', 'KaisarProducts-60cdd54c994b0', 92000, '2021-06-19 18:30:28', 'expire', NULL),
(103, '5a44163a-1067-4b3b-9c91-41d43c3dd797', 'midtrans payment notification', '378135420304851300', 'bri', 'bank_transfer', 'KaisarProducts-6118801f7165f', 32000, '2021-08-15 09:47:09', 'expire', NULL),
(104, 'a09374fa-5bfe-449a-94cd-a27d93c24c0e', 'midtrans payment notification', '378136804257046510', 'bri', 'bank_transfer', 'KaisarProducts-611c8b3506ab3', 28000, '2021-08-18 11:23:49', 'settlement', '2021-08-18 11:24:12'),
(105, '17968dc3-9099-4594-b7a2-f76e32c44dde', 'midtrans payment notification', '378134578594628999', 'bri', 'bank_transfer', 'KaisarProducts-611de31355e9e', 64000, '2021-08-19 11:50:42', 'settlement', '2021-08-19 11:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_orders` varchar(50) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status_order` varchar(50) DEFAULT NULL,
  `tanggal_order` varchar(50) NOT NULL,
  `total_harga_barang` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `nomer_resi` varchar(50) DEFAULT NULL,
  `status_pengiriman` varchar(50) DEFAULT NULL,
  `tanggal_selesai` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `id_user`, `status_order`, `tanggal_order`, `total_harga_barang`, `keterangan`, `nomer_resi`, `status_pengiriman`, `tanggal_selesai`) VALUES
('KaisarProducts-60628f70ce63c', 56, 'Selesai', '1617071985', 135000, 'Nomer Resi telah di inputkan', 'test notif', 'Terkirim', '30/03/2021'),
('KaisarProducts-60629480796a0', 56, 'Selesai', '1617073280', 25000, 'Nomer Resi telah di inputkan', 'test notif2', 'Terkirim', '30/03/2021'),
('KaisarProducts-6066ee2173223', 56, 'expire', '1617358369', 50000, 'Pembayaran Gagal Dilakukan', NULL, NULL, NULL),
('KaisarProducts-6071548a99d06', 56, NULL, '1618039946', 30000, 'Menunggu Pembayaran', NULL, NULL, NULL),
('KaisarProducts-60715a6843a21', 56, 'expire', '1618041448', 30000, 'Pembayaran Gagal Dilakukan', NULL, NULL, NULL),
('KaisarProducts-609414c339b25', 56, 'Selesai', '1620317379', 30000, 'Nomer Resi telah di inputkan', 'test resi 1', 'Terkirim', '06/05/2021'),
('KaisarProducts-60941ff537d58', 56, NULL, '1620320245', 30000, 'Menunggu Pembayaran', NULL, NULL, NULL),
('KaisarProducts-609433e2af8d5', 56, 'Selesai', '1620325346', 55000, 'Nomer Resi telah di inputkan', 'test ts', 'Terkirim', '07/05/2021'),
('KaisarProducts-6094355c04894', 56, 'Selesai', '1620325724', 30000, 'Nomer Resi telah di inputkan', 'wwww', 'Terkirim', '07/05/2021'),
('KaisarProducts-60b23fb6cc514', 57, 'Selesai', '1622294455', 300000, 'Nomer Resi telah di inputkan', 'halo12345', 'Terkirim', '29/05/2021'),
('KaisarProducts-60cdc8a073b48', 56, NULL, '1624098981', 20000, 'Menunggu Pembayaran', NULL, NULL, NULL),
('KaisarProducts-60cdc8d1e97d7', 56, 'expire', '1624099031', 20000, 'Pembayaran Gagal Dilakukan', NULL, NULL, NULL),
('KaisarProducts-60cdcb18c9035', 56, 'expire', '1624099609', 20000, 'Pembayaran Gagal Dilakukan', NULL, NULL, NULL),
('KaisarProducts-60cdcbafd50d3', 56, 'expire', '1624099760', 20000, 'Pembayaran Gagal Dilakukan', NULL, NULL, NULL),
('KaisarProducts-60cdcc3a07e07', 56, 'expire', '1624099898', 20000, 'Pembayaran Gagal Dilakukan', NULL, NULL, NULL),
('KaisarProducts-60cdcd20318ce', 56, NULL, '1624100128', 20000, 'Menunggu Pembayaran', NULL, NULL, NULL),
('KaisarProducts-60cdcede4655e', 56, 'expire', '1624100579', 20000, 'Pembayaran Gagal Dilakukan', NULL, NULL, NULL),
('KaisarProducts-60cdd0ee9d71e', 56, 'deny', '1624101107', 20000, 'Menunggu Pembayaran', NULL, NULL, NULL),
('KaisarProducts-60cdd1232998a', 56, 'settlement', '1624101158', 20000, 'Nomer Resi telah di inputkan', 'sadasdasd', 'Sedang Dikirim', NULL),
('KaisarProducts-60cdd1a487cb4', 56, 'settlement', '1624101297', 20000, 'Pembayaran Berhasil Dilakukan', NULL, NULL, NULL),
('KaisarProducts-60cdd3181e6aa', 56, 'expire', '1624101661', 25000, 'Pembayaran Gagal Dilakukan', NULL, NULL, NULL),
('KaisarProducts-60cdd450ae6ad', 56, 'expire', '1624101981', 25000, 'Pembayaran Gagal Dilakukan', NULL, NULL, NULL),
('KaisarProducts-60cdd51bd986c', 56, NULL, '1624102184', 25000, 'Menunggu Pembayaran', NULL, NULL, NULL),
('KaisarProducts-60cdd52863f68', 56, NULL, '1624102220', 25000, 'Menunggu Pembayaran', NULL, NULL, NULL),
('KaisarProducts-60cdd54c994b0', 56, 'expire', '1624102220', 25000, 'Pembayaran Gagal Dilakukan', NULL, NULL, NULL),
('KaisarProducts-60cde27db7a3c', 56, NULL, '1624105610', 25000, 'Menunggu Pembayaran', NULL, NULL, NULL),
('KaisarProducts-60d5941ce70d7', 56, NULL, '1624609826', 25000, 'Menunggu Pembayaran', NULL, NULL, NULL),
('KaisarProducts-6118801f7165f', 56, 'expire', '1628995615', 20000, 'Pembayaran Gagal Dilakukan', NULL, NULL, NULL),
('KaisarProducts-611c8b3506ab3', 56, 'Selesai', '1629260597', 20000, 'Nomer Resi telah di inputkan', 'test resi 1234', 'Terkirim', '18/08/2021'),
('KaisarProducts-611de31355e9e', 56, 'settlement', '1629348632', 40000, 'Pembayaran Berhasil Dilakukan', NULL, NULL, NULL),
('Millano-5ea2bab5bd15d', 56, 'Selesai', '1587722934', 72000, 'Nomer Resi telah di inputkan', 'TEST-0423444559', 'Terkirim', '25/04/2020'),
('Millano-5ee0248f0ba12', 56, NULL, '1591747727', 120000, 'Menunggu Pembayaran', NULL, NULL, NULL),
('Millano-5f3d015a2facc', 56, 'settlement', '1597833562', 368000, 'Nomer Resi telah di inputkan', 'test', 'Sedang Dikirim', NULL),
('Millano-5f3d0f126a2b0', 56, 'cancel', '1597837074', 264000, 'Menunggu Pembayaran', NULL, NULL, NULL),
('Millano-5f3d10b4dfde5', 56, 'Dibatalkan', '1597837493', 450000, 'alamat tidak sesuai', NULL, 'Batal Dikirim', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_produk`
--

CREATE TABLE `orders_produk` (
  `id_orders_produk` int(10) NOT NULL,
  `id_orders` varchar(50) NOT NULL,
  `id_produk` int(10) NOT NULL,
  `ukuran_orders` varchar(50) DEFAULT NULL,
  `qty` varchar(10) NOT NULL,
  `diskon_orders` int(11) DEFAULT NULL,
  `harga_orders` int(11) DEFAULT NULL,
  `nama_orders` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_produk`
--

INSERT INTO `orders_produk` (`id_orders_produk`, `id_orders`, `id_produk`, `ukuran_orders`, `qty`, `diskon_orders`, `harga_orders`, `nama_orders`) VALUES
(180, 'Millano-5ea2bab5bd15d', 42, 'S', '1', 10, 72000, 'Baju Bahan Tipis'),
(187, 'Millano-5ee0248f0ba12', 49, 'S', '1', 0, 120000, 'Celana Pendek Dickies'),
(188, 'Millano-5f3d015a2facc', 50, 'M', '2', 20, 184000, 'SCHUTZ Women Black Naama Nubuck'),
(189, 'Millano-5f3d0f126a2b0', 48, 'all size', '1', 0, 150000, 'Topi Converse Original'),
(190, 'Millano-5f3d0f126a2b0', 45, 'S', '1', 5, 114000, 'Kaos Old For All'),
(191, 'Millano-5f3d10b4dfde5', 48, 'all size', '3', 0, 150000, 'Topi Converse Original'),
(192, 'KaisarProducts-60628f70ce63c', 47, 'S', '1', 0, 135000, 'Long Sleeve'),
(193, 'KaisarProducts-60629480796a0', 52, 'Coklat', '1', 0, 25000, 'Roti Beku Annabil Coklat'),
(194, 'KaisarProducts-6066ee2173223', 52, 'Coklat', '2', 0, 25000, 'Roti Beku Annabil Coklat'),
(195, 'KaisarProducts-6071548a99d06', 53, 'Original Mini', '1', 0, 30000, 'Lumpia Rebung Original Mini  '),
(196, 'KaisarProducts-60715a6843a21', 53, 'Original Mini', '1', 0, 30000, 'Lumpia Rebung Original Mini  '),
(197, 'KaisarProducts-609414c339b25', 53, 'Original Mini', '1', 0, 30000, 'Lumpia Rebung Original Mini  '),
(198, 'KaisarProducts-60941ff537d58', 53, 'Original Mini', '1', 0, 30000, 'Lumpia Rebung Original Mini  '),
(199, 'KaisarProducts-609433e2af8d5', 53, 'Original Mini', '1', 0, 30000, 'Lumpia Rebung Original Mini  '),
(200, 'KaisarProducts-609433e2af8d5', 52, 'Coklat', '1', 0, 25000, 'Roti Beku Annabil Coklat'),
(201, 'KaisarProducts-6094355c04894', 53, 'Original Mini', '1', 0, 30000, 'Lumpia Rebung Original Mini  '),
(202, 'KaisarProducts-60b23fb6cc514', 53, 'Original mini', '10', 0, 30000, 'Lumpia Rebung Original Mini  '),
(203, 'KaisarProducts-60cdc8a073b48', 66, 'Original mini', '1', 0, 20000, 'Lumpia Rebung Original Mini'),
(204, 'KaisarProducts-60cdc8d1e97d7', 66, 'Original mini', '1', 0, 20000, 'Lumpia Rebung Original Mini'),
(205, 'KaisarProducts-60cdcb18c9035', 66, 'Original mini', '1', 0, 20000, 'Lumpia Rebung Original Mini'),
(206, 'KaisarProducts-60cdcbafd50d3', 66, 'Original mini', '1', 0, 20000, 'Lumpia Rebung Original Mini'),
(207, 'KaisarProducts-60cdcc3a07e07', 66, 'Original mini', '1', 0, 20000, 'Lumpia Rebung Original Mini'),
(208, 'KaisarProducts-60cdcd20318ce', 66, 'Original mini', '1', 0, 20000, 'Lumpia Rebung Original Mini'),
(209, 'KaisarProducts-60cdcede4655e', 66, 'Original mini', '1', 0, 20000, 'Lumpia Rebung Original Mini'),
(210, 'KaisarProducts-60cdd0ee9d71e', 66, 'Original mini', '1', 0, 20000, 'Lumpia Rebung Original Mini'),
(211, 'KaisarProducts-60cdd1232998a', 66, 'Original mini', '1', 0, 20000, 'Lumpia Rebung Original Mini'),
(212, 'KaisarProducts-60cdd1a487cb4', 66, 'Original mini', '1', 0, 20000, 'Lumpia Rebung Original Mini'),
(213, 'KaisarProducts-60cdd3181e6aa', 63, 'Srikaya', '1', 0, 25000, 'Roti Beku Annabil Srikaya'),
(214, 'KaisarProducts-60cdd450ae6ad', 62, 'Ayam', '1', 0, 25000, 'Roti Beku Annabil Ayam'),
(215, 'KaisarProducts-60cdd51bd986c', 62, 'Ayam', '1', 0, 25000, 'Roti Beku Annabil Ayam'),
(216, 'KaisarProducts-60cdd52863f68', 62, 'Ayam', '1', 0, 25000, 'Roti Beku Annabil Ayam'),
(217, 'KaisarProducts-60cdd54c994b0', 62, 'Ayam', '1', 0, 25000, 'Roti Beku Annabil Ayam'),
(218, 'KaisarProducts-60cde27db7a3c', 61, 'Kombinasi', '1', 0, 25000, 'Roti Beku Annabil Kombinasi'),
(219, 'KaisarProducts-60d5941ce70d7', 63, 'Srikaya', '1', 0, 25000, 'Roti Beku Annabil Srikaya'),
(220, 'KaisarProducts-6118801f7165f', 66, 'Original mini', '1', 0, 20000, 'Lumpia Rebung Original Mini'),
(221, 'KaisarProducts-611c8b3506ab3', 66, 'Original mini', '1', 0, 20000, 'Lumpia Rebung Original Mini'),
(222, 'KaisarProducts-611de31355e9e', 66, 'Original mini', '2', 0, 20000, 'Lumpia Rebung Original Mini');

-- --------------------------------------------------------

--
-- Table structure for table `parent_kategori`
--

CREATE TABLE `parent_kategori` (
  `parent_kategori_id` int(11) NOT NULL,
  `parent_kategori_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent_kategori`
--

INSERT INTO `parent_kategori` (`parent_kategori_id`, `parent_kategori_nama`) VALUES
(8, 'Makanan'),
(10, 'Minuman'),
(11, 'Bumbu'),
(12, 'Sambel');

-- --------------------------------------------------------

--
-- Table structure for table `parent_kategori_kategori`
--

CREATE TABLE `parent_kategori_kategori` (
  `parent_kategori_kategori_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `parent_kategori_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent_kategori_kategori`
--

INSERT INTO `parent_kategori_kategori` (`parent_kategori_kategori_id`, `kategori_id`, `parent_kategori_id`) VALUES
(36, 15, 8),
(37, 16, 8),
(40, 17, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id_ongkir` int(10) NOT NULL,
  `id_orders` varchar(50) NOT NULL,
  `kurir` varchar(50) NOT NULL,
  `service` varchar(100) NOT NULL,
  `estimasi` varchar(50) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `kode_pos` varchar(20) DEFAULT NULL,
  `nama_penerima` varchar(50) DEFAULT NULL,
  `no_penerima` varchar(20) DEFAULT NULL,
  `berat` int(10) DEFAULT NULL,
  `total_ongkir` int(11) NOT NULL,
  `notifikasi_email` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengiriman`
--

INSERT INTO `pengiriman` (`id_ongkir`, `id_orders`, `kurir`, `service`, `estimasi`, `alamat_pengiriman`, `kode_pos`, `nama_penerima`, `no_penerima`, `berat`, `total_ongkir`, `notifikasi_email`) VALUES
(119, 'Millano-5ea2bab5bd15d', 'jne', 'CTC', 'Estimasi 1-2 Hari', 'Jalan Cendana, Kalimantan', '55551', 'Putri Wahyu', '089669413260', 250, 6000, 1587969988),
(124, 'Millano-5ee0248f0ba12', 'jne', 'CTC', 'Estimasi 1-2 Hari', 'jineman, Girikerto, Turi, Sleman, DIY', '55551', 'Rahma', '089669413260', 250, 6000, NULL),
(125, 'Millano-5f3d015a2facc', 'jne', 'CTCYES', 'Estimasi 1-2 Hari', 'Jineman.Kloposawit, Girikerto, Turi, Sleman, DIY RT/RW 004/006', '55551', 'Kimmi Kimmo', '089669413260', 500, 6000, 1620490483),
(126, 'Millano-5f3d0f126a2b0', 'jne', 'CTC', 'Estimasi 1-2 Hari', 'Jineman.Kloposawit, Girikerto, Turi, Sleman, DIY RT/RW 004/006', '55551', 'Zanika', '089669413260', 500, 6000, NULL),
(127, 'Millano-5f3d10b4dfde5', 'jne', 'CTC', 'Estimasi 1-2 Hari', 'Jineman.Kloposawit, Girikerto, Turi, Sleman, DIY RT/RW 004/006', '55551', 'Hananta Guntur', '089669413260', 750, 6000, NULL),
(128, 'KaisarProducts-60628f70ce63c', 'jne', 'OKE', 'Estimasi 6-7 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 250, 12000, 1617245073),
(129, 'KaisarProducts-60629480796a0', 'jne', 'OKE', 'Estimasi 6-7 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 50, 12000, 1617246339),
(130, 'KaisarProducts-6066ee2173223', 'pos', 'Paket Kilat Khusus', 'Estimasi 8 HARI Hari', 'jl. angkasa 7 rt 2 rw 8', '78283', 'nnhhh', '1234567891112', 100, 83000, NULL),
(131, 'KaisarProducts-6071548a99d06', 'jne', 'OKE', 'Estimasi 6-7 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1, 12000, NULL),
(132, 'KaisarProducts-60715a6843a21', 'pos', 'Paket Kilat Khusus', 'Estimasi 2 HARI Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1, 7000, NULL),
(133, 'KaisarProducts-609414c339b25', 'tiki', 'ECO', 'Estimasi 4 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1, 6000, 1620490312),
(134, 'KaisarProducts-60941ff537d58', 'jne', 'CTC', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1, 8000, NULL),
(135, 'KaisarProducts-609433e2af8d5', 'tiki', 'ECO', 'Estimasi 4 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 51, 6000, 1620498224),
(136, 'KaisarProducts-6094355c04894', 'jne', 'CTC', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1, 8000, NULL),
(137, 'KaisarProducts-60b23fb6cc514', 'jne', 'YES', 'Estimasi 2-3 Hari', 'sleman yogyakarta indonesia', '56221', 'wkwk', '085643255085', 10, 12000, 1622467737),
(138, 'KaisarProducts-60cdc8a073b48', 'pos', 'Express Next Day Barang', 'Estimasi 2 HARI Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1000, 7000, NULL),
(139, 'KaisarProducts-60cdc8d1e97d7', 'pos', 'Express Next Day Barang', 'Estimasi 2 HARI Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1000, 7000, NULL),
(140, 'KaisarProducts-60cdcb18c9035', 'jne', 'CTC', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1000, 8000, NULL),
(141, 'KaisarProducts-60cdcbafd50d3', 'jne', 'CTC', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1000, 8000, NULL),
(142, 'KaisarProducts-60cdcc3a07e07', 'jne', 'CTC', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1000, 8000, NULL),
(143, 'KaisarProducts-60cdcd20318ce', 'jne', 'CTC', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1000, 8000, NULL),
(144, 'KaisarProducts-60cdcede4655e', 'jne', 'CTC', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1000, 8000, NULL),
(145, 'KaisarProducts-60cdd0ee9d71e', 'jne', 'CTC', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1000, 8000, NULL),
(146, 'KaisarProducts-60cdd1232998a', 'jne', 'CTC', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1000, 8000, NULL),
(147, 'KaisarProducts-60cdd1a487cb4', 'jne', 'CTC', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 1000, 8000, NULL),
(148, 'KaisarProducts-60cdd3181e6aa', 'jne', 'CTC', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 500, 8000, NULL),
(149, 'KaisarProducts-60cdd450ae6ad', 'jne', 'CTC', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 500, 8000, NULL),
(150, 'KaisarProducts-60cdd51bd986c', 'jne', 'OKE', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 500, 67000, NULL),
(151, 'KaisarProducts-60cdd52863f68', 'jne', 'OKE', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 500, 67000, NULL),
(152, 'KaisarProducts-60cdd54c994b0', 'jne', 'OKE', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 500, 67000, NULL),
(153, 'KaisarProducts-60cde27db7a3c', 'jne', 'CTC', 'Estimasi 3-6 Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 500, 8000, NULL),
(154, 'KaisarProducts-60d5941ce70d7', 'pos', 'Express Next Day Barang', 'Estimasi 2 HARI Hari', 'Jl. Tambora no.45-46 perum. maron permai', '56221', 'moch fattah', '087734250835', 500, 7000, NULL),
(155, 'KaisarProducts-6118801f7165f', 'jne', 'OKE', 'Estimasi 2-3 Hari', 'sadasfasdfds', '562312', 'moch fattah', '0857234586210', 1000, 12000, NULL),
(156, 'KaisarProducts-611c8b3506ab3', 'jne', 'CTC', 'Estimasi 3-6 Hari', 'jl aksjdjlkasfhkjashfhkasd', '562312', 'moch fattah', '087734258035', 1000, 8000, 1629433601),
(157, 'KaisarProducts-611de31355e9e', 'jne', 'OKE', 'Estimasi 2-3 Hari', 'sdasdafsssaa', '562312', 'moch fattah', '08566453214', 2000, 24000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) NOT NULL,
  `unik_produk` varchar(50) NOT NULL,
  `nama_produk` varchar(225) NOT NULL,
  `ket_produk` text NOT NULL,
  `id_cat` int(10) DEFAULT NULL,
  `harga_produk` int(12) NOT NULL,
  `gambar_produk` varchar(50) NOT NULL,
  `create_date` int(11) NOT NULL,
  `delete_at` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `unik_produk`, `nama_produk`, `ket_produk`, `id_cat`, `harga_produk`, `gambar_produk`, `create_date`, `delete_at`) VALUES
(42, 'BAJU000001', 'Baju Bahan Tipis', 'Baju ini sangat cocok untuk digunakan tidur dimalam hari, karena bahanya yang tipis.', 1, 80000, '1587722854652.png', 1587722854, 1624093732),
(43, 'TAS000043', 'Totebag Motif Big Hero', 'Tas buatan tangan dengan gaya anak muda jaman sekarang.', 9, 60000, '1587724039221.jpeg', 1587724039, 1624093737),
(44, 'TAS000044', 'Totebag Motif The Simpsons', 'Bahan awet dengan pembuatan menggunakan tangan secara langsung.', 9, 60000, '1587724093216.jpeg', 1587724093, 1624093743),
(45, 'BAJU000045', 'Kaos Old For All', 'Kaos untuk pecinta motor cross dan trabas.', 1, 120000, '1587724321138.png', 1587724321, 1624093749),
(46, 'BAJU000046', 'Kaos Sni Licious', 'Kaos untuk pecinta motor cross dan trabas.', 1, 120000, '1587724372425.png', 1587724372, 1624093794),
(47, 'BAJU000047', 'Long Sleeve', 'Untuk trabas di ngalasan juga bisa, untuk pergi ke kantor juga oke.', 1, 135000, '1587724452592.png', 1587724452, 1624093789),
(48, 'TOPI000048', 'Topi Converse Original', 'Topi anak muda, cocok digunakan ketika ngarit di kebun.', 5, 150000, '1587726545981.jpg', 1587726546, 1624093785),
(49, 'CELANA000049', 'Celana Pendek Dickies', 'Celana dede gemes yang bagus digunakan untuk renang.', 4, 120000, '1587726652090.jpg', 1587726652, 1624093781),
(50, 'SENDAL000050', 'SCHUTZ Women Black Naama Nubuck', 'SCHUTZ Women Black Naama nubuck sandals Product code: 14693524283349729 CKVYNVJ', 7, 230000, '1587726796949.jpg', 1587726797, 1624093776),
(51, 'WANITA000051', 'Women Alexander Mcqueen Mini Leather', 'Details :\r\nMade in Italy\r\nExterior design details: gold-tone hardware\r\nInterior design details: suede lining, interior pocket\r\nMeasures 9in wide x 6.75in high x 3.25in deep\r\nImported', 9, 300000, '1587727164811.jpg', 1587727164, 1624093771),
(52, 'MAKANAN000052', 'Roti Beku Annabil Coklat', 'Roti beku annabil sehat dan instant rasa coklat', 14, 25000, '1617073231838.jpg', 1617073231, 1622657753),
(53, 'MAKANAN000053', 'Lumpia Rebung Original Mini  ', 'Lumpia rebung asli semarang per pack isi 10', 14, 30000, '1618038353327.jpeg', 1618038353, 1623634209),
(54, 'MAKANAN000054', 'Brosem Isi 40', 'Minuman sari apel khas malang isi 40 cup', 14, 42000, '1620393924710.jpg', 1620393924, 1623634203),
(55, 'SARI BUAH000055', 'Sari Buah 1 Pack Isi 12 mix', 'Minuman sari buah asli tanpa pengawet makanan\r\n- sari jambu\r\n- sari sirsat\r\n- di proses dengan cara alami tanpa pengawet dan pemanis buatan\r\n-menggunakan buah asli\r\n-memakai gula asli\r\n-isi 12 cup (120ml)', 17, 16500, '1623636996864.jpg', 1623636996, 1627969941),
(56, 'ROTI000056', 'Roti Beku Annabil Coklat', 'Roti goreng Frozen Annabil \r\nRoti yang lembut, isian pas, crispy diluar karena dibalur tepung panir.\r\nCara masak yang praktis, tinggal goreng selama 2 menit atau hingga kuning keemasan.\r\n1 pack isi 10pcs', 15, 25000, '1623637865172.jpg', 1623637865, 0),
(57, 'ROTI000057', 'Roti Beku Annabil Coklat Keju', 'Roti goreng Frozen Annabil\r\nRoti yang lembut, isian pas, crispy diluar karena dibalur tepung panir.\r\nCara masak yang praktis, tinggal goreng selama 2 menit atau hingga kuning keemasan.\r\n1 pack isi 10pcs', 15, 25000, '1623637946554.jpg', 1623637946, 0),
(58, 'ROTI000058', 'Roti Beku Annabil Strawberry', 'Roti goreng Frozen Annabil\r\nRoti yang lembut, isian pas, crispy diluar karena dibalur tepung panir.\r\nCara masak yang praktis, tinggal goreng selama 2 menit atau hingga kuning keemasan.\r\n1 pack isi 10pcs', 15, 25000, '1623638082371.jpg', 1623638082, 0),
(59, 'ROTI000059', 'Roti Beku Annabil Blueberry', 'Roti goreng Frozen Annabil\r\nRoti yang lembut, isian pas, crispy diluar karena dibalur tepung panir.\r\nCara masak yang praktis, tinggal goreng selama 2 menit atau hingga kuning keemasan.\r\n1 pack isi 10pcs', 15, 25000, '1623638118439.jpg', 1623638118, 0),
(60, 'ROTI000060', 'Roti Beku Annabil Durian', 'Roti goreng Frozen Annabil\r\nRoti yang lembut, isian pas, crispy diluar karena dibalur tepung panir.\r\nCara masak yang praktis, tinggal goreng selama 2 menit atau hingga kuning keemasan.\r\n1 pack isi 10pcs', 15, 25000, '1623638407740.jpg', 1623638407, 0),
(61, 'ROTI000061', 'Roti Beku Annabil Kombinasi', 'Roti goreng Frozen Annabil\r\nRoti yang lembut, isian pas, crispy diluar karena dibalur tepung panir.\r\nCara masak yang praktis, tinggal goreng selama 2 menit atau hingga kuning keemasan.\r\n1 pack isi 10pcs', 15, 25000, '1623638610179.jpg', 1623638610, 0),
(62, 'ROTI000062', 'Roti Beku Annabil Ayam', 'Roti goreng Frozen Annabil\r\nRoti yang lembut, isian pas, crispy diluar karena dibalur tepung panir.\r\nCara masak yang praktis, tinggal goreng selama 2 menit atau hingga kuning keemasan.\r\n1 pack isi 10pcs', 15, 25000, '1623638650839.jpg', 1623638650, 0),
(63, 'ROTI000063', 'Roti Beku Annabil Srikaya', 'Roti goreng Frozen Annabil\r\nRoti yang lembut, isian pas, crispy diluar karena dibalur tepung panir.\r\nCara masak yang praktis, tinggal goreng selama 2 menit atau hingga kuning keemasan.\r\n1 pack isi 10pcs', 15, 25000, '1623638675238.jpg', 1623638675, 0),
(64, 'ROTI000064', 'Roti Beku Annabil Ayam Mozarella', 'Roti goreng Frozen Annabil\r\nRoti yang lembut, isian pas, crispy diluar karena dibalur tepung panir.\r\nCara masak yang praktis, tinggal goreng selama 2 menit atau hingga kuning keemasan.\r\n1 pack isi 10pcs', 15, 27000, '1623638711849.jpg', 1623638711, 1624093727),
(65, 'LUMPIA000065', 'Lumpia Rebung Original Mini', 'Sadsadsadasdaswqeqweqwewqeqwe', 16, 20000, '1624093691657.jpg', 1624093691, 1624093759),
(66, 'LUMPIA000066', 'Lumpia Rebung Original Mini', 'Sdsdfdfsdfsadrqwqweqweqwzcxxzc', 16, 20000, '1624093830043.jpg', 1624093830, 0),
(67, 'SARI BUAH000067', 'Sari Buah 1 Pack Isi 12 Mix', 'Minuman sari buah asli tanpa pengawet makanan - sari jambu - sari sirsat - di proses dengan cara alami tanpa pengawet dan pemanis buatan -menggunakan buah asli -memakai gula asli -isi 12 cup (120ml)', 17, 16500, '1627969923072.jpg', 1627969923, 0);

--
-- Triggers `produk`
--
DELIMITER $$
CREATE TRIGGER `before_delete_produk` BEFORE DELETE ON `produk` FOR EACH ROW BEGIN
	DELETE FROM detail_produk WHERE id_produk = OLD.id_produk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id_tags` int(10) NOT NULL,
  `nama_tag` varchar(50) NOT NULL,
  `ket_tag` varchar(50) NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id_tags`, `nama_tag`, `ket_tag`, `active`) VALUES
(1, 'Casual', 'Dipakai untuk kegiatan santai, seperti hangout.', 0),
(3, 'Sport', 'Cocok dipakai untuk kegiatan olahraga', 0),
(4, 'Liburan', 'Untuk digunakan berlibur', 0),
(5, 'Pria', 'Produk untuk pria', 0),
(7, 'Jogging', 'Cocok untuk jogging di pagi hari.', 0),
(8, 'Homemade', 'Buatan tangan', 1),
(10, 'Frozen', 'Makanan beku yang awet dan tahan lama', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags_produk`
--

CREATE TABLE `tags_produk` (
  `id_tags_produk` int(11) NOT NULL,
  `id_produk` int(10) NOT NULL,
  `id_tags` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags_produk`
--

INSERT INTO `tags_produk` (`id_tags_produk`, `id_produk`, `id_tags`) VALUES
(38, 42, 1),
(39, 42, 8),
(40, 43, 8),
(41, 44, 8),
(42, 45, 1),
(43, 45, 3),
(44, 45, 5),
(45, 46, 1),
(46, 46, 3),
(47, 46, 5),
(48, 47, 1),
(49, 47, 5),
(50, 48, 1),
(51, 48, 3),
(52, 49, 1),
(53, 49, 5),
(54, 49, 7),
(55, 50, 1),
(56, 51, 1),
(57, 52, 8),
(58, 53, 8),
(59, 54, 8),
(60, 55, 8),
(61, 56, 10),
(62, 57, 10),
(63, 58, 10),
(64, 59, 10),
(65, 60, 10),
(66, 61, 10),
(67, 62, 10),
(68, 63, 10),
(69, 64, 10),
(70, 65, 10),
(71, 66, 10),
(72, 67, 8);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id_token` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expire_at` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Varian`
--

CREATE TABLE `Varian` (
  `id_Varian` int(10) NOT NULL,
  `Varian` varchar(100) DEFAULT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Varian`
--

INSERT INTO `Varian` (`id_Varian`, `Varian`, `active`) VALUES
(1, 'Coklat', 1),
(2, 'Keju', 1),
(3, 'Coklat Keju', 1),
(4, 'Besar', 1),
(5, 'Kecil', 1),
(6, 'Daging Ayam', 1),
(7, 'Ayam Mozarella', 1),
(8, 'Blueberry', 1),
(9, 'Durian', 1),
(10, 'Srikaya', 1),
(11, 'Strawberry', 1),
(12, 'Kombinasi', 1),
(13, 'Original Mini', 1),
(14, 'Original Besar', 1),
(15, 'Udang', 1),
(16, 'Mix', 1),
(17, 'Spesial', 1),
(18, 'Nasi Goreng', 1),
(19, 'Opor', 1),
(20, 'Brongkos', 1),
(21, 'Soto', 1),
(22, 'Sate', 1),
(23, 'Gulai', 1),
(24, 'Rica Rica', 1),
(25, 'Rendang', 1),
(26, 'Ungkep', 1),
(27, 'Sambel Tuna', 1),
(28, 'Sambel Bawang', 1),
(29, 'Sambel Teri', 1),
(30, 'Sambel Terasi', 1),
(31, 'Sambel Lamongan', 1),
(32, 'Sambel Pete', 1),
(33, 'Sambel Cumi', 1),
(34, 'Sambel Tomat', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `detail_produk`
--
ALTER TABLE `detail_produk`
  ADD PRIMARY KEY (`id_detail`),
  ADD UNIQUE KEY `id_produk_2` (`id_produk`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `detail_user`
--
ALTER TABLE `detail_user`
  ADD PRIMARY KEY (`id_detail`),
  ADD UNIQUE KEY `id_user` (`id_user`),
  ADD KEY `detail_user_ibfk_1` (`id_user`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `midtrans`
--
ALTER TABLE `midtrans`
  ADD PRIMARY KEY (`id_midtrans`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `orders_produk`
--
ALTER TABLE `orders_produk`
  ADD PRIMARY KEY (`id_orders_produk`),
  ADD KEY `id_orders` (`id_orders`),
  ADD KEY `orders_produk_ibfk_2` (`id_produk`);

--
-- Indexes for table `parent_kategori`
--
ALTER TABLE `parent_kategori`
  ADD PRIMARY KEY (`parent_kategori_id`);

--
-- Indexes for table `parent_kategori_kategori`
--
ALTER TABLE `parent_kategori_kategori`
  ADD PRIMARY KEY (`parent_kategori_kategori_id`),
  ADD KEY `parent_kategori_id` (`parent_kategori_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id_ongkir`),
  ADD UNIQUE KEY `id_orders` (`id_orders`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_cat` (`id_cat`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id_tags`);

--
-- Indexes for table `tags_produk`
--
ALTER TABLE `tags_produk`
  ADD PRIMARY KEY (`id_tags_produk`),
  ADD KEY `produk` (`id_produk`),
  ADD KEY `id_tag` (`id_tags`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id_token`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Indexes for table `Varian`
--
ALTER TABLE `Varian`
  ADD PRIMARY KEY (`id_Varian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `detail_produk`
--
ALTER TABLE `detail_produk`
  MODIFY `id_detail` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `detail_user`
--
ALTER TABLE `detail_user`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_cat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `midtrans`
--
ALTER TABLE `midtrans`
  MODIFY `id_midtrans` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `orders_produk`
--
ALTER TABLE `orders_produk`
  MODIFY `id_orders_produk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `parent_kategori`
--
ALTER TABLE `parent_kategori`
  MODIFY `parent_kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `parent_kategori_kategori`
--
ALTER TABLE `parent_kategori_kategori`
  MODIFY `parent_kategori_kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id_ongkir` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id_tags` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tags_produk`
--
ALTER TABLE `tags_produk`
  MODIFY `id_tags_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Varian`
--
ALTER TABLE `Varian`
  MODIFY `id_Varian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_produk`
--
ALTER TABLE `detail_produk`
  ADD CONSTRAINT `detail_produk_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_user`
--
ALTER TABLE `detail_user`
  ADD CONSTRAINT `detail_user_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `data_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `midtrans`
--
ALTER TABLE `midtrans`
  ADD CONSTRAINT `midtrans_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id_orders`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `data_user` (`id_user`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `orders_produk`
--
ALTER TABLE `orders_produk`
  ADD CONSTRAINT `orders_produk_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_produk_ibfk_3` FOREIGN KEY (`id_orders`) REFERENCES `orders` (`id_orders`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parent_kategori_kategori`
--
ALTER TABLE `parent_kategori_kategori`
  ADD CONSTRAINT `parent_kategori_kategori_ibfk_1` FOREIGN KEY (`parent_kategori_id`) REFERENCES `parent_kategori` (`parent_kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parent_kategori_kategori_ibfk_2` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id_cat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD CONSTRAINT `pengiriman_ibfk_1` FOREIGN KEY (`id_orders`) REFERENCES `orders` (`id_orders`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `kategori` (`id_cat`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tags_produk`
--
ALTER TABLE `tags_produk`
  ADD CONSTRAINT `tags_produk_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tags_produk_ibfk_2` FOREIGN KEY (`id_tags`) REFERENCES `tags` (`id_tags`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_token`
--
ALTER TABLE `user_token`
  ADD CONSTRAINT `user_token_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `data_user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
