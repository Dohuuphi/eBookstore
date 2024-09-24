-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 19, 2024 lúc 02:09 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ql_bansach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_hd`
--

CREATE TABLE `ct_hd` (
  `mahd` varchar(20) NOT NULL,
  `masp` varchar(20) NOT NULL,
  `tensp` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dvtinh` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `soluongban` int(11) NOT NULL,
  `dongiaban` float NOT NULL,
  `thanhtien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ct_hd`
--

INSERT INTO `ct_hd` (`mahd`, `masp`, `tensp`, `dvtinh`, `soluongban`, `dongiaban`, `thanhtien`) VALUES
('HD20240719001', 'K003', 'Kẹp sách 3', 'Kẹp', 1, 55000, 55000),
('HD20240719001', 'S001', 'Sách lập trình Java', 'Cuốn', 1, 120000, 120000),
('HD20240719001', 'S003', 'Sách lập trình Python', 'Cuốn', 1, 130000, 130000),
('HD20240719001', 'S004', 'Sách cơ sở dữ liệu', 'Cuốn', 1, 100000, 100000),
('HD20240719002', 'K005', 'Kẹp sách 5', 'Kẹp', 1, 70000, 70000),
('HD20240719002', 'S005', 'Sách hệ điều hành', 'Cuốn', 1, 110000, 110000),
('HD20240719002', 'S010', 'Sách phát triển ứng dụng', 'Cuốn', 1, 190000, 190000),
('HD20240719002', 'S016', 'Sách phân tích hệ thống', 'Cuốn', 1, 150000, 150000),
('HD20240719003', 'S012', 'Sách lập trình web', 'Cuốn', 1, 110000, 110000),
('HD20240719003', 'S015', 'Sách lý thuyết đồ thị', 'Cuốn', 1, 140000, 140000),
('HD20240719003', 'S017', 'Sách quản trị cơ sở dữ liệu', 'Cuốn', 1, 160000, 160000),
('HD20240719004', 'K001', 'Kẹp sách 1', 'Kẹp', 1, 50000, 50000),
('HD20240719004', 'S008', 'Sách điện toán đám mây', 'Cuốn', 1, 170000, 170000),
('HD20240719004', 'S010', 'Sách phát triển ứng dụng', 'Cuốn', 1, 190000, 190000),
('HD20240719004', 'S012', 'Sách lập trình web', 'Cuốn', 1, 110000, 110000),
('HD20240719004', 'S014', 'Sách công nghệ phần mềm', 'Cuốn', 1, 130000, 130000),
('HD20240719004', 'S015', 'Sách lý thuyết đồ thị', 'Cuốn', 1, 140000, 140000),
('HD20240719005', 'S020', 'Sách học sử', 'Cuốn', 1, 190000, 190000);

--
-- Bẫy `ct_hd`
--
DELIMITER $$
CREATE TRIGGER `trg_updateSLT_after_addHD` AFTER INSERT ON `ct_hd` FOR EACH ROW BEGIN
	UPDATE san_pham
    SET soluong = soluong - new.soluongban
    where masp = new.masp;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_updateSLT_after_deleteHD` AFTER DELETE ON `ct_hd` FOR EACH ROW BEGIN
	DECLARE today INT(11) DEFAULT -1;
    SELECT (DATE(NOW())-ngayban) into today From hoa_don 
    where mahd=old.mahd;
	if today<='7' then
		UPDATE san_pham
		SET soluong = soluong + old.soluongban
		where masp = old.masp;
    end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_pn`
--

CREATE TABLE `ct_pn` (
  `mapn` varchar(20) NOT NULL,
  `masp` varchar(10) NOT NULL,
  `tensp` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dvtinh` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `soluongnhap` int(11) NOT NULL,
  `dongianhap` float NOT NULL,
  `thanhtien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ct_pn`
--

INSERT INTO `ct_pn` (`mapn`, `masp`, `tensp`, `dvtinh`, `soluongnhap`, `dongianhap`, `thanhtien`) VALUES
('PN20240719002', 'K002', 'Kẹp sách 2', 'Kẹp', 50, 56000, 2800000),
('PN20240719002', 'K005', 'Kẹp sách 5', 'Kẹp', 50, 50000, 2500000),
('PN20240719003', 'S002', 'Sách thiết kế web', 'Cuốn', 10, 12000, 120000),
('PN20240719003', 'S011', 'Sách học máy', 'Cuốn', 10, 12000, 120000),
('PN20240719003', 'S014', 'Sách công nghệ phần mềm', 'Cuốn', 10, 10000, 100000),
('PN20240719003', 'S015', 'Sách lý thuyết đồ thị', 'Cuốn', 50, 10000, 500000),
('PN20240719003', 'S017', 'Sách quản trị cơ sở dữ liệu', 'Cuốn', 50, 12000, 600000),
('PN20240719003', 'S018', 'Sách lập trình di động', 'Cuốn', 50, 12000, 600000);

--
-- Bẫy `ct_pn`
--
DELIMITER $$
CREATE TRIGGER `trg_updateSLT_after_addPN` AFTER INSERT ON `ct_pn` FOR EACH ROW BEGIN
	UPDATE san_pham
    SET soluong = soluong + new.soluongnhap
    where masp = new.masp;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_updateSLT_after_deletePN` AFTER DELETE ON `ct_pn` FOR EACH ROW BEGIN
	DECLARE today INT(11) DEFAULT -1;
    SELECT (DATE(NOW())-ngaynhap) into today From phieu_nhap
    where mapn=old.mapn;
	if today<='7' then
		UPDATE san_pham
		SET soluong = soluong - old.soluongnhap
		where masp = old.masp;
    end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `mahd` varchar(20) NOT NULL,
  `tonggiaban` float NOT NULL,
  `ngayban` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`mahd`, `tonggiaban`, `ngayban`) VALUES
