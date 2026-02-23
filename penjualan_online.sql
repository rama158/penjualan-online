-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 23 Feb 2026 pada 03.05
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `brg`
--

CREATE TABLE `brg` (
  `kode_brg` varchar(6) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `merk` varchar(30) NOT NULL,
  `harga` bigint NOT NULL,
  `jumlah` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `brg`
--

INSERT INTO `brg` (`kode_brg`, `nama_brg`, `merk`, `harga`, `jumlah`) VALUES
('1', 'kaca mata', 'fizi', 150000, 32),
('3', 'iphone 13promax', 'apple', 12000000, 10),
('5', 'kaos', 'NIKE', 2800000, 20),
('6', 'tas kalcer', 'adidas', 150000, 3),
('7', 'Diamond', 'MEMZ', 200000, 100),
('9', 'poco c65', 'poco', 1500000, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` varchar(10) NOT NULL,
  `kode_brg` varchar(6) NOT NULL,
  `nama_brg` varchar(60) NOT NULL,
  `harga` bigint NOT NULL,
  `jumlah` int NOT NULL,
  `total_bayar` bigint NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `kode_brg`, `nama_brg`, `harga`, `jumlah`, `total_bayar`, `tanggal`) VALUES
('1', '9', 'poco', 1500000, 10, 15000000, '2026-02-09'),
('2', '6', 'tas', 150000, 3, 450000, '2026-02-09'),
('3', '3', 'iphone', 12000000, 4, 48000000, '2026-02-09'),
('4', '6', 'tas', 150000, 100, 15000000, '2026-02-09'),
('5', '5', 'kaos', 2800000, 2, 5600000, '2026-02-09'),
('6', '7', 'Diamond', 200000, 3, 600000, '2026-02-09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `brg`
--
ALTER TABLE `brg`
  ADD PRIMARY KEY (`kode_brg`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD KEY `kode_brg` (`kode_brg`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`kode_brg`) REFERENCES `brg` (`kode_brg`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
