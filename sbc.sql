-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Bulan Mei 2025 pada 15.20
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spkpromosi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3'),
(15, 'luthfi', 'luthfi@gmail.com', 'd5cd72b7bcbf56bc503904f1ac7d9bc2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `kode_barang` varchar(128) NOT NULL,
  `modal` varchar(128) NOT NULL,
  `bobot_modal` int(11) NOT NULL,
  `penjualan` varchar(128) NOT NULL,
  `bobot_penjualan` int(11) NOT NULL,
  `waktu` varchar(128) NOT NULL,
  `bobot_waktu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `kode_barang`, `modal`, `bobot_modal`, `penjualan`, `bobot_penjualan`, `waktu`, `bobot_waktu`) VALUES
(216, '5F W/F MASPION MWF-41S 16“', '912239', '345000', 5, '398000', 1, '16', 3),
(217, '5DISP DESK MASPION MD-10 PAS', '912309', '288000', 5, '305000', 1, '7', 4),
(218, '5DISP DESK MASPION MD-19 PAS', '912312 ', '478000', 5, '515000', 1, '3', 5),
(219, '5M COM MASPION 1892BS 1 8LT', '914017 ', '298000', 5, '328000', 1, '22', 2),
(220, '5KG MASPION LST-S300 LISTRIK', '911822 ', '98000', 5, '155000', 1, '31', 1),
(221, '5F P/SF MASPION PW-602 24“', '912109 ', '1376000', 4, '1498000', 1, '19', 2),
(222, '5O OVEN MASPION MOT-2002', '919544 ', '615000', 5, '695000', 1, '28', 1),
(223, 'TOASTER MASPION MT-206', '919920', '225000', 5, '245000', 1, '31', 1),
(224, '5F P/WF MASPION PW-1802RC 18“', '9121034', '674000', 5, '698000', 1, '31', 1),
(225, '5MC MESIN CUCI MASPION 7kg MMC-9973', '912456', '1105000', 4, '1299000', 1, '7', 4),
(226, '5MC MESIN CUCI MASPION 12kg MMC-1291', '912543', '2005000', 3, '2229000', 2, '15', 3),
(227, '5F P/BF MASPION PW-1808S', '9121080', '498000', 5, '538000', 1, '19', 2),
(228, '5F P/F MASPION PW 500S', '9121097', '730000', 5, '765000', 1, '12', 4),
(229, '5F E/F MASPION CEF-20 8“ ', '912124', '216000', 5, '235000', 1, '26', 1),
(230, '5BL MASPION 1273 PL 3IN1', '912635', '298000', 5, '328000', 1, '16', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perhitungan_pm`
--

CREATE TABLE `perhitungan_pm` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `kode_barang` varchar(128) NOT NULL,
  `modal` varchar(128) NOT NULL,
  `bobot_modal` int(11) NOT NULL,
  `penjualan` varchar(128) NOT NULL,
  `bobot_penjualan` int(11) NOT NULL,
  `waktu` varchar(128) NOT NULL,
  `bobot_waktu` int(11) NOT NULL,
  `GAP_M` int(11) NOT NULL,
  `GAP_P` int(11) NOT NULL,
  `GAP_W` int(11) NOT NULL,
  `GAP_M_fix` double NOT NULL,
  `GAP_P_fix` double NOT NULL,
  `GAP_W_fix` double NOT NULL,
  `NCF` double NOT NULL,
  `NSF` double NOT NULL,
  `NI` double NOT NULL,
  `hasil` double NOT NULL,
  `kesimpulan` varchar(128) NOT NULL,
  `keterangan` varchar(128) NOT NULL,
  `presentasi_NCF/NSF` varchar(128) NOT NULL,
  `presentasi_NCF2/NSF2/NI` varchar(128) NOT NULL,
  `tanggal` varchar(128) NOT NULL,
  `id_relasi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `perhitungan_pm`
--

INSERT INTO `perhitungan_pm` (`id_barang`, `nama_barang`, `kode_barang`, `modal`, `bobot_modal`, `penjualan`, `bobot_penjualan`, `waktu`, `bobot_waktu`, `GAP_M`, `GAP_P`, `GAP_W`, `GAP_M_fix`, `GAP_P_fix`, `GAP_W_fix`, `NCF`, `NSF`, `NI`, `hasil`, `kesimpulan`, `keterangan`, `presentasi_NCF/NSF`, `presentasi_NCF2/NSF2/NI`, `tanggal`, `id_relasi`) VALUES
(9979, 'pwm 8073', '123', '35000000', 1, '36500000', 5, '12', 4, -4, 0, -1, 1, 5, 4, 3, 4, 3.3, 3.46, 'Rafaksi', '', '70/30', '40/40/20', 'Tanggal: 24-Feb-2025<br> Waktu: 24:26:18', NULL),
(9980, 'redmi a16', '124', '47600000', 1, '54000000', 5, '30', 1, -4, 0, -4, 1, 5, 1, 3, 1, 2.4, 2.08, 'Discount', '', '70/30', '40/40/20', 'Tanggal: 24-Feb-2025<br> Waktu: 24:26:18', NULL),
(9981, 'magic com', '125', '3200000', 2, '4000000', 3, '7', 4, -3, -2, -1, 2, 3, 4, 2.5, 4, 2.95, 3.19, 'Rafaksi', '', '70/30', '40/40/20', 'Tanggal: 24-Feb-2025<br> Waktu: 24:26:18', NULL),
(9982, 'exotic', '443', '750000', 5, '80000', 1, '30', 1, 0, -4, -4, 5, 1, 1, 3, 1, 2.4, 2.08, 'Discount', '', '70/30', '40/40/20', 'Tanggal: 24-Feb-2025<br> Waktu: 24:26:18', NULL),
(9983, 'pwm9076', '87687', '75000000', 1, '80000000', 5, '1', 5, -4, 0, 0, 1, 5, 5, 3, 5, 3.6, 3.92, 'Rafaksi', '', '70/30', '40/40/20', 'Tanggal: 24-Feb-2025<br> Waktu: 24:26:18', NULL),
(9984, 'case 3', '4534', '40000', 5, '9000000', 5, '1', 5, 0, 0, 0, 5, 5, 5, 5, 5, 5, 5, 'Rafaksi', '', '70/30', '40/40/20', 'Tanggal: 24-Feb-2025<br> Waktu: 24:26:18', NULL),
(9985, '5F W/F MASPION MWF-41S 16“', '912239', '345000', 5, '398000', 1, '16', 3, 0, -4, -2, 5, 1, 3, 3, 3, 3, 3, 'Rafaksi', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(9986, '5DISP DESK MASPION MD-10 PAS', '912309', '288000', 5, '305000', 1, '7', 4, 0, -4, -1, 5, 1, 4, 3, 4, 3.3, 3.46, 'Rafaksi', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(9987, '5DISP DESK MASPION MD-19 PAS', '912312 ', '478000', 5, '515000', 1, '3', 5, 0, -4, 0, 5, 1, 5, 3, 5, 3.6, 3.92, 'Rafaksi', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(9988, '5M COM MASPION 1892BS 1 8LT', '914017 ', '298000', 5, '328000', 1, '22', 2, 0, -4, -3, 5, 1, 2, 3, 2, 2.7, 2.54, 'Mailer', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(9989, '5KG MASPION LST-S300 LISTRIK', '911822 ', '98000', 5, '155000', 1, '31', 1, 0, -4, -4, 5, 1, 1, 3, 1, 2.4, 2.08, 'Discount', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(9990, '5F P/SF MASPION PW-602 24“', '912109 ', '1376000', 4, '1498000', 1, '19', 2, -1, -4, -3, 4, 1, 2, 2.5, 2, 2.35, 2.27, 'Discount', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(9991, '5O OVEN MASPION MOT-2002', '919544 ', '615000', 5, '695000', 1, '28', 1, 0, -4, -4, 5, 1, 1, 3, 1, 2.4, 2.08, 'Discount', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(9992, 'TOASTER MASPION MT-206', '919920', '225000', 5, '245000', 1, '31', 1, 0, -4, -4, 5, 1, 1, 3, 1, 2.4, 2.08, 'Discount', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(9993, '5F P/WF MASPION PW-1802RC 18“', '9121034', '674000', 5, '698000', 1, '31', 1, 0, -4, -4, 5, 1, 1, 3, 1, 2.4, 2.08, 'Discount', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(9994, '5MC MESIN CUCI MASPION 7kg MMC-9973', '912456', '1105000', 4, '1299000', 1, '7', 4, -1, -4, -1, 4, 1, 4, 2.5, 4, 2.95, 3.19, 'Rafaksi', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(9995, '5MC MESIN CUCI MASPION 12kg MMC-1291', '912543', '2005000', 3, '2229000', 2, '15', 3, -2, -3, -2, 3, 2, 3, 2.5, 3, 2.65, 2.73, 'Mailer', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(9996, '5F P/BF MASPION PW-1808S', '9121080', '498000', 5, '538000', 1, '19', 2, 0, -4, -3, 5, 1, 2, 3, 2, 2.7, 2.54, 'Mailer', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(9997, '5F P/F MASPION PW 500S', '9121097', '730000', 5, '765000', 1, '12', 4, 0, -4, -1, 5, 1, 4, 3, 4, 3.3, 3.46, 'Rafaksi', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(9998, '5F E/F MASPION CEF-20 8“ ', '912124', '216000', 5, '235000', 1, '26', 1, 0, -4, -4, 5, 1, 1, 3, 1, 2.4, 2.08, 'Discount', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(9999, '5BL MASPION 1273 PL 3IN1', '912635', '298000', 5, '328000', 1, '16', 3, 0, -4, -2, 5, 1, 3, 3, 3, 3, 3, 'Rafaksi', '', '70/30', '40/40/20', 'Tanggal: 08-Mar-2025<br> Waktu: 24:07:06', NULL),
(10000, '5F W/F MASPION MWF-41S 16“', '912239', '345000', 5, '398000', 1, '16', 3, 0, -4, -2, 5, 1, 3, 3, 3, 3, 3, 'Rafaksi', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL),
(10001, '5DISP DESK MASPION MD-10 PAS', '912309', '288000', 5, '305000', 1, '7', 4, 0, -4, -1, 5, 1, 4, 3, 4, 3.4, 3.48, 'Rafaksi', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL),
(10002, '5DISP DESK MASPION MD-19 PAS', '912312 ', '478000', 5, '515000', 1, '3', 5, 0, -4, 0, 5, 1, 5, 3, 5, 3.8, 3.96, 'Rafaksi', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL),
(10003, '5M COM MASPION 1892BS 1 8LT', '914017 ', '298000', 5, '328000', 1, '22', 2, 0, -4, -3, 5, 1, 2, 3, 2, 2.6, 2.52, 'Mailer', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL),
(10004, '5KG MASPION LST-S300 LISTRIK', '911822 ', '98000', 5, '155000', 1, '31', 1, 0, -4, -4, 5, 1, 1, 3, 1, 2.2, 2.04, 'Discount', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL),
(10005, '5F P/SF MASPION PW-602 24“', '912109 ', '1376000', 4, '1498000', 1, '19', 2, -1, -4, -3, 4, 1, 2, 2.5, 2, 2.3, 2.26, 'Discount', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL),
(10006, '5O OVEN MASPION MOT-2002', '919544 ', '615000', 5, '695000', 1, '28', 1, 0, -4, -4, 5, 1, 1, 3, 1, 2.2, 2.04, 'Discount', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL),
(10007, 'TOASTER MASPION MT-206', '919920', '225000', 5, '245000', 1, '31', 1, 0, -4, -4, 5, 1, 1, 3, 1, 2.2, 2.04, 'Discount', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL),
(10008, '5F P/WF MASPION PW-1802RC 18“', '9121034', '674000', 5, '698000', 1, '31', 1, 0, -4, -4, 5, 1, 1, 3, 1, 2.2, 2.04, 'Discount', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL),
(10009, '5MC MESIN CUCI MASPION 7kg MMC-9973', '912456', '1105000', 4, '1299000', 1, '7', 4, -1, -4, -1, 4, 1, 4, 2.5, 4, 3.1, 3.22, 'Rafaksi', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL),
(10010, '5MC MESIN CUCI MASPION 12kg MMC-1291', '912543', '2005000', 3, '2229000', 2, '15', 3, -2, -3, -2, 3, 2, 3, 2.5, 3, 2.7, 2.74, 'Mailer', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL),
(10011, '5F P/BF MASPION PW-1808S', '9121080', '498000', 5, '538000', 1, '19', 2, 0, -4, -3, 5, 1, 2, 3, 2, 2.6, 2.52, 'Mailer', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL),
(10012, '5F P/F MASPION PW 500S', '9121097', '730000', 5, '765000', 1, '12', 4, 0, -4, -1, 5, 1, 4, 3, 4, 3.4, 3.48, 'Rafaksi', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL),
(10013, '5F E/F MASPION CEF-20 8“ ', '912124', '216000', 5, '235000', 1, '26', 1, 0, -4, -4, 5, 1, 1, 3, 1, 2.2, 2.04, 'Discount', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL),
(10014, '5BL MASPION 1273 PL 3IN1', '912635', '298000', 5, '328000', 1, '16', 3, 0, -4, -2, 5, 1, 3, 3, 3, 3, 3, 'Rafaksi', '', '60/40', '40/40/20', 'Tanggal: 06-May-2025<br> Waktu: 22:55:30', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perhitungan_pm_smntr`
--

CREATE TABLE `perhitungan_pm_smntr` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `kode_barang` varchar(128) NOT NULL,
  `modal` varchar(128) NOT NULL,
  `bobot_modal` int(11) NOT NULL,
  `penjualan` varchar(128) NOT NULL,
  `bobot_penjualan` int(11) NOT NULL,
  `waktu` varchar(128) NOT NULL,
  `bobot_waktu` int(11) NOT NULL,
  `GAP_M` int(11) NOT NULL,
  `GAP_P` int(11) NOT NULL,
  `GAP_W` int(11) NOT NULL,
  `GAP_M_fix` int(11) NOT NULL,
  `GAP_P_fix` int(11) NOT NULL,
  `GAP_W_fix` int(11) NOT NULL,
  `NCF` varchar(128) NOT NULL,
  `NSF` varchar(128) NOT NULL,
  `NI` varchar(128) NOT NULL,
  `hasil` varchar(128) NOT NULL,
  `kesimpulan` varchar(128) NOT NULL,
  `keterangan` varchar(128) NOT NULL,
  `presentasi_NCF/NSF` varchar(128) NOT NULL,
  `presentasi_NCF2/NSF2/NI` varchar(128) NOT NULL,
  `tanggal` varchar(128) DEFAULT NULL,
  `id_relasi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `perhitungan_pm_smntr`
--

INSERT INTO `perhitungan_pm_smntr` (`id_barang`, `nama_barang`, `kode_barang`, `modal`, `bobot_modal`, `penjualan`, `bobot_penjualan`, `waktu`, `bobot_waktu`, `GAP_M`, `GAP_P`, `GAP_W`, `GAP_M_fix`, `GAP_P_fix`, `GAP_W_fix`, `NCF`, `NSF`, `NI`, `hasil`, `kesimpulan`, `keterangan`, `presentasi_NCF/NSF`, `presentasi_NCF2/NSF2/NI`, `tanggal`, `id_relasi`) VALUES
(50300, '5F W/F MASPION MWF-41S 16“', '912239', '345000', 5, '398000', 1, '16', 3, 0, -4, -2, 5, 1, 3, '3', '3', '3', '3', 'Rafaksi', '', '60/40', '40/40/20', NULL, NULL),
(50301, '5DISP DESK MASPION MD-10 PAS', '912309', '288000', 5, '305000', 1, '7', 4, 0, -4, -1, 5, 1, 4, '3', '4', '3.4', '3.48', 'Rafaksi', '', '60/40', '40/40/20', NULL, NULL),
(50302, '5DISP DESK MASPION MD-19 PAS', '912312 ', '478000', 5, '515000', 1, '3', 5, 0, -4, 0, 5, 1, 5, '3', '5', '3.8', '3.96', 'Rafaksi', '', '60/40', '40/40/20', NULL, NULL),
(50303, '5M COM MASPION 1892BS 1 8LT', '914017 ', '298000', 5, '328000', 1, '22', 2, 0, -4, -3, 5, 1, 2, '3', '2', '2.6', '2.52', 'Mailer', '', '60/40', '40/40/20', NULL, NULL),
(50304, '5KG MASPION LST-S300 LISTRIK', '911822 ', '98000', 5, '155000', 1, '31', 1, 0, -4, -4, 5, 1, 1, '3', '1', '2.2', '2.04', 'Discount', '', '60/40', '40/40/20', NULL, NULL),
(50305, '5F P/SF MASPION PW-602 24“', '912109 ', '1376000', 4, '1498000', 1, '19', 2, -1, -4, -3, 4, 1, 2, '2.5', '2', '2.3', '2.26', 'Discount', '', '60/40', '40/40/20', NULL, NULL),
(50306, '5O OVEN MASPION MOT-2002', '919544 ', '615000', 5, '695000', 1, '28', 1, 0, -4, -4, 5, 1, 1, '3', '1', '2.2', '2.04', 'Discount', '', '60/40', '40/40/20', NULL, NULL),
(50307, 'TOASTER MASPION MT-206', '919920', '225000', 5, '245000', 1, '31', 1, 0, -4, -4, 5, 1, 1, '3', '1', '2.2', '2.04', 'Discount', '', '60/40', '40/40/20', NULL, NULL),
(50308, '5F P/WF MASPION PW-1802RC 18“', '9121034', '674000', 5, '698000', 1, '31', 1, 0, -4, -4, 5, 1, 1, '3', '1', '2.2', '2.04', 'Discount', '', '60/40', '40/40/20', NULL, NULL),
(50309, '5MC MESIN CUCI MASPION 7kg MMC-9973', '912456', '1105000', 4, '1299000', 1, '7', 4, -1, -4, -1, 4, 1, 4, '2.5', '4', '3.1', '3.22', 'Rafaksi', '', '60/40', '40/40/20', NULL, NULL),
(50310, '5MC MESIN CUCI MASPION 12kg MMC-1291', '912543', '2005000', 3, '2229000', 2, '15', 3, -2, -3, -2, 3, 2, 3, '2.5', '3', '2.7', '2.74', 'Mailer', '', '60/40', '40/40/20', NULL, NULL),
(50311, '5F P/BF MASPION PW-1808S', '9121080', '498000', 5, '538000', 1, '19', 2, 0, -4, -3, 5, 1, 2, '3', '2', '2.6', '2.52', 'Mailer', '', '60/40', '40/40/20', NULL, NULL),
(50312, '5F P/F MASPION PW 500S', '9121097', '730000', 5, '765000', 1, '12', 4, 0, -4, -1, 5, 1, 4, '3', '4', '3.4', '3.48', 'Rafaksi', '', '60/40', '40/40/20', NULL, NULL),
(50313, '5F E/F MASPION CEF-20 8“ ', '912124', '216000', 5, '235000', 1, '26', 1, 0, -4, -4, 5, 1, 1, '3', '1', '2.2', '2.04', 'Discount', '', '60/40', '40/40/20', NULL, NULL),
(50314, '5BL MASPION 1273 PL 3IN1', '912635', '298000', 5, '328000', 1, '16', 3, 0, -4, -2, 5, 1, 3, '3', '3', '3', '3', 'Rafaksi', '', '60/40', '40/40/20', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perhitungan_pm`
--
ALTER TABLE `perhitungan_pm`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_relasi` (`id_relasi`);

--
-- Indeks untuk tabel `perhitungan_pm_smntr`
--
ALTER TABLE `perhitungan_pm_smntr`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_relasi` (`id_relasi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT untuk tabel `perhitungan_pm`
--
ALTER TABLE `perhitungan_pm`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10015;

--
-- AUTO_INCREMENT untuk tabel `perhitungan_pm_smntr`
--
ALTER TABLE `perhitungan_pm_smntr`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50315;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `perhitungan_pm`
--
ALTER TABLE `perhitungan_pm`
  ADD CONSTRAINT `perhitungan_pm_ibfk_1` FOREIGN KEY (`id_relasi`) REFERENCES `perhitungan_pm_smntr` (`id_barang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `perhitungan_pm_smntr`
--
ALTER TABLE `perhitungan_pm_smntr`
  ADD CONSTRAINT `perhitungan_pm_smntr_ibfk_1` FOREIGN KEY (`id_relasi`) REFERENCES `barang` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