('HD20240719001', 405000, '2024-07-19'),
('HD20240719002', 520000, '2024-07-19'),
('HD20240719003', 410000, '2024-07-19'),
('HD20240719004', 790000, '2024-07-19'),
('HD20240719005', 190000, '2024-07-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieu_nhap`
--

CREATE TABLE `phieu_nhap` (
  `mapn` varchar(20) NOT NULL,
  `tonggianhap` float NOT NULL,
  `ngaynhap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieu_nhap`
--

INSERT INTO `phieu_nhap` (`mapn`, `tonggianhap`, `ngaynhap`) VALUES
('PN20240719002', 5300000, '2024-07-19'),
('PN20240719003', 2040000, '2024-07-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `masp` varchar(10) NOT NULL,
  `tensp` varchar(40) NOT NULL,
  `dvtinh` varchar(15) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongiaban` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`masp`, `tensp`, `dvtinh`, `soluong`, `dongiaban`) VALUES
('K001', 'Kẹp sách 1', 'Kẹp', 199, 50000),
('K002', 'Kẹp sách 2', 'Kẹp', 200, 60000),
('K003', 'Kẹp sách 3', 'Kẹp', 99, 55000),
('K004', 'Kẹp sách 4', 'Kẹp', 180, 65000),
('K005', 'Kẹp sách 5', 'Kẹp', 169, 70000),
('S001', 'Sách lập trình Java', 'Cuốn', 99, 120000),
('S002', 'Sách thiết kế web', 'Cuốn', 90, 150000),
('S003', 'Sách lập trình Python', 'Cuốn', 119, 130000),
('S004', 'Sách cơ sở dữ liệu', 'Cuốn', 48, 100000),
('S005', 'Sách hệ điều hành', 'Cuốn', 89, 110000),
('S006', 'Sách mạng máy tính', 'Cuốn', 70, 140000),
('S007', 'Sách lập trình C++', 'Cuốn', 59, 160000),
('S008', 'Sách điện toán đám mây', 'Cuốn', 74, 170000),
('S009', 'Sách an toàn thông tin', 'Cuốn', 64, 180000),
('S010', 'Sách phát triển ứng dụng', 'Cuốn', 83, 190000),
('S011', 'Sách học máy', 'Cuốn', 105, 200000),
('S012', 'Sách lập trình web', 'Cuốn', 52, 110000),
('S013', 'Sách cấu trúc dữ liệu', 'Cuốn', 49, 120000),
('S014', 'Sách công nghệ phần mềm', 'Cuốn', 53, 130000),
('S015', 'Sách lý thuyết đồ thị', 'Cuốn', 107, 140000),
('S016', 'Sách phân tích hệ thống', 'Cuốn', 68, 150000),
('S017', 'Sách quản trị cơ sở dữ liệu', 'Cuốn', 129, 160000),
('S018', 'Sách lập trình di động', 'Cuốn', 140, 170000),
('S019', 'Sách phát triển phần mềm', 'Cuốn', 85, 180000),
('S020', 'Sách học sử', 'Cuốn', 94, 190000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ct_hd`
--
ALTER TABLE `ct_hd`
  ADD PRIMARY KEY (`mahd`,`masp`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `ct_pn`
--
ALTER TABLE `ct_pn`
  ADD PRIMARY KEY (`mapn`,`masp`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`mahd`);

--
-- Chỉ mục cho bảng `phieu_nhap`
--
ALTER TABLE `phieu_nhap`
  ADD PRIMARY KEY (`mapn`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`masp`),
  ADD UNIQUE KEY `masp_UNIQUE` (`masp`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ct_hd`
--
ALTER TABLE `ct_hd`
  ADD CONSTRAINT `ct_hd_ibfk_1` FOREIGN KEY (`mahd`) REFERENCES `hoa_don` (`mahd`),
  ADD CONSTRAINT `ct_hd_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `san_pham` (`masp`);

--
-- Các ràng buộc cho bảng `ct_pn`
--
ALTER TABLE `ct_pn`
  ADD CONSTRAINT `ct_pn_ibfk_1` FOREIGN KEY (`mapn`) REFERENCES `phieu_nhap` (`mapn`),
  ADD CONSTRAINT `ct_pn_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `san_pham` (`masp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
