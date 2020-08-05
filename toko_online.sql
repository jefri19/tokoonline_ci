-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Agu 2020 pada 02.18
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Sepatu ', 'Sepatu Merek All Star', 'Pakaian Pria', 400000, 20, 'sepatu.jpg'),
(2, 'kamera', 'kamera canon e95 7005', 'elektronik', 5900000, 20, 'kamera.jpg'),
(3, 'Samsung Galaksi A20', 'Samsung Galaksi A20', 'elektronik', 3400000, 20, 'hp.jpg'),
(4, 'laptop ACER', 'laptop ASUS ram 2 gb', 'elektronik', 5000000, 4, 'laptop.jpg'),
(12, 'kacamata', 'kacamata baca', 'Pakaian Pria', 1000000, 56, 'kacamata.jpg'),
(13, 'sepatu-1', 'sepatu fesion', 'Pakaian Wanita', 1000000, 66, 'sepatu-1.jpg'),
(16, 'celana ', 'celana jins lembut', 'Pakaian Pria', 200000, 15, 'jeans.jpg'),
(20, 'Gelang', 'Gelang Stenlis', 'Pakaian wanita', 1000000, 11, 'gelang-stenlis1.jpg'),
(24, 'camera', 'camera nikon G123', 'elektronik', 4000000, 43, 'camera1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(2, 'Jefri febrianto', 'jl.krakatau', '2020-07-14 13:06:46', '2020-07-15 13:06:46'),
(3, 'desak gede sharasshita', 'jl.jombang', '2020-07-14 13:11:15', '2020-07-15 13:11:15'),
(4, 'audia sarasshita', 'jl.mbunder', '2020-07-15 06:54:54', '2020-07-16 06:54:54'),
(5, 'Bintang', 'malang', '2020-07-15 14:11:23', '2020-07-16 14:11:23'),
(6, 'jiso', 'malang', '2020-07-15 14:12:52', '2020-07-16 14:12:52'),
(7, 'monika', 'padang', '2020-07-16 14:39:03', '2020-07-17 14:39:03'),
(13, 'ilham sandi', 'jl.kenanga', '2020-07-16 15:43:09', '2020-07-17 15:43:09'),
(14, 'ilham sandi', 'jl.kenanga', '2020-07-16 15:49:00', '2020-07-17 15:49:00'),
(15, 'ilham sandi', 'jl.kenanga', '2020-07-16 15:49:09', '2020-07-17 15:49:09'),
(16, '', '', '2020-07-16 15:53:42', '2020-07-17 15:53:42'),
(17, '', '', '2020-07-16 15:54:25', '2020-07-17 15:54:25'),
(18, '', '', '2020-07-17 07:51:32', '2020-07-18 07:51:32'),
(19, '', '', '2020-07-17 08:06:41', '2020-07-18 08:06:41'),
(20, '', '', '2020-07-17 08:11:40', '2020-07-18 08:11:40'),
(21, '', '', '2020-07-17 08:21:22', '2020-07-18 08:21:22'),
(22, '', '', '2020-07-17 08:22:01', '2020-07-18 08:22:01'),
(23, '', '', '2020-07-17 08:25:12', '2020-07-18 08:25:12'),
(24, 'doni', 'jl.mbunder', '2020-07-17 08:28:55', '2020-07-18 08:28:55'),
(25, 'doni', 'jl.mbunder', '2020-07-17 08:29:45', '2020-07-18 08:29:45'),
(26, 'diva', 'padang', '2020-07-17 08:30:37', '2020-07-18 08:30:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 2, 1, 'Sepatu ', 2, 400000, ''),
(2, 2, 16, 'celana ', 1, 200000, ''),
(3, 3, 1, 'Sepatu ', 1, 400000, ''),
(4, 3, 2, 'kamera', 1, 590000, ''),
(5, 3, 3, 'Samsung Galaksi A20', 1, 3400000, ''),
(6, 3, 4, 'laptop ACER', 1, 5000000, ''),
(7, 4, 2, 'kamera', 1, 5900000, ''),
(8, 5, 2, 'kamera', 1, 5900000, ''),
(9, 6, 1, 'Sepatu ', 5, 400000, ''),
(10, 7, 24, 'camera', 1, 4000000, ''),
(11, 8, 3, 'Samsung Galaksi A20', 1, 3400000, ''),
(12, 8, 4, 'laptop ACER', 1, 5000000, ''),
(13, 8, 1, 'Sepatu ', 1, 400000, ''),
(14, 8, 20, 'Gelang', 1, 1000000, ''),
(15, 9, 20, 'Gelang', 1, 1000000, ''),
(16, 10, 2, 'kamera', 1, 5900000, ''),
(17, 11, 2, 'kamera', 1, 5900000, ''),
(18, 12, 2, 'kamera', 1, 5900000, ''),
(19, 13, 13, 'sepatu-1', 1, 1000000, ''),
(20, 16, 24, 'camera', 1, 4000000, ''),
(21, 16, 2, 'kamera', 1, 5900000, ''),
(22, 17, 2, 'kamera', 1, 5900000, ''),
(23, 18, 1, 'Sepatu ', 1, 400000, ''),
(24, 19, 2, 'kamera', 1, 5900000, ''),
(25, 20, 2, 'kamera', 1, 5900000, ''),
(26, 21, 1, 'Sepatu ', 1, 400000, ''),
(27, 22, 2, 'kamera', 1, 5900000, ''),
(28, 23, 2, 'kamera', 1, 5900000, ''),
(29, 24, 2, 'kamera', 1, 5900000, ''),
(30, 24, 1, 'Sepatu ', 1, 400000, ''),
(31, 26, 3, 'Samsung Galaksi A20', 2, 3400000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
    UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '1234', 1),
(2, 'user', 'user', '1234', 2),
(3, 'user', 'user', '1234', 2),
(4, 'doni', 'inod', '12345', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
