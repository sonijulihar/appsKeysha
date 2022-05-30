-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 10:09 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_keishajy`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('147e1ef9d0d78527e046d88da62c1e6c', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.35 (KHTML, like Gecko) Chrome/27.0.1444.3 Safari/537.35', 1587354897, 'a:7:{s:9:"user_data";s:0:"";s:5:"masuk";b:1;s:4:"user";s:5:"admin";s:5:"akses";s:1:"1";s:7:"idadmin";s:1:"3";s:4:"nama";s:11:"KEISHA JAYA";s:5:"nofak";s:11:"20200400176";}'),
('31ee95938633e72203f33523fd12afd1', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.35 (KHTML, like Gecko) Chrome/27.0.1444.3 Safari/537.35', 1587348981, 'a:7:{s:9:"user_data";s:0:"";s:5:"masuk";b:1;s:4:"user";s:5:"admin";s:5:"akses";s:1:"1";s:7:"idadmin";s:1:"3";s:4:"nama";s:11:"KEISHA JAYA";s:5:"nofak";s:11:"20200400171";}'),
('6c8b600efea43ef243e6ba955ec12b56', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.35 (KHTML, like Gecko) Chrome/27.0.1444.3 Safari/537.35', 1587363419, '');

-- --------------------------------------------------------

--
-- Table structure for table `mst_memo`
--

CREATE TABLE `mst_memo` (
  `memo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_memo`
--

INSERT INTO `mst_memo` (`memo`) VALUES
(177);

-- --------------------------------------------------------

--
-- Table structure for table `mst_vendor_hdr`
--

CREATE TABLE `mst_vendor_hdr` (
  `kode_vendor` int(11) NOT NULL,
  `nama_vendor` varchar(50) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `tlp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pihutang`
--

CREATE TABLE `pihutang` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `total_hutang` varchar(25) NOT NULL,
  `bayar_hutang` int(11) NOT NULL,
  `sisa` int(11) DEFAULT NULL,
  `tanggal` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pihutang`
--

