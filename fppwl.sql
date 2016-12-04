-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2016 at 08:26 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fppwl`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbadmin`
--

CREATE TABLE IF NOT EXISTS `tbadmin` (
  `id_admin` varchar(10) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL,
  `jns_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbadmin`
--

INSERT INTO `tbadmin` (`id_admin`, `nama_admin`, `password`, `jns_kelamin`, `alamat`, `email`, `no_hp`) VALUES
('AD001', 'Iswatunnisa', 'admin123', 'Perempuan', 'Jl. Jodipati No.26 Mancasan Kidul concat Depok Sle', 'iswatunnisa.is@students.amikom', '085348478821'),
('AD002', 'Nur Efendi', 'admin123', 'Laki-Laki', 'Jl. Prawokoat No.22 Mancasan Kidul Concat Depok Sl', 'nurefendi@students.amikom.ac.i', '082377253364'),
('AD003', 'Nirmala Hapsari', 'admin123', 'Perempuan', 'Jl. Pringgodani No.14 Mancasan Kidul Concat Depok ', 'nirmalahapsari@students.amikom', '085747333863');

-- --------------------------------------------------------

--
-- Table structure for table `tbkamar`
--

CREATE TABLE IF NOT EXISTS `tbkamar` (
  `no_kamar` int(10) NOT NULL,
  `id_tipekamar` varchar(10) NOT NULL,
  `no_lantai` int(5) NOT NULL,
  PRIMARY KEY (`no_kamar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbkamar`
--

INSERT INTO `tbkamar` (`no_kamar`, `id_tipekamar`, `no_lantai`) VALUES
(1, 'TP001', 1),
(2, 'TP001', 1),
(3, 'TP001', 1),
(4, 'TP001', 1),
(5, 'TP001', 1),
(6, 'TP002', 1),
(7, 'TP002', 1),
(8, 'TP002', 1),
(9, 'TP002', 1),
(10, 'TP002', 1),
(11, 'TP003', 2),
(12, 'TP003', 2),
(13, 'TP003', 2),
(14, 'TP003', 2),
(15, 'TP003', 2),
(16, 'TP004', 2),
(17, 'TP004', 2),
(18, 'TP004', 2),
(19, 'TP004', 2),
(20, 'TP004', 2),
(21, 'TP005', 3),
(22, 'TP005', 3),
(23, 'TP005', 3),
(24, 'TP005', 3),
(25, 'TP005', 3),
(26, 'TP006', 3),
(27, 'TP006', 3),
(28, 'TP006', 3),
(29, 'TP006', 3),
(30, 'TP006', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbpengunjung`
--

CREATE TABLE IF NOT EXISTS `tbpengunjung` (
  `id_pengunjung` varchar(16) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `jns_kelamin` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  PRIMARY KEY (`id_pengunjung`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbpengunjung`
--

INSERT INTO `tbpengunjung` (`id_pengunjung`, `nama`, `jns_kelamin`, `nationality`, `email`, `no_hp`) VALUES
('2621253551733232', 'Mike Luwis', 'Laki-Laki', 'Jerman', 'mike10@yahoo.com', '062253428778'),
('3102014403910312', 'Andika Pratama', 'Laki-Laki', 'Indonesia', 'andikapratama@gmail.com', '081250554363'),
('3102014422910312', 'Laudya Cintya Bella', 'Perempuan', 'Indonesia', 'laudyabella@gmail.co.id', '089732451113'),
('8753262125355174', 'Angela Chang', 'Perempuan', 'Taiwan', 'angelachang@gmail.com', '056733212401');

-- --------------------------------------------------------

--
-- Table structure for table `tbreservasi`
--

CREATE TABLE IF NOT EXISTS `tbreservasi` (
  `id_reservasi` varchar(10) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `lama_nginap` int(10) NOT NULL,
  `id_pengunjung` varchar(16) NOT NULL,
  `id_tipekamar` varchar(10) NOT NULL,
  `no_kamar` int(10) NOT NULL,
  PRIMARY KEY (`id_reservasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbreservasi`
--

INSERT INTO `tbreservasi` (`id_reservasi`, `check_in`, `check_out`, `lama_nginap`, `id_pengunjung`, `id_tipekamar`, `no_kamar`) VALUES
('1611-0001', '2016-12-02', '2016-12-08', 6, '2621253551733232', 'ST001', 17),
('1611-0002', '2016-12-02', '2016-12-04', 2, '3102014403910312', 'DL001', 1),
('1611-0003', '2016-12-03', '2016-12-08', 5, '3102014422910312', 'DL002', 8),
('1611-0004', '2016-12-05', '2016-12-09', 4, '8753262125355174', 'ST003', 26);

-- --------------------------------------------------------

--
-- Table structure for table `tbtipekamar`
--

CREATE TABLE IF NOT EXISTS `tbtipekamar` (
  `id_tipekamar` varchar(10) NOT NULL,
  `tipe_kamar` varchar(50) NOT NULL,
  `kapasitas_org` int(5) NOT NULL,
  `fasilitas` varchar(100) NOT NULL,
  `harga` int(10) NOT NULL,
  PRIMARY KEY (`id_tipekamar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbtipekamar`
--

INSERT INTO `tbtipekamar` (`id_tipekamar`, `tipe_kamar`, `kapasitas_org`, `fasilitas`, `harga`) VALUES
('DL001', 'Deluxe Room (Single)', 1, 'Single Bed, Tv, Kulkas', 150000),
('DL002', 'Deluxe Room (Couple)', 2, 'Double bed, Tv, Kulkas', 200000),
('DL003', 'Deluxe Room (Family)', 3, 'Double bed, Single Bed, Tv, Kulkas', 250000),
('ST001', 'Standard Room (Single)', 1, 'single bed, Tv', 100000),
('ST002', 'Standard Room (Couple)', 2, 'double bed, Tv', 150000),
('ST003', 'Standard Room (Family)', 3, 'Double bed, Single Bed, Tv', 200000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
