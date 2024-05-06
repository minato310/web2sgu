-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2023 at 10:01 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `du_an_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` text NOT NULL,
  `idtaikhoan` int(10) NOT NULL,
  `idsanpham` int(10) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `idtaikhoan`, `idsanpham`, `ngaybinhluan`) VALUES
(1, 'hhh', 1, 6, '10:45:35am 07/08/2023'),
(2, 'rat oke nhaxx', 4, 21, '02:16:10pm 15/09/2023'),
(4, 'sp rat oke nha', 4, 22, '02:32:51pm 15/09/2023');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) NOT NULL,
  `tendanhmuc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`) VALUES
(1, 'Áo bóng đá'),
(2, 'Giày bóng đá'),
(3, 'Găng tay thủ môn'),
(4, 'ao bong da 3'),
(6, 'Quả bóng đá'),
(7, 'Cờ, cúp, huy chương'),
(8, 'Phụ kiện khác');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(10) NOT NULL,
  `tentaikhoan` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pttt` tinyint(1) NOT NULL DEFAULT 1,
  `ngaydathang` varchar(30) NOT NULL,
  `tongtien` int(10) NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `idtaikhoan` int(10) NOT NULL,
  `tongsoluongsanpham` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `tentaikhoan`, `diachi`, `sdt`, `email`, `pttt`, `ngaydathang`, `tongtien`, `trangthai`, `idtaikhoan`, `tongsoluongsanpham`) VALUES
(1, 'binhle', 'dee', '0392040873', 'hianh1868@gmail.com', 1, '11:38:59am 07/08/2023', 1649997, 1, 1, 6),
(2, 'vvv', 'sdfvfd', '0987654321', 'haibanh@gmail.com', 1, '06:21:21pm 14/09/2023', 150000, 1, 0, 1),
(3, 'nnn', 'ffff', '0365232514', 'nnn@gmail.com', 1, '06:22:26pm 14/09/2023', 150000, 4, 3, 1),
(4, 'demo', 'hcm q12', '0917982707', 'demo@gmail.com', 1, '02:11:33pm 15/09/2023', 1800000, 4, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `id` int(10) NOT NULL,
  `idtaikhoan` int(10) NOT NULL,
  `idsanpham` int(10) NOT NULL,
  `anhsanpham` varchar(255) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `giagoc` int(10) NOT NULL,
  `giasale` int(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `iddonhang` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`id`, `idtaikhoan`, `idsanpham`, `anhsanpham`, `tensanpham`, `giagoc`, `giasale`, `soluong`, `thanhtien`, `size`, `color`, `iddonhang`) VALUES
(1, 1, 18, 'áo đá bóng (7).jpg', '55', 555555, 55555, 3, 166665, 'S', 'Đỏ', 1),
(2, 1, 13, 'áo đá bóng (6).jpg', '40000', 4444444, 494444, 3, 1483332, 'XL', 'Đỏ', 1),
(4, 3, 22, 'áo Mu đỏ.jpg', 'tes nha', 9, 100000, 1, 100000, 'S', 'Xanh dương', 3),
(5, 4, 21, 'áo MC xanh.jpg', 'Bộ quần áo bóng đá ManCity logo thêu', 600000, 500000, 2, 1000000, 'M', 'Xanh dương', 4),
(6, 4, 27, 'danhmucgangtay.png', 'Găng Tay Thủ Môn TA VN20', 900000, 800000, 1, 800000, '8', 'Xanh lá', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) NOT NULL,
  `tensanpham` varchar(50) NOT NULL,
  `giagoc` varchar(50) NOT NULL,
  `giasale` varchar(50) NOT NULL,
  `anhsanpham` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `soluong` int(10) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `luotxem` int(10) NOT NULL,
  `iddanhmuc` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giagoc`, `giasale`, `anhsanpham`, `size`, `color`, `soluong`, `mota`, `luotxem`, `iddanhmuc`) VALUES