INSERT INTO `pihutang` (`id`, `nama`, `total_hutang`, `bayar_hutang`, `sisa`, `tanggal`) VALUES
(1, 'Rudi', '3000000', 0, NULL, ''),
(2, 'Jarwo', '10000000', 0, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_id` varchar(15) NOT NULL,
  `barang_nama` varchar(150) DEFAULT NULL,
  `barang_satuan` varchar(30) DEFAULT NULL,
  `barang_harpok` double DEFAULT NULL,
  `barang_harjul` double DEFAULT NULL,
  `barang_harjul_grosir` double DEFAULT NULL,
  `barang_stok` int(11) DEFAULT '0',
  `barang_min_stok` int(11) DEFAULT '0',
  `barang_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `barang_tgl_last_update` datetime DEFAULT NULL,
  `barang_kategori_id` int(11) DEFAULT NULL,
  `barang_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `barang_nama`, `barang_satuan`, `barang_harpok`, `barang_harjul`, `barang_harjul_grosir`, `barang_stok`, `barang_min_stok`, `barang_tgl_input`, `barang_tgl_last_update`, `barang_kategori_id`, `barang_user_id`) VALUES
('BR000001', 'PEPSODENT 190g 48pcs', 'PCS', 368000, 400000, 385000, 0, 0, '2020-04-15 04:07:17', '2020-04-15 12:06:45', 43, 3),
('BR000002', 'SUNLIGHT 755ml 12pcs', 'PCS', 136000, 150000, 147000, 0, 0, '2020-04-15 04:09:09', '2020-04-15 11:24:48', 41, 3),
('BR000003', 'LIFEBOUY 75g 144pcs', 'PCS', 326000, 342000, 338000, 0, 0, '2020-04-15 04:11:37', '2020-04-15 11:27:59', 43, 3),
('BR000004', 'MINYAK RESTO 450ML 24pcs', 'PCS', 127000, 133000, 133000, 0, 0, '2020-04-15 04:51:42', '2020-04-15 11:25:13', 41, 3),
('BR000005', 'MINYAK RESTO 900ML 12pcs', 'PCS', 122000, 128000, 128000, 0, 0, '2020-04-15 04:56:10', '2020-04-20 08:30:06', 41, 3),
('BR000006', 'MINYAK RESTO 1800ML 6pcs', 'PCS', 121000, 127000, 127000, 8, 0, '2020-04-15 04:57:21', '2020-04-15 11:25:59', 41, 3),
('BR000007', 'MINYAK RESTO 1 LITTER 12pcs', 'PCS', 134000, 140000, 140000, 16, 0, '2020-04-15 04:58:54', '2020-04-15 11:27:13', 42, 3),
('BR000008', 'MINYAK RESTO 2 LITTER 6pcs', 'PCS', 133000, 139000, 139000, 0, 0, '2020-04-15 05:00:23', '2020-04-15 11:27:26', 42, 3),
('BR000009', 'MINYAK JUJUR 900ML 12pcs ', 'PCS', 122000, 128000, 128000, 0, 0, '2020-04-15 05:02:12', '2020-04-15 11:26:11', 41, 3),
('BR000010', 'SIRUP ABC ORANGE 552ML 12pcs ', 'PCS', 115000, 125000, 125000, 30, 0, '2020-04-15 05:06:15', '2020-04-20 09:36:26', 41, 3),
('BR000011', 'KECAP BANGO 550ML 12pcs ', 'PCS', 230000, 242000, 242000, 75, 0, '2020-04-15 05:08:09', '2020-04-20 10:30:46', 41, 3),
('BR000012', 'KHONG GUANG 650g ', 'PCS', 42000, 48000, 48000, 20, 0, '2020-04-15 21:42:18', '2020-04-15 11:28:12', 43, 3),
('BR000013', 'PEPSODENT 75g 144pcs', 'PCS', 491000, 510000, 510000, 0, 0, '2020-04-15 10:33:11', '2020-04-17 11:54:35', 43, 3),
('BR000014', 'SUSU BENDERA SACHET', 'Kotak', 130000, 135000, 135000, 0, 0, '2020-04-15 10:42:58', '2020-04-17 11:55:18', 43, 3),
('BR000015', 'MINYAK FORTUNE 2 L 12pcs', 'PCS', 135000, 140000, 140000, 290, 0, '2020-04-17 01:33:26', NULL, 42, 3),
('BR000016', 'GULA OPRA 15kg', 'Kilogram', 243000, 260000, 260000, 19, 0, '2020-04-17 01:46:20', NULL, 40, 3),
('BR000017', 'KECAP BANGO 60ml 48pcs', 'PCS', 113000, 115000, 115000, 0, 0, '2020-04-17 01:47:49', '2020-04-17 11:53:57', 41, 3),
('BR000018', 'PANTENE RENCENG', 'Sachet', 345000, 360000, 360000, 0, 0, '2020-04-17 11:33:32', '2020-04-19 15:22:06', 41, 3),
('BR000019', 'HEAD AND SHOULDER', 'Sachet', 345000, 360000, 360000, 2, 0, '2020-04-17 11:36:04', NULL, 43, 3),
('BR000020', 'DOWNY 500', 'Sachet', 255000, 265000, 265000, 0, 0, '2020-04-17 11:46:34', '2020-04-17 18:48:35', 43, 3),
('BR000021', 'DOWNY 1000', 'Sachet', 250000, 265000, 265000, 5, 0, '2020-04-17 11:48:15', NULL, 43, 3),
('BR000022', 'BAWANG PUTIH', 'Kilogram', 24000, 28000, 28000, 0, 0, '2020-04-17 12:31:39', NULL, 40, 3),
('BR000023', 'BLUE BAND 200g ISI 60', 'Sachet', 343000, 390000, 390000, 50, 0, '2020-04-19 08:03:01', '2020-04-19 21:50:22', 43, 3),
('BR000024', 'SUSU BEAR BRAND ISI 30', 'PCS', 265000, 265000, 265000, 0, 0, '2020-04-19 08:08:19', NULL, 41, 3),
('BR000025', 'PONDS 100g acne solution ISI 24', 'PCS', 383000, 408000, 408000, 27, 0, '2020-04-19 08:15:31', NULL, 43, 3),
('BR000026', 'PANTENE 135ML', 'PCS', 16000, 17000, 17000, 0, 0, '2020-04-19 08:16:29', NULL, 41, 3),
('BR000027', 'GASTBY RENCENG', 'Sachet', 300000, 315000, 315000, 9, 0, '2020-04-19 08:17:19', NULL, 43, 3),
('BR000028', 'SABUN DOVE 80g', 'PCS', 150000, 180000, 180000, 28, 0, '2020-04-19 08:18:32', NULL, 43, 3),
('BR000029', 'GARNIER RENCENG ISI 25', 'Sachet', 800000, 850000, 850000, 9, 0, '2020-04-19 08:19:26', NULL, 43, 3),
('BR000030', 'LIFEBOUY KECIL', 'Sachet', 144000, 144000, 144000, 0, 0, '2020-04-19 14:47:18', NULL, 43, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_beli`
--

CREATE TABLE `tbl_beli` (
  `beli_nofak` varchar(15) DEFAULT NULL,
  `beli_tanggal` date DEFAULT NULL,
  `beli_suplier_id` int(11) DEFAULT NULL,
  `beli_user_id` int(11) DEFAULT NULL,
  `beli_kode` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_beli`
--

INSERT INTO `tbl_beli` (`beli_nofak`, `beli_tanggal`, `beli_suplier_id`, `beli_user_id`, `beli_kode`) VALUES
('FAK1202020', '2020-04-14', 1, 3, 'BL140420000001'),
('20200400005', '2020-04-14', 1, 3, 'BL140420000002'),
('20200400033', '2020-04-14', 1, 3, 'BL140420000003'),
('20200400034', '2020-04-14', 1, 3, 'BL140420000004'),
('20200400035', '2020-04-14', 1, 3, 'BL140420000005'),
('20200400036', '2020-04-14', 1, 3, 'BL140420000006');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_beli`
--

CREATE TABLE `tbl_detail_beli` (
  `d_beli_id` int(11) NOT NULL,
  `d_beli_nofak` varchar(15) DEFAULT NULL,
  `d_beli_barang_id` varchar(15) DEFAULT NULL,
  `d_beli_harga` double DEFAULT NULL,
  `d_beli_jumlah` int(11) DEFAULT NULL,
  `d_beli_total` double DEFAULT NULL,
  `d_beli_kode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_beli`
--

INSERT INTO `tbl_detail_beli` (`d_beli_id`, `d_beli_nofak`, `d_beli_barang_id`, `d_beli_harga`, `d_beli_jumlah`, `d_beli_total`, `d_beli_kode`) VALUES
(1, 'FAK1202020', 'BR000001', 160000, 30, 4800000, 'BL140420000001'),
(2, '20200400005', 'BR000002', 130000, 100, 13000000, 'BL140420000002'),
(3, '20200400005', 'BR000003', 45000, 100, 4500000, 'BL140420000002'),
(4, '20200400005', 'BR000004', 120000, 100, 12000000, 'BL140420000002'),
(5, '20200400005', 'BR000005', 50000, 100, 5000000, 'BL140420000002'),
(6, '20200400033', 'BR000006', 130000, 10, 1300000, 'BL140420000003'),
(7, '20200400033', 'BR000007', 125000, 10, 1250000, 'BL140420000003'),
(8, '20200400034', 'BR000008', 120000, 10, 1200000, 'BL140420000004'),
(9, '20200400034', 'BR000009', 110000, 10, 1100000, 'BL140420000004'),
(10, '20200400034', 'BR000010', 100000, 10, 1000000, 'BL140420000004'),
(11, '20200400035', 'BR000011', 95000, 10, 950000, 'BL140420000005'),
(12, '20200400035', 'BR000012', 95000, 10, 950000, 'BL140420000005'),
(13, '20200400035', 'BR000013', 90000, 10, 900000, 'BL140420000005'),
(14, '20200400036', 'BR000014', 125000, 10, 1250000, 'BL140420000006'),
(15, '20200400036', 'BR000015', 120000, 10, 1200000, 'BL140420000006');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_jual`
--

CREATE TABLE `tbl_detail_jual` (
  `d_jual_id` int(11) NOT NULL,
  `d_jual_nofak` varchar(15) DEFAULT NULL,
  `d_jual_barang_id` varchar(15) DEFAULT NULL,
  `d_jual_barang_nama` varchar(150) DEFAULT NULL,
  `d_jual_barang_satuan` varchar(30) DEFAULT NULL,
  `d_jual_barang_harpok` double DEFAULT NULL,
  `d_jual_barang_harjul` double DEFAULT NULL,
  `d_jual_qty` int(11) DEFAULT NULL,
  `d_jual_diskon` double DEFAULT NULL,
  `d_jual_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_jual`
--

INSERT INTO `tbl_detail_jual` (`d_jual_id`, `d_jual_nofak`, `d_jual_barang_id`, `d_jual_barang_nama`, `d_jual_barang_satuan`, `d_jual_barang_harpok`, `d_jual_barang_harjul`, `d_jual_qty`, `d_jual_diskon`, `d_jual_total`) VALUES
(76, '20200400052', 'BR000012', 'KHONG GUANG 650g ', 'PCS', 42000, 48000, 50, 1000, 2350000),
(77, '20200400052', 'BR000010', 'SIRUP ABC ORANGE 552ML 12pcs ', 'PCS', 115000, 125000, 5, 2000, 615000),
(78, '20200400052', 'BR000007', 'MINYAK RESTO 1 LITTER 12pcs', 'PCS', 134000, 140000, 5, 2000, 690000),
(79, '20200400055', 'BR000002', 'SUNLIGHT 755ml 12pcs', 'PCS', 136000, 150000, 50, 7000, 7150000),
(80, '20200400055', 'BR000001', 'PEPSODENT 190g 48pcs', 'PCS', 368000, 400000, 5, 25000, 1875000),
(81, '20200400055', 'BR000003', 'LIFEBOUY 75g 144pcs', 'PCS', 326000, 342000, 10, 9000, 3330000),
(82, '20200400058', 'BR000002', 'SUNLIGHT 755ml 12pcs', 'PCS', 136000, 150000, 10, 7000, 1430000),
(83, '20200400058', 'BR000004', 'MINYAK RESTO 450ML 24pcs', 'PCS', 127000, 133000, 8, 4000, 1032000),
(84, '20200400058', 'BR000003', 'LIFEBOUY 75g 144pcs', 'PCS', 326000, 342000, 10, 9000, 3330000),
(85, '20200400058', 'BR000001', 'PEPSODENT 190g 48pcs', 'PCS', 368000, 400000, 10, 22000, 3780000),
(86, '20200400058', 'BR000005', 'MINYAK RESTO 900ML 12pcs', 'PCS', 122000, 128000, 15, 3000, 1875000),
(87, '20200400063', 'BR000007', 'MINYAK RESTO 1 LITTER 12pcs', 'PCS', 134000, 140000, 5, 4000, 680000),
(88, '20200400064', 'BR000005', 'MINYAK RESTO 900ML 12pcs', 'PCS', 122000, 128000, 20, 3000, 2500000),
(89, '20200400064', 'BR000006', 'MINYAK RESTO 1800ML 6pcs', 'PCS', 121000, 127000, 10, 3000, 1240000),
(90, '20200400064', 'BR000010', 'SIRUP ABC ORANGE 552ML 12pcs ', 'PCS', 115000, 125000, 10, 7000, 1180000),
(91, '20200400064', 'BR000011', 'KECAP BANGO 550ML 12pcs ', 'PCS', 230000, 242000, 15, 7000, 3525000),
(92, '20200400068', 'BR000002', 'SUNLIGHT 755ml 12pcs', 'PCS', 136000, 150000, 50, 7000, 7150000),
(93, '20200400068', 'BR000010', 'SIRUP ABC ORANGE 552ML 12pcs ', 'PCS', 115000, 125000, 50, 7000, 5900000),
(94, '20200400068', 'BR000003', 'LIFEBOUY 75g 144pcs', 'PCS', 326000, 342000, 10, 9000, 3330000),
(95, '20200400068', 'BR000001', 'PEPSODENT 190g 48pcs', 'PCS', 368000, 400000, 25, 22000, 9450000),
(96, '20200400068', 'BR000013', 'pepsoden 75g 144pcs', 'PCS', 491000, 510000, 25, 10000, 12500000),
(97, '20200400073', 'BR000014', 'susu bendera sachet', 'Kotak', 130000, 135000, 95, 4000, 12445000),
(98, '20200400074', 'BR000003', 'LIFEBOUY 75g 144pcs', 'PCS', 326000, 342000, 10, 9000, 3330000),
(99, '20200400074', 'BR000002', 'SUNLIGHT 755ml 12pcs', 'PCS', 136000, 150000, 50, 7000, 7150000),
(100, '20200400074', 'BR000001', 'PEPSODENT 190g 48pcs', 'PCS', 368000, 400000, 5, 22000, 1890000),
(101, '20200400077', 'BR000013', 'pepsoden 75g 144pcs', 'PCS', 491000, 510000, 10, 10000, 5000000),
(102, '20200400077', 'BR000002', 'SUNLIGHT 755ml 12pcs', 'PCS', 136000, 150000, 10, 7000, 1430000),
(103, '20200400077', 'BR000003', 'LIFEBOUY 75g 144pcs', 'PCS', 326000, 342000, 5, 22000, 1600000),
(104, '20200400077', 'BR000005', 'MINYAK RESTO 900ML 12pcs', 'PCS', 122000, 128000, 15, 3000, 1875000),
(105, '20200400081', 'BR000002', 'SUNLIGHT 755ml 12pcs', 'PCS', 136000, 150000, 50, 14000, 6800000),
(106, '20200400082', 'BR000016', 'GULA OPRA 15kg', 'Kilogram', 243000, 260000, 7, 8000, 1764000),
(107, '20200400083', 'BR000004', 'MINYAK RESTO 450ML 24pcs', 'PCS', 127000, 133000, 10, 4000, 1290000),
(108, '20200400083', 'BR000005', 'MINYAK RESTO 900ML 12pcs', 'PCS', 122000, 128000, 15, 3000, 1875000),
(109, '20200400083', 'BR000016', 'GULA OPRA 15kg', 'Kilogram', 243000, 260000, 5, 8000, 1260000),
(110, '20200400083', 'BR000003', 'LIFEBOUY 75g 144pcs', 'PCS', 326000, 342000, 5, 9000, 1665000),
(111, '20200400083', 'BR000002', 'SUNLIGHT 755ml 12pcs', 'PCS', 136000, 150000, 10, 7000, 1430000),
(112, '20200400083', 'BR000001', 'PEPSODENT 190g 48pcs', 'PCS', 368000, 400000, 5, 22000, 1890000),
(113, '20200400083', 'BR000011', 'KECAP BANGO 550ML 12pcs ', 'PCS', 230000, 242000, 20, 7000, 4700000),
(114, '20200400090', 'BR000004', 'MINYAK RESTO 450ML 24pcs', 'PCS', 127000, 133000, 10, 4000, 1290000),
(115, '20200400090', 'BR000005', 'MINYAK RESTO 900ML 12pcs', 'PCS', 122000, 128000, 15, 3000, 1875000),
(116, '20200400090', 'BR000016', 'GULA OPRA 15kg', 'Kilogram', 243000, 260000, 5, 8000, 1260000),
(117, '20200400090', 'BR000003', 'LIFEBOUY 75g 144pcs', 'PCS', 326000, 342000, 5, 9000, 1665000),
(118, '20200400090', 'BR000002', 'SUNLIGHT 755ml 12pcs', 'PCS', 136000, 150000, 10, 7000, 1430000),
(119, '20200400090', 'BR000001', 'PEPSODENT 190g 48pcs', 'PCS', 368000, 400000, 5, 22000, 1890000),
(120, '20200400090', 'BR000011', 'KECAP BANGO 550ML 12pcs ', 'PCS', 230000, 242000, 20, 6000, 4720000),
(121, '20200400097', 'BR000005', 'MINYAK RESTO 900ML 12pcs', 'PCS', 122000, 128000, 20, 3000, 2500000),
(122, '20200400097', 'BR000006', 'MINYAK RESTO 1800ML 6pcs', 'PCS', 121000, 127000, 20, 3000, 2480000),
(123, '20200400097', 'BR000007', 'MINYAK RESTO 1 LITTER 12pcs', 'PCS', 134000, 140000, 10, 4000, 1360000),
(124, '20200400097', 'BR000008', 'MINYAK RESTO 2 LITTER 6pcs', 'PCS', 133000, 139000, 10, 4000, 1350000),
(125, '20200400097', 'BR000015', 'MINYAK FORTUNE 2 L 12pcs', 'PCS', 135000, 140000, 10, 2000, 1380000),
(126, '20200400097', 'BR000004', 'MINYAK RESTO 450ML 24pcs', 'PCS', 127000, 133000, 10, 4000, 1290000),
(127, '20200400097', 'BR000016', 'GULA OPRA 15kg', 'Kilogram', 243000, 260000, 10, 8000, 2520000),
(128, '20200400097', 'BR000013', 'PEPSODENT 75g 144pcs', 'PCS', 491000, 510000, 5, 10000, 2500000),
(129, '20200400097', 'BR000010', 'SIRUP ABC ORANGE 552ML 12pcs ', 'PCS', 115000, 125000, 15, 7000, 1770000),
(130, '20200400097', 'BR000017', 'KECAP BANGO 60ml 48pcs', 'PCS', 113000, 115000, 2, 2000, 226000),
(131, '20200400097', 'BR000011', 'KECAP BANGO 550ML 12pcs ', 'PCS', 230000, 242000, 5, 6000, 1180000),
(132, '20200400108', 'BR000011', 'KECAP BANGO 550ML 12pcs ', 'PCS', 230000, 242000, 20, 6000, 4720000),
(133, '20200400108', 'BR000016', 'GULA OPRA 15kg', 'Kilogram', 243000, 260000, 15, 8000, 3780000),
(134, '20200400108', 'BR000005', 'MINYAK RESTO 900ML 12pcs', 'PCS', 122000, 128000, 10, 3000, 1250000),
(135, '20200400108', 'BR000013', 'PEPSODENT 75g 144pcs', 'PCS', 491000, 510000, 5, 10000, 2500000),
(136, '20200400112', 'BR000013', 'PEPSODENT 75g 144pcs', 'PCS', 491000, 510000, 20, 10000, 10000000),
(137, '20200400112', 'BR000007', 'MINYAK RESTO 1 LITTER 12pcs', 'PCS', 134000, 140000, 10, 5000, 1350000),
(138, '20200400112', 'BR000012', 'KHONG GUANG 650g ', 'PCS', 42000, 48000, 30, 4000, 1320000),
(139, '20200400115', 'BR000019', 'HEAD AND SHOULDER', 'Sachet', 345000, 360000, 3, 10000, 1050000),
(140, '20200400115', 'BR000020', 'DOWNY 500', 'Sachet', 255000, 265000, 7, 5000, 1820000),
(141, '20200400115', 'BR000018', 'PANTENE RENCENG', 'Sachet', 345000, 360000, 15, 10000, 5250000),
(142, '20200400115', 'BR000007', 'MINYAK RESTO 1 LITTER 12pcs', 'PCS', 134000, 140000, 50, 6000, 6700000),
(143, '20200400115', 'BR000008', 'MINYAK RESTO 2 LITTER 6pcs', 'PCS', 133000, 139000, 50, 6000, 6650000),
(144, '20200400120', 'BR000011', 'KECAP BANGO 550ML 12pcs ', 'PCS', 230000, 242000, 30, 5000, 7110000),
(145, '20200400121', 'BR000022', 'BAWANG PUTIH', 'Kilogram', 24000, 28000, 100, 0, 2800000),
(146, '20200400122', 'BR000011', 'KECAP BANGO 550ML 12pcs ', 'PCS', 230000, 242000, 20, 6000, 4720000),
(147, '20200400122', 'BR000016', 'GULA OPRA 15kg', 'Kilogram', 243000, 260000, 29, 8000, 7308000),
(148, '20200400124', 'BR000016', 'GULA OPRA 15kg', 'Kilogram', 243000, 260000, 60, 10000, 15000000),
(149, '20200400125', 'BR000005', 'MINYAK RESTO 900ML 12pcs', 'PCS', 122000, 128000, 50, 3000, 6250000),
(150, '20200400126', 'BR000010', 'SIRUP ABC ORANGE 552ML 12pcs ', 'PCS', 115000, 125000, 15, 2000, 1845000),
(151, '20200400127', 'BR000004', 'MINYAK RESTO 450ML 24pcs', 'PCS', 127000, 133000, 10, 4000, 1290000),
(152, '20200400127', 'BR000005', 'MINYAK RESTO 900ML 12pcs', 'PCS', 122000, 128000, 10, 3000, 1250000),
(153, '20200400129', 'BR000006', 'MINYAK RESTO 1800ML 6pcs', 'PCS', 121000, 127000, 20, 3000, 2480000),
(154, '20200400129', 'BR000005', 'MINYAK RESTO 900ML 12pcs', 'PCS', 122000, 128000, 20, 3000, 2500000),
(155, '20200400129', 'BR000010', 'SIRUP ABC ORANGE 552ML 12pcs ', 'PCS', 115000, 125000, 20, 7000, 2360000),
(156, '20200400129', 'BR000021', 'DOWNY 1000', 'Sachet', 250000, 265000, 5, 0, 1325000),
(157, '20200400129', 'BR000018', 'PANTENE RENCENG', 'Sachet', 345000, 360000, 5, 2000, 1790000),
(158, '20200400129', 'BR000011', 'KECAP BANGO 550ML 12pcs ', 'PCS', 230000, 242000, 5, 6000, 1180000),
(159, '20200400129', 'BR000013', 'PEPSODENT 75g 144pcs', 'PCS', 491000, 510000, 5, 10000, 2500000),
(160, '20200400129', 'BR000002', 'SUNLIGHT 755ml 12pcs', 'PCS', 136000, 150000, 5, 7000, 715000),
(161, '20200400137', 'BR000013', 'PEPSODENT 75g 144pcs', 'PCS', 491000, 510000, 5, 10000, 2500000),
(162, '20200400137', 'BR000011', 'KECAP BANGO 550ML 12pcs ', 'PCS', 230000, 242000, 5, 6000, 1180000),
(163, '20200400137', 'BR000021', 'DOWNY 1000', 'Sachet', 250000, 265000, 5, 5000, 1300000),
(164, '20200400137', 'BR000024', 'SUSU BEAR BRAND ISI 30', 'PCS', 265000, 265000, 10, 0, 2650000),
(165, '20200400137', 'BR000023', 'BLUE BAND 200g ISI 60', 'Sachet', 343000, 370000, 50, 10000, 18000000),
(166, '20200400137', 'BR000016', 'GULA OPRA 15kg', 'Kilogram', 243000, 260000, 5, 10000, 1250000),
(167, '20200400143', 'BR000018', 'PANTENE RENCENG', 'Sachet', 345000, 360000, 5, 2000, 1790000),
(168, '20200400143', 'BR000011', 'KECAP BANGO 550ML 12pcs ', 'PCS', 230000, 242000, 10, 6000, 2360000),
(169, '20200400143', 'BR000010', 'SIRUP ABC ORANGE 552ML 12pcs ', 'PCS', 115000, 125000, 15, 7000, 1770000),
(170, '20200400143', 'BR000013', 'PEPSODENT 75g 144pcs', 'PCS', 491000, 510000, 10, 10000, 5000000),
(171, '20200400143', 'BR000002', 'SUNLIGHT 755ml 12pcs', 'PCS', 136000, 150000, 5, 7000, 715000),
(172, '20200400143', 'BR000004', 'MINYAK RESTO 450ML 24pcs', 'PCS', 127000, 133000, 2, 4000, 258000),
(173, '20200400143', 'BR000027', 'GASTBY RENCENG', 'Sachet', 300000, 315000, 1, 0, 315000),
(174, '20200400143', 'BR000026', 'PANTENE 135ML', 'PCS', 16000, 17000, 24, 0, 408000),
(175, '20200400143', 'BR000028', 'SABUN DOVE 80g', 'PCS', 150000, 180000, 2, 0, 360000),
(176, '20200400143', 'BR000025', 'PONDS 100g acne solution ISI 24', 'PCS', 383000, 408000, 3, 0, 1224000),
(177, '20200400143', 'BR000029', 'GARNIER RENCENG ISI 25', 'Sachet', 800000, 850000, 1, 0, 850000),
(178, '20200400154', 'BR000023', 'BLUE BAND 200g ISI 60', 'Sachet', 343000, 370000, 10, 10000, 3600000),
(179, '20200400155', 'BR000013', 'PEPSODENT 75g 144pcs', 'PCS', 491000, 510000, 5, 10000, 2500000),
(180, '20200400155', 'BR000023', 'BLUE BAND 200g ISI 60', 'Sachet', 343000, 390000, 30, 30000, 10800000),
(181, '20200400155', 'BR000030', 'LIFEBOUY KECIL', 'Sachet', 144000, 144000, 1, 0, 144000),
(182, '20200400158', 'BR000023', 'BLUE BAND 200g ISI 60', 'Sachet', 343000, 390000, 10, 30000, 3600000),
(183, '20200400158', 'BR000013', 'PEPSODENT 75g 144pcs', 'PCS', 491000, 510000, 5, 10000, 2500000),
(184, '20200400158', 'BR000002', 'SUNLIGHT 755ml 12pcs', 'PCS', 136000, 150000, 5, 7000, 715000),
(185, '20200400158', 'BR000024', 'SUSU BEAR BRAND ISI 30', 'PCS', 265000, 265000, 29, 0, 7685000),
(186, '20200400158', 'BR000010', 'SIRUP ABC ORANGE 552ML 12pcs ', 'PCS', 115000, 125000, 5, 7000, 590000),
(187, '20200400163', 'BR000005', 'MINYAK RESTO 900ML 12pcs', 'PCS', 122000, 128000, 50, 3000, 6250000),
(188, '20200400164', 'BR000016', 'GULA OPRA 15kg', 'Kilogram', 243000, 260000, 25, 8000, 6300000),
(189, '20200400165', 'BR000013', 'PEPSODENT 75g 144pcs', 'PCS', 491000, 510000, 5, 10000, 2500000),
(190, '20200400165', 'BR000002', 'SUNLIGHT 755ml 12pcs', 'PCS', 136000, 150000, 5, 7000, 715000),
(191, '20200400165', 'BR000010', 'SIRUP ABC ORANGE 552ML 12pcs ', 'PCS', 115000, 125000, 20, 7000, 2360000),
(192, '20200400165', 'BR000021', 'DOWNY 1000', 'Sachet', 250000, 265000, 5, 5000, 1300000),
(193, '20200400165', 'BR000007', 'MINYAK RESTO 1 LITTER 12pcs', 'PCS', 134000, 140000, 10, 5000, 1350000),
(194, '20200400165', 'BR000016', 'GULA OPRA 15kg', 'Kilogram', 243000, 260000, 5, 8000, 1260000),
(195, '20200400171', 'BR000011', 'KECAP BANGO 550ML 12pcs ', 'PCS', 230000, 242000, 50, 12000, 11500000),
(196, '20200400171', 'BR000023', 'BLUE BAND 200g ISI 60', 'Sachet', 343000, 390000, 50, 47000, 17150000),
(197, '20200400173', 'BR000011', 'KECAP BANGO 550ML 12pcs ', 'PCS', 230000, 242000, 80, 5500, 18920000),
(198, '20200400173', 'BR000023', 'BLUE BAND 200g ISI 60', 'Sachet', 343000, 390000, 40, 30000, 14400000),
(199, '20200400175', 'BR000023', 'BLUE BAND 200g ISI 60', 'Sachet', 343000, 390000, 10, 30000, 3600000),
(200, '20200400176', 'BR000010', 'SIRUP ABC ORANGE 552ML 12pcs ', 'PCS', 115000, 125000, 20, 5000, 2400000),
(201, '20200400176', 'BR000011', 'KECAP BANGO 550ML 12pcs ', 'PCS', 230000, 242000, 10, 4000, 2380000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jual`
--

CREATE TABLE `tbl_jual` (
  `jual_nofak` varchar(15) NOT NULL,
  `jual_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `jual_total` double DEFAULT NULL,
  `jual_jml_uang` double DEFAULT NULL,
  `jual_kembalian` double DEFAULT NULL,
  `jual_user_id` int(11) DEFAULT NULL,
  `jual_keterangan` varchar(20) DEFAULT NULL,
  `pembeli` varchar(32) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jual`
--

INSERT INTO `tbl_jual` (`jual_nofak`, `jual_tanggal`, `jual_total`, `jual_jml_uang`, `jual_kembalian`, `jual_user_id`, `jual_keterangan`, `pembeli`, `alamat`) VALUES
('20200400052', '2020-04-15 21:45:25', 3655000, 0, -3655000, 3, 'eceran', 'PAK AJO ', 'PERMATA SAKINAH '),
('20200400055', '2020-04-15 21:59:04', 12355000, 0, -12355000, 3, 'eceran', 'TRINITAS / Ko Jaya ', 'PURWAKARTA'),
('20200400058', '2020-04-15 22:19:42', 11447000, 0, -11447000, 3, 'eceran', 'PAK PAIJO ', 'BENTENG,PURWAKARTA '),
('20200400063', '2020-04-15 22:22:08', 680000, 0, -680000, 3, 'eceran', 'PAK PAIJO ', 'BENTENG,PURWAKARTA '),
('20200400064', '2020-04-15 22:31:13', 8445000, 0, -8445000, 3, 'eceran', 'PAK ISRO ', 'PURWAKARTA'),
('20200400068', '2020-04-15 10:44:19', 38330000, 0, -38330000, 3, 'eceran', 'PAK RUDI ', 'SUBANG '),
('20200400073', '2020-04-15 10:49:24', 12445000, 0, -12445000, 3, 'eceran', 'PAK RUDI ', 'SUBANG '),
('20200400074', '2020-04-15 11:10:59', 12370000, 0, -12370000, 3, 'eceran', 'TRINITAS / Ko Jaya ', 'PURWAKARTA'),
('20200400077', '2020-04-15 11:33:47', 9905000, 0, -9905000, 3, 'eceran', 'PAK PAIJO ', 'BENTENG,PURWAKARTA '),
('20200400081', '2020-04-15 14:29:44', 6800000, 0, -6800000, 3, 'eceran', 'WIJAYA TELOR', 'PS REBO PWK'),
('20200400082', '2020-04-17 01:53:09', 1764000, 0, -1764000, 3, 'eceran', 'BU LENI', 'PERUM PERMATA SAKINAH PWK'),
('20200400083', '2020-04-17 02:05:36', 14110000, 0, -14110000, 3, 'eceran', 'PAK PAIJO ', 'BENTENG,PURWAKARTA '),
('20200400090', '2020-04-17 04:52:59', 14130000, 0, -14130000, 3, 'eceran', 'PAK PAIJO ', 'BENTENG,PURWAKARTA '),
('20200400097', '2020-04-17 05:05:34', 18556000, 0, -18556000, 3, 'eceran', 'PAK YOGI', 'PURWAKARTA'),
('20200400108', '2020-04-17 05:13:24', 12250000, 0, -12250000, 3, 'eceran', 'PAK ISRO ', 'PURWAKARTA'),
('20200400112', '2020-04-17 07:10:11', 12670000, 0, -12670000, 3, 'eceran', 'KARYA LAKSANA / BU HJ ENUNG', 'TARINGGUL PURWAKARTA'),
('20200400115', '2020-04-17 11:53:04', 21470000, 0, -21470000, 3, 'eceran', 'PAKN HARIS', 'PS REBO PWK'),
('20200400120', '2020-04-17 11:54:48', 7110000, 0, -7110000, 3, 'eceran', 'BINTANG KENCANA', 'PS INDUK'),
('20200400121', '2020-04-17 12:35:32', 2800000, 0, -2800000, 3, 'eceran', 'SWITA JAYA', 'MUNJUL PURWAKARTA'),
('20200400122', '2020-04-17 14:56:09', 12028000, 0, -12028000, 3, 'eceran', 'PAK PAIJO ', 'BENTENG,PURWAKARTA '),
('20200400124', '2020-04-18 03:06:54', 15000000, 0, -15000000, 3, 'eceran', 'BU HJ EHA', 'CIKAMPEK'),
('20200400125', '2020-04-18 05:32:34', 6250000, 0, -6250000, 3, 'eceran', 'TK PURNAMA', 'CILAMAYA'),
('20200400126', '2020-04-18 05:37:27', 1845000, 0, -1845000, 3, 'eceran', 'TK MANDIRI', 'CILAMAYA'),
('20200400127', '2020-04-18 05:39:39', 2540000, 0, -2540000, 3, 'eceran', 'PAK PAIJO ', 'BENTENG,PURWAKARTA '),
('20200400129', '2020-04-18 06:52:03', 14850000, 0, -14850000, 3, 'eceran', 'PAK YOGI', 'PURWAKARTA'),
('20200400137', '2020-04-19 08:10:15', 26880000, 0, -26880000, 3, 'eceran', 'PAK PAIJO ', 'BENTENG,PURWAKARTA '),
('20200400143', '2020-04-19 08:31:17', 15050000, 0, -15050000, 3, 'eceran', 'PAK YOGI', 'PURWAKARTA'),
('20200400154', '2020-04-19 08:37:13', 3600000, 0, -3600000, 3, 'eceran', 'PAK YOGI', 'PURWAKARTA'),
('20200400155', '2020-04-19 14:51:38', 13444000, 0, -13444000, 3, 'eceran', 'PAK ISRO ', 'PURWAKARTA'),
('20200400158', '2020-04-19 14:56:37', 15090000, 0, -15090000, 3, 'eceran', 'PAK PAIJO ', 'BENTENG,PURWAKARTA '),
('20200400163', '2020-04-20 01:33:19', 6250000, 0, -6250000, 3, 'eceran', 'SWITA JAYA', 'MUNJUL PURWAKARTA'),
('20200400164', '2020-04-20 01:43:16', 6300000, 0, -6300000, 3, 'eceran', 'PAK ISRO ', 'PURWAKARTA'),
('20200400165', '2020-04-20 01:53:36', 9485000, 0, -9485000, 3, 'eceran', 'PAK YOGI', 'PURWAKARTA'),
('20200400171', '2020-04-20 01:57:24', 28650000, 0, -28650000, 3, 'eceran', 'WIJAYA TELOR', 'PS REBO PWK'),
('20200400173', '2020-04-20 02:45:02', 33320000, 0, -33320000, 3, 'eceran', 'PAK RUDI', 'DAWUAN SUBANG'),
('20200400175', '2020-04-20 03:20:35', 3600000, 0, -3600000, 3, 'eceran', 'TK BUDI CIHANJUANG', 'CIPENDEY SUBANG'),
('20200400176', '2020-04-20 03:31:40', 4780000, 0, -4780000, 3, 'eceran', 'SWITA JAYA', 'MUNJUL PURWAKARTA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`) VALUES
(40, 'kg'),
(41, 'ml'),
(42, 'litter '),
(43, 'gram');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_nama` varchar(32) NOT NULL,
  `pelanggan_alamat` varchar(50) NOT NULL,
  `pelanggan_notelp` varchar(20) NOT NULL,
  `hutang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`pelanggan_id`, `pelanggan_nama`, `pelanggan_alamat`, `pelanggan_notelp`, `hutang`) VALUES
(12, 'TRINITAS / Ko Jaya ', 'PURWAKARTA', '08179012609', NULL),
(13, 'PAK PAIJO ', 'BENTENG,PURWAKARTA ', '087778603083', 41970000),
(14, 'PAK ISRO ', 'PURWAKARTA', '082124132284', 29744000),
(17, 'WIJAYA TELOR', 'PS REBO PWK', '028412366548', NULL),
(18, 'BU LENI', 'PERUM PERMATA SAKINAH PWK', '028412366548', NULL),
(20, 'TOKO GAS JTL', 'PURWAKARTA', '08122121222', NULL),
(21, 'KARYA LAKSANA / BU HJ ENUNG', 'TARINGGUL PURWAKARTA', '028412366548', NULL),
(22, 'PAKN HARIS', 'PS REBO PWK', '028412366548', NULL),
(23, 'BINTANG KENCANA', 'PS INDUK', '028412366548', 4710000),
(24, 'SWITA JAYA', 'MUNJUL PURWAKARTA', '028412366548', NULL),
(25, 'BU HJ EHA', 'CIKAMPEK', '08125469875', 10000000),
(26, 'TK MANDIRI', 'CILAMAYA', '028412366548', NULL),
(27, 'TK PURNAMA', 'CILAMAYA', '028412366548', NULL),
(28, 'PAK RUDI', 'DAWUAN SUBANG', '028412366548', 61253000),
(29, 'TK BUDI CIHANJUANG', 'CIPENDEY SUBANG', '08125469875', 3600000),
(30, 'PAK YOGI', 'PURWAKARTA', '028412366548', 24491000),
(31, 'PAK WANDA', 'PURWAKARTA', '028412366548', 6000000),
(32, 'PAK AIF', 'CILALAWI PURWAKARTA', '028412366548', 840000),
(33, 'PAK AJI', 'SUKATANI PURWAKRTA', '028412366548', 1335000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retur`
--

CREATE TABLE `tbl_retur` (
  `retur_id` int(11) NOT NULL,
  `retur_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `retur_barang_id` varchar(15) DEFAULT NULL,
  `retur_barang_nama` varchar(150) DEFAULT NULL,
  `retur_barang_satuan` varchar(30) DEFAULT NULL,
  `retur_harjul` double DEFAULT NULL,
  `retur_qty` int(11) DEFAULT NULL,
  `retur_subtotal` double DEFAULT NULL,
  `retur_keterangan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retur_barang`
--

CREATE TABLE `tbl_retur_barang` (
  `barang_id` int(11) NOT NULL,
  `no_faktur` varchar(32) NOT NULL,
  `jml` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `tanggal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_retur_barang`
--

INSERT INTO `tbl_retur_barang` (`barang_id`, `no_faktur`, `jml`, `keterangan`, `tanggal`) VALUES
(1, '20200400005', 3, 'barang rusak', '2020-04-14'),
(2, '20200400020', 10, 'batal order ', '2020-04-14'),
(3, '20200400020', 3, 'batal order ', '2020-04-14'),
(4, '20200400020', 7, 'batal order ', '2020-04-14'),
(5, '20200400021', 3, 'batal order ', '2020-04-15'),
(6, '20200400040', 15, 'batal order ', '2020-04-15'),
(7, '20200400040', 50, 'batal order ', '2020-04-15'),
(8, '20200400040', 10, 'batal order ', '2020-04-15'),
(9, '20200400040', 15, 'batal order ', '2020-04-15'),
(10, '20200400040', 50, 'batal order ', '2020-04-15'),
(11, '20200400040', 10, 'batal order ', '2020-04-15'),
(12, '20200400046', 15, 'batal order ', '2020-04-15'),
(13, '20200400046', 50, 'batal order ', '2020-04-15'),
(14, '20200400046', 10, 'batal order ', '2020-04-15'),
(15, '20200400049', 50, 'batal order ', '2020-04-16'),
(16, '20200400049', 10, 'batal order ', '2020-04-16'),
(17, '20200400049', 10, 'batal order ', '2020-04-16'),
(18, '20200400052', 10, 'batal order ', '2020-04-16'),
(19, '20200400052', 10, 'batal order ', '2020-04-16'),
(20, '20200400052', 10, '', '2020-04-16'),
(21, '20200400052', 10, '', '2020-04-16'),
(22, '20200400052', 1, 'batal order ', '2020-04-16'),
(23, '20200400052', 10, 'batal order ', '2020-04-16'),
(24, '20200400052', 1, 'batal order ', '2020-04-16'),
(25, '20200400058', 10, 'batal order ', '2020-04-16'),
(26, '20200400058', 8, 'batal order ', '2020-04-16'),
(27, '20200400058', 10, 'batal order ', '2020-04-16'),
(28, '20200400058', 10, 'batal order ', '2020-04-16'),
(29, '20200400058', 15, 'batal order ', '2020-04-16'),
(30, '20200400058', 5, 'batal order ', '2020-04-16'),
(31, '20200400083', 10, 'faktur tidak keluar', '2020-04-17'),
(32, '20200400083', 15, 'faktur tidak keluar', '2020-04-17'),
(33, '20200400083', 5, 'faktur tidak keluar', '2020-04-17'),
(34, '20200400083', 10, 'faktur tidak keluar', '2020-04-17'),
(35, '20200400083', 5, 'faktur tidak keluar', '2020-04-17'),
(36, '20200400083', 20, 'faktur tidak keluar', '2020-04-17'),
(37, '20200400083', 5, 'faktur tidak keluar', '2020-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suplier`
--

CREATE TABLE `tbl_suplier` (
  `suplier_id` int(11) NOT NULL,
  `suplier_nama` varchar(35) DEFAULT NULL,
  `suplier_alamat` varchar(60) DEFAULT NULL,
  `suplier_notelp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_suplier`
--

INSERT INTO `tbl_suplier` (`suplier_id`, `suplier_nama`, `suplier_alamat`, `suplier_notelp`) VALUES
(3, 'carrefour', 'karawang ', '08122121222');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(35) DEFAULT NULL,
  `user_username` varchar(30) DEFAULT NULL,
  `user_password` varchar(35) DEFAULT NULL,
  `user_level` varchar(2) DEFAULT NULL,
  `user_status` varchar(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_level`, `user_status`) VALUES
(3, 'KEISHA JAYA', 'admin', 'f5f638331c43a61c856a5ca8ff3d5042', '1', '1'),
(4, 'Fery', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `pihutang`
--
ALTER TABLE `pihutang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indexes for table `tbl_beli`
--
ALTER TABLE `tbl_beli`
  ADD PRIMARY KEY (`beli_kode`);

--
-- Indexes for table `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  ADD PRIMARY KEY (`d_beli_id`);

--
-- Indexes for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD PRIMARY KEY (`d_jual_id`);

--
-- Indexes for table `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD PRIMARY KEY (`jual_nofak`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indexes for table `tbl_retur`
--
ALTER TABLE `tbl_retur`
  ADD PRIMARY KEY (`retur_id`);

--
-- Indexes for table `tbl_retur_barang`
--
ALTER TABLE `tbl_retur_barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indexes for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pihutang`
--
ALTER TABLE `pihutang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  MODIFY `d_beli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  MODIFY `d_jual_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `tbl_retur`
--
ALTER TABLE `tbl_retur`
  MODIFY `retur_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_retur_barang`
--
ALTER TABLE `tbl_retur_barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
