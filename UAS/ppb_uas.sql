-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2022 pada 14.57
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppb_uas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `menumkn`
--

CREATE TABLE `menumkn` (
  `kd` int(11) NOT NULL,
  `produk` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menumkn`
--

INSERT INTO `menumkn` (`kd`, `produk`, `deskripsi`, `harga`, `gambar`) VALUES
(1111, 'Ayam Bakar', 'Nasi + Sambal + Ayam Bakar', 18000, 'img1.jpg'),
(1112, 'Ayam Goreng', 'Nasi + Sambal + Ayam Goreng', 17000, 'img2.jpg'),
(1113, 'Kangkung', 'Sayur Kangkung', 12000, 'img3.jpg'),
(1114, 'Nasi Goreng', 'Nasi Goreng', 13000, 'img4.jpg'),
(1115, 'Soto Ayam', 'Soto Ayam + Tomat', 8000, 'img6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menumkn`
--
ALTER TABLE `menumkn`
  ADD PRIMARY KEY (`kd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
