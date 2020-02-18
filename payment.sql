-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Feb 2020 pada 02.27
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `malasngoding_kios`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(70) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`, `foto`) VALUES
(8, 'malasngoding', '069c546d1d97fd9648d8142b3e0fd3a3', 'logo inaka.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `antar`
--

CREATE TABLE `antar` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `delivery` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `antar`
--

INSERT INTO `antar` (`id`, `tanggal`, `delivery`) VALUES
(1, '2020-02-04', '8-14 wk after receipt PO & Doc Approval');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `rek` varchar(50) NOT NULL,
  `cabang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`id`, `nama`, `rek`, `cabang`) VALUES
(1, 'Bank Mega', '1023564', 'Bekasi'),
(2, 'Bank BRI', '15463733', 'Jakarta'),
(3, 'Bank BNI', '24242424', 'Bekasi'),
(4, 'Bank BCA', '175354', 'Bekasi'),
(5, 'Bank Mandiri', '4546211', 'Bekasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `part` varchar(50) NOT NULL,
  `jenis` text NOT NULL,
  `suplier` text NOT NULL,
  `modal` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sisa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `part`, `jenis`, `suplier`, `modal`, `harga`, `jumlah`, `sisa`) VALUES
(14, 'PT.Walahab', '', 'makanan', 'PT.Walahab', 0, 6500, 351, 20),
(19, 'tic tac', '', 'makanan ringan', 'pt sido multp', 2000, 4000, 3, 24),
(20, 'aqua sedang', '', 'minuman ringan', 'pt jamaika', 1000, 3000, 990, 1000),
(22, 'makkkanan', '', 'makanan ringan', 'pt surya', 2000, 4000, 894, 900),
(23, 'magnum', '', 'rokok', 'pt surga', 12000, 13000, 985, 1000),
(27, 'sea foog', '', 'makanan ringan', 'pt surga', 4000, 60000, 598, 600),
(28, 'mild', '', 'rokok', 'pt sampoerna', 15000, 17000, 192, 200),
(29, 'dji sam soe', '', 'rokok', 'pt ptan', 14000, 15000, 116, 150),
(30, 'nu mild', '', 'rokok', 'pt ptan', 14000, 15000, 144, 150),
(31, 'nu mild', '', 'rokok', 'pt ptan', 14000, 15000, 144, 150),
(33, 'Motherboard', 'GVLX554', 'Elektronik', 'PT.Walahab', 500000, 550000, 345, 25),
(34, 'Modul Wifi', 'MHD354', 'Elektronik', 'PT.Walahab', 45000, 50000, 10, 10),
(35, 'Tiang PJU 9m Type Octagonal c/w Angkur,bolt and material accessories', 'MHD354', 'Elektronik', 'PT. Antaraksa', 3000, 9500000, 67, 0),
(36, 'Jasa Instalasi, Mob Demob & Fabrikasi', 'SHJ968', 'Elektronik', 'PT.NVIDIA', 105900000, 107900000, 20, 20),
(37, 'Lampu PJU AIO LED Philips 40W, battery 12jam, min charge temp 25degC for 5Hours, 5000 lumen', 'SHJ968', 'Elektronik', 'PT.NVIDIA', 500000, 6500000, 45, 45);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_laku`
--

CREATE TABLE `barang_laku` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `part` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `revisi` varchar(20) NOT NULL,
  `validasi` varchar(20) NOT NULL,
  `laba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_laku`
--

INSERT INTO `barang_laku` (`id`, `tanggal`, `nama`, `part`, `jumlah`, `harga`, `total_harga`, `revisi`, `validasi`, `laba`) VALUES
(72, '2020-02-03', 'Motherboard', 'MHD354', 8, 50000, 400000, '', '', -3600000),
(73, '2020-02-03', 'magnum', 'SHJ968', 12, 17000, 204000, '', '', 60000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `nama`, `alamat`, `email`, `phone`) VALUES
(2, 'PT.AMKA', 'Namex', 'amka@gmail.com', '081230542667'),
(3, 'PT.ALU', 'Pati', 'ahmadrizalsunaedi@gmail.com', '081230542667'),
(4, 'PT. Wiskas', 'Pati', 'ahmadrizalsunaedi@gmail.com', '081230542667'),
(5, 'Project PJU Pelabuhan Jepara', 'Jepara', 'ahmadrizalsunaedi@gmail.com', '081230542667');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inpsurat`
--