(6, 'Quần Áo Bóng Đá Đồ Đá Banh MU ', '700.000', '500.000', 'áo đá bóng (10).jpg', 'S', 'Xanh dương', 6, 'QUẦN ÁO BÓNG ĐÁ MU XANH LÁ 2023 2024\r\n\r\n\r\n\r\n✔️Chất liệu đồ đá banh vải Poly thun mè cao cấp \r\n\r\n✔️Quần áo bóng đá hàng chất lượng, bền đẹp \r\n\r\n✔️Chất vải thun mè 100% Polyester thấm hút mồ hôi cực tốt \r\n\r\n✔️Quần áo đá bóng thiết chuẩn mẫu\r\n\r\n✔️Logo áo bón', 63, 1),
(19, 'Bộ quần áo bóng đá HAGL Hoàng Anh Gia Lai', '200000', '100000', 'áo đá bóng (1).jpg', 'M,L,44', 'Xanh lá,Xanh dương,Đen', 100, '✦SHOP90P - CHUYÊN QUẦN ÁO BÓNG ĐÁ & ĐỒ ĐÁ BANH✦\r\n\r\n - Chuyên hàng thun lạnh Việt Nam chất lượng cao, mẫu mã đẹp và đa dạng \r\n\r\n - Ưu đãi lớn cho khách đặt Áo Bóng Đá theo đội nhóm, công ty\r\n\r\n - Giao hàng tận nơi, kiểm tra hàng vừa ý mới thanh toán.  \r\n\r\n', 0, 1),
(21, 'Bộ quần áo bóng đá ManCity logo thêu', '600000', '500000', 'áo MC xanh.jpg', 'S,M,L', 'Vàng,Xanh dương,Xám', 5, 'BỘ QUẦN ÁO BÓNG ĐÁ MC  ĐỦ MÀU HÀNG CAO CẤP\r\n\r\nBộ quần áo bóng đá MANCITY\r\n\r\n•    Chất liệu THUN LẠNH cao cấp \r\n\r\n•    KHÔNG NHĂN – KHÔNG XÙ – KHÔNG PHAI\r\n\r\n•    Thấm hút mồ hôi cực tốt\r\n\r\n•    Thiết kế mạnh mẽ,  hiện đại\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nChọn size áo bóng đ', 0, 1),
(22, 'ÁO ĐẤU SÂN NHÀ MANCHESTER UNITED ', '9', '100000', 'áo Mu đỏ.jpg', 'S,40,41,42,43,45', 'Xanh lá,Xanh dương,Đen', 88, '✔️Chất liệu đồ đá banh vải Poly thun lạnh cao cấp \r\n\r\n✔️Quần áo bóng đá hàng chất lượng, bền đẹp \r\n\r\n✔️Chất vải thun lạnh 100% Polyester thấm hút mồ hôi cực tốt \r\n\r\n✔️Quần áo đá bóng thiết chuẩn mẫu\r\n\r\n✔️Logo áo bóng đá dệt rồi thêu trực tiếp lên áo nên r', 0, 1),
(24, 'Giày đá bóng cổ cao SUPERFLY_MINO', '900000', '780000', 'giaynike1.jpg', '42,43,44,45', 'Đỏ,Vàng,Xanh lá,Xanh dương', 99, 'MÔ TẢ SẢN PHẨM\r\n\r\n[Giày nhỏ Tăng lên 1 số] Với quá trình bán hàng hơn 3 năm trên nền tảng này, được sự tín nhiệm của nhiều khách hàng. Đã thúc đẩy ARA SPORTS Nỗ Lực không ngừng để tạo ra các mẫu sản phẩm, cải tiến chất lượng kiểu dáng...!\r\n\r\nChúng tôi xin', 0, 2),
(25, 'Giày đá bóng đá banh,thể thao sân cỏ nhân tạo', '800000', '670000', 'giaynike4.jpg', '41,42,43', 'Vàng,Xanh lá,Xanh dương,Đen', 77, 'vv', 0, 2),
(26, 'Giày Đá Bóng Nam Mzn_Relia_May miễn phí đế', '700000', '569000', 'giaynike9.png', '42,43,44', 'Hồng,Nâu,Xám', 66, '6', 0, 2),
(27, 'Găng Tay Thủ Môn TA VN20', '900000', '800000', 'danhmucgangtay.png', '7,8', 'Vàng,Xanh lá,Đen', 65, '6', 0, 3),
(28, 'Găng Tay Thủ Môn JJ VN20', '800000', '450000', 'gangtay1.png', '8,9,10', 'Xanh dương,Đen,Nâu,Xám', 77, '7', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(10) NOT NULL,
  `tentaikhoan` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `chucvu` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `tentaikhoan`, `matkhau`, `email`, `diachi`, `sdt`, `chucvu`) VALUES
(1, 'admin', 'admin', 'hianh1868@gmail.com', '', '', 1),
(2, 'zxcvbnmlkjhgfdsaqwertyuiopzxc', 'gg', 'accfreefire2504@gmail.com', '', '', 0),
(3, 'tttt', '123', 'tt@gmail.com', 'd', '0917982707', 1),
(4, 'demo', '123', 'demo@gmail.com', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idtaikhoan` (`idtaikhoan`),
  ADD KEY `idsanpham` (`idsanpham`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddonhang` (`iddonhang`),
  ADD KEY `idtaikhoan` (`idtaikhoan`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idanhmuc` (`iddanhmuc`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`iddonhang`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`iddanhmuc`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
