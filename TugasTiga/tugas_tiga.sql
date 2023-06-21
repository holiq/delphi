CREATE TABLE `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `deskripsi` text NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `stok_awal` int(11) NOT NULL,
  `stok_minimal` int(11) NOT NULL,
  `harga_barang` float NOT NULL,
  `is_active` tinyint(4) NOT NULL
);

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode_pelanggan` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(20) NOT NULL
);

CREATE TABLE `pembelian_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode_pembelian` varchar(20) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `harga_beli` float NOT NULL,
  `sub_total` float NOT NULL
);

CREATE TABLE `pembelian_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode_pembelian` varchar(20) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `kode_supplier` varchar(20) NOT NULL,
  `no_bukti` varchar(20) NOT NULL
);

CREATE TABLE `penjualan_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode_penjualan` varchar(20) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `harga_jual` float NOT NULL,
  `sub_total` float NOT NULL
);

CREATE TABLE `penjualan_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode_penjualan` varchar(20) NOT NULL,
  `tanggal_penjualan` date NOT NULL,
  `kode_pelanggan` varchar(20) NOT NULL,
  `no_bukti` varchar(20) NOT NULL,
  `total_harga` float NOT NULL,
  `jumlah_bayar` float NOT NULL,
  `jumlah_kembali` float NOT NULL
);

CREATE TABLE `stok` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode_barang` varchar(20) NOT NULL,
  `stok_awal` int(11) NOT NULL,
  `stok_masuk` int(11) NOT NULL,
  `stok_keluar` int(11) NOT NULL,
  `stok_akhir` int(11) NOT NULL
);

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode_supplier` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(20) NOT NULL
);

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
);