CREATE TABLE `inpsurat` (
  `id` int(11) NOT NULL,
  `srt` varchar(50) NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `atasnama` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `validasi` varchar(100) NOT NULL,
  `delivery` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `inpsurat`
--

INSERT INTO `inpsurat` (`id`, `srt`, `kepada`, `address`, `atasnama`, `subject`, `validasi`, `delivery`, `payment`, `bank`) VALUES
(1, 'SRT001/JKT/II/2020', 'Project PJU Pelabuhan Jepara', 'Jepara', 'BP. Vicky', 'PJU Jepara', '1', '8-14 wk after receipt PO & Doc Approval', 'Pembayaran DP 30%,Sisa 70%', 'Bank Mega'),
(2, 'SRT002/JKT/II/2020', 'PT.AMKA', 'Pati', 'BP. Fachrur', 'Fire Alarm System', '2', '8-14 wk after receipt PO & Doc Approval', 'Pembayaran DP 50%, Sisa 50%', 'Bank BNI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invinput`
--

CREATE TABLE `invinput` (
  `id` int(11) NOT NULL,
  `invreff` varchar(50) NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `atasnama` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `validasi` varchar(100) NOT NULL,
  `delivery` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `invinput`
--

INSERT INTO `invinput` (`id`, `invreff`, `kepada`, `address`, `atasnama`, `subject`, `validasi`, `delivery`, `payment`, `bank`) VALUES
(1, 'INV001/JKT/II/2020', 'Project PJU Pelabuhan Jepara', 'Jepara', 'BP. Vicky', 'PJU Jepara', '1', '8-14 wk after receipt PO & Doc Approval', 'Pembayaran DP 50%, Sisa 50%', 'Bank BRI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invreff` varchar(50) NOT NULL,
  `nama` text NOT NULL,
  `harga` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `invoice`
--

INSERT INTO `invoice` (`id`, `invreff`, `nama`, `harga`, `total`, `jumlah`) VALUES
(1, 'INV001/JKT/II/2020', 'Lampu PJU AIO LED Philips 40W, battery 12jam, min charge temp 25degC for 5Hours, 5000 lumen', '9500000', '285000000', '30'),
(2, 'INV001/JKT/II/2020', 'Tiang PJU 9m Type Octagonal c/w Angkur,bolt and material accessories', '6500000', '195000000', '30'),
(3, 'INV001/JKT/II/2020', 'Jasa Instalasi, Mob Demob & Fabrikasi', '107900000', '107900000', '1'),
(4, 'INV002/JKT/II/2020', 'Lampu PJU AIO LED Philips 40W, battery 12jam, min charge temp 25degC for 5Hours, 5000 lumen', '9500000', '28500000', '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `pembayaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `payment`
--

INSERT INTO `payment` (`id`, `pembayaran`) VALUES
(1, 'Pembayaran DP 30%,Sisa 70%'),
(3, 'Pembayaran 100%'),
(4, 'Pembayaran DP 50%, Sisa 50%');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keperluan` text NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `tanggal`, `keperluan`, `nama`, `jumlah`) VALUES
(1, '2015-02-06', 'de', 'diki', 1234);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinput`
--

CREATE TABLE `pinput` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `poreff` varchar(50) NOT NULL,
  `kepada` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `atasnama` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `validasi` varchar(100) NOT NULL,
  `delivery` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pinput`
--

INSERT INTO `pinput` (`id`, `tanggal`, `poreff`, `kepada`, `address`, `atasnama`, `subject`, `validasi`, `delivery`, `payment`, `bank`) VALUES
(3, '0000-00-00', 'PO098/II/JKT/2020', 'Project PJU Pelabuhan Jepara', 'Jepara', 'BP. Vicky', 'PJU Jepara', '1', '8-14 wk after receipt PO & Doc Approval', 'Pembayaran DP 50%, Sisa 50%', 'Bank Mandiri'),
(4, '0000-00-00', 'PO054/II/JKT/2020', 'PT.AMKA', 'Pati', 'BP. Susanto', 'Tower Listrik', '1', '8-14 wk after receipt PO & Doc Approval', 'Pembayaran 100%', 'Bank Mega');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `poreff` varchar(50) NOT NULL,
  `nama` text NOT NULL,
  `harga` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `purchase`
--

INSERT INTO `purchase` (`id`, `tanggal`, `poreff`, `nama`, `harga`, `total`, `jumlah`) VALUES
(1, '0000-00-00', 'PO098/II/JKT/2020', 'Lampu PJU AIO LED Philips 40W, battery 12jam, min charge temp 25degC for 5Hours, 5000 lumen', '9500000', '38000000', '4'),
(2, '0000-00-00', 'PO098/II/JKT/2020', 'Tiang PJU 9m Type Octagonal c/w Angkur,bolt and material accessories', '6500000', '26000000', '4'),
(3, '0000-00-00', 'PO098/II/JKT/2020', 'Jasa Instalasi, Mob Demob & Fabrikasi', '107900000', '215800000', '2'),
(4, '0000-00-00', 'PO054/II/JKT/2020', 'Tiang PJU 9m Type Octagonal c/w Angkur,bolt and material accessories', '9500000', '85500000', '9');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quotation`
--

CREATE TABLE `quotation` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `qtreff` varchar(50) NOT NULL,
  `nama` text NOT NULL,
  `part` varchar(50) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `diskon` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `total` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `quotation`
--

INSERT INTO `quotation` (`id`, `tanggal`, `qtreff`, `nama`, `part`, `harga`, `diskon`, `discount`, `total`, `jumlah`) VALUES
(6, '0000-00-00', 'QIN001/JKT/II/2020', 'Lampu PJU AIO LED Philips 40W, battery 12jam, min charge temp 25degC for 5Hours, 5000 lumen', '', '9500000', '8550000', '10', '256500000', '30'),
(7, '0000-00-00', 'QIN001/JKT/II/2020', 'Tiang PJU 9m Type Octagonal c/w Angkur,bolt and material accessories', '', '6500000', '5850000', '10', '175500000', '30'),
(8, '0000-00-00', 'QIN001/JKT/II/2020', 'Jasa Instalasi, Mob Demob & Fabrikasi', '', '107900000', '97110000', '10', '97110000', '1'),
(14, '0000-00-00', 'QIN003/JKT/II/2020', 'magnum', '', '60000', '54000', '10', '54000', '1'),
(17, '0000-00-00', 'QIN003/JKT/II/2020', 'makkkanan', '', '50000', '25000', '50', '250000', '10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat`, `email`, `phone`) VALUES
(1, 'PT.Walahab', 'Kudus', 'walahab654@hab.com', '087654567876'),
(23, 'PT.MAju', 'Pati', 'ahmadrizalsunaedi@gmail.com', '081230542667'),
(24, 'PT. Antaraksa', 'Namex', 'Antaraksa@weid.co.id', '08123054899'),
(25, 'PT. Krypthon', 'Cikampek', 'ahmadrizalsunaedi@gmail.com', '081230542667');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratjalan`
--

CREATE TABLE `suratjalan` (
  `id` int(11) NOT NULL,
  `poreff` varchar(50) NOT NULL,
  `srt` varchar(50) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `suratjalan`
--

INSERT INTO `suratjalan` (`id`, `poreff`, `srt`, `nama`, `harga`, `total`, `jumlah`) VALUES
(1, 'PO002/JKT/II/2020', 'SRT001/JKT/II/2020', 'Lampu PJU AIO LED Philips 40W, battery 12jam, min charge temp 25degC for 5Hours, 5000 lumen', '', '0', '30'),
(2, 'PO002/JKT/II/2020', 'SRT001/JKT/II/2020', 'Tiang PJU 9m Type Octagonal c/w Angkur,bolt and material accessories', '', '0', '30'),
(3, 'PO002/JKT/II/2020', 'SRT001/JKT/II/2020', 'Jasa Instalasi, Mob Demob & Fabrikasi', '', '0', '1'),
(4, 'PO001/JKT/II/2020', 'SRT002/JKT/II/2020', 'Lampu PJU AIO LED Philips 40W, battery 12jam, min charge temp 25degC for 5Hours, 5000 lumen', '', '0', '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `timing`
--

CREATE TABLE `timing` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `qtreff` varchar(100) NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `atasnama` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `revisi` varchar(50) NOT NULL,
  `validasi` varchar(50) NOT NULL,
  `delivery` varchar(50) NOT NULL,
  `payment` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `timing`
--

INSERT INTO `timing` (`id`, `tanggal`, `qtreff`, `kepada`, `address`, `atasnama`, `subject`, `revisi`, `validasi`, `delivery`, `payment`, `bank`) VALUES
(25, '0000-00-00', 'QIN001/JKT/II/2020', 'Project PJU Pelabuhan Jepara', 'Jepara', 'Bp.Vicky', 'Quotation Pemasangan Lampu PJU-Pelabuhan Jepara', '', '1', '8-14 wk after receipt PO & Doc Approval', 'Pembayaran DP 30%,Sisa 70%', 'Bank BNI');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `antar`
--
ALTER TABLE `antar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang_laku`
--
ALTER TABLE `barang_laku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `inpsurat`
--
ALTER TABLE `inpsurat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `invinput`
--
ALTER TABLE `invinput`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pinput`
--
ALTER TABLE `pinput`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `suratjalan`
--
ALTER TABLE `suratjalan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `timing`
--
ALTER TABLE `timing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `antar`
--
ALTER TABLE `antar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `barang_laku`
--
ALTER TABLE `barang_laku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `inpsurat`
--
ALTER TABLE `inpsurat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `invinput`
--
ALTER TABLE `invinput`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pinput`
--
ALTER TABLE `pinput`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `suratjalan`
--
ALTER TABLE `suratjalan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `timing`
--
ALTER TABLE `timing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
