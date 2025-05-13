-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Bulan Mei 2025 pada 18.20
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kd_brg` varchar(6) NOT NULL,
  `nm_brg` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `harga_beli` int(50) NOT NULL,
  `harga_jual` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kd_brg`, `nm_brg`, `jenis`, `harga_beli`, `harga_jual`) VALUES
('1', 'Pelan', 'Perabotan', 12000, 25000),
('2', 'Mie Ayam', 'Makanan', 5000, 18000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `id` varchar(6) NOT NULL,
  `nmksr` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kasir`
--

INSERT INTO `kasir` (`id`, `nmksr`, `jenis`, `telepon`, `alamat`) VALUES
('1', 'Shinta', 'Perempuan', '0895', 'Cilodong'),
('2', 'Maulanaaaa', 'Laki-Laki', '08954129', 'Cilodong'),
('3', 'Haycel', 'Laki-Laki', '0832', 'Bogor'),
('4', 'Jibar', 'Laki-Laki', '2832832', 'Jakarta'),
('5', 'Ade', 'Laki-Laki', '046453', 'Cilodong');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Id` varchar(6) NOT NULL,
  `nmplg` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`Id`, `nmplg`, `jenis`, `telepon`, `alamat`) VALUES
('01', 'AhmadM', 'Laki-Laki', '0895412930976', 'Cilodong'),
('02', 'Jibar', 'Laki-Laki', '0895', 'JakartaU'),
('03', 'Haycel Harza', 'Laki-Laki', '88895', 'Bogor'),
('04', 'Ade', 'Laki-Laki', '82428402', 'Depok'),
('05', 'Shinta', 'Perempuan', '08887', 'Cilodong');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indeks untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
