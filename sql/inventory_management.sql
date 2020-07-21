-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 21, 2020 lúc 12:49 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--





  
DROP DATABASE IF EXISTS inventory_management1
CREATE DATABASE inventory_management1
USE inventory_management1



-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth`
--

CREATE TABLE `auth` (
  `ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  `MENU_ID` int(11) NOT NULL,
  `PERMISSION` int(1) NOT NULL DEFAULT 1,
  `ACTIVE_FLAG` int(1) NOT NULL DEFAULT 1,
  `CREATE_dATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `auth`
--

INSERT INTO `auth` (`ID`, `ROLE_ID`, `MENU_ID`, `PERMISSION`, `ACTIVE_FLAG`, `CREATE_dATE`, `UPDATE_DATE`) VALUES
(1, 1, 1, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(2, 1, 2, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(3, 1, 3, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(4, 1, 4, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(5, 1, 5, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(6, 1, 6, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(7, 1, 7, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(8, 1, 8, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(9, 1, 9, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(10, 1, 10, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(11, 1, 11, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(12, 1, 12, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(13, 1, 13, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(14, 1, 14, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(15, 1, 15, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(16, 1, 16, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26'),
(17, 1, 17, 1, 1, '2020-07-01 07:18:26', '2020-07-01 07:18:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `ACTIVE_FLAG` int(1) NOT NULL DEFAULT 1,
  `CREATE_dATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`ID`, `NAME`, `CODE`, `DESCRIPTION`, `ACTIVE_FLAG`, `CREATE_dATE`, `UPDATE_DATE`) VALUES
(22, 'LAPTOP2', 'LAPTOP1', 'LAPTOP3', 0, '2020-07-14 16:04:06', '2020-07-14 16:33:14'),
(23, 'CAMERA', 'CAMERA', 'CAMERA', 0, '2020-07-14 16:04:38', '2020-07-14 16:33:17'),
(24, 'LAPTOP', 'LAPTOP', 'LAPTOP', 1, '2020-07-14 16:36:43', '2020-07-14 16:36:43'),
(25, 'CAMERA', 'CAMERA', 'CAMERA', 1, '2020-07-14 16:37:04', '2020-07-14 16:37:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `ID` int(11) NOT NULL,
  `PARENT_ID` int(11) NOT NULL,
  `URL` varchar(100) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `ORLDER_INDEX` int(1) NOT NULL DEFAULT 0,
  `ACTIVE_FLAG` int(1) NOT NULL DEFAULT 1,
  `CREATE_dATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`ID`, `PARENT_ID`, `URL`, `NAME`, `ORLDER_INDEX`, `ACTIVE_FLAG`, `CREATE_dATE`, `UPDATE_DATE`) VALUES
(1, 0, '/product', 'Sản phẩm', 1, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(2, 0, '/stock', 'Kho', 2, 0, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(3, 0, '/management', 'Quản lý', 3, 0, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(4, 1, '/product-info/list', 'Danh sách sản phẩm', 2, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(5, 1, '/category/list', 'Danh sách category', 1, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(6, 1, '/category/edit', 'Sửa', -1, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(7, 1, '/category/view', 'Xem', -1, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(8, 1, '/category/add', 'Thêm mới', -1, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(9, 1, '/category/save', 'Lưu', -1, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(10, 1, '/category/delete', 'Xoá', -1, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(11, 2, '/goods-recept/list', 'Danh sách nhập kho', 1, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(12, 2, '/goods-issue/list', 'Danh sách xuất kho', 2, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(13, 2, '/product-in-stock/list', 'Sản phẩm trong kho', 3, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(14, 2, '/history', 'Lịch sử kho', 4, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(15, 3, '/user/list', 'Danh sách user', 1, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(16, 3, '/menu/list', 'Danh sách menu', 1, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37'),
(17, 3, '/role/list', 'Danh sách quyền', 1, 1, '2020-07-01 07:13:37', '2020-07-01 07:13:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_info`
--

CREATE TABLE `product_info` (
  `ID` int(11) NOT NULL,
  `CATE_ID` int(11) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `IMG_URL` varchar(200) NOT NULL,
  `ACTIVE_FLAG` int(1) NOT NULL DEFAULT 1,
  `CREATE_dATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_info`
--

INSERT INTO `product_info` (`ID`, `CATE_ID`, `CODE`, `NAME`, `DESCRIPTION`, `IMG_URL`, `ACTIVE_FLAG`, `CREATE_dATE`, `UPDATE_DATE`) VALUES
(5, 24, 'Dell Inspiron N345 i3 ', 'DELL', 'Dell Inspiron N345 i3 1005g1/p93342', '/upload/1594742938011_637233230044441609_dell-inspiron-n3593c-den-dd.jpg', 1, '2020-07-14 16:05:59', '2020-07-19 21:49:05'),
(6, 24, 'Dell Vostro N345 i5 ', 'DELL', 'Dell Vostro N345 i5 1005g1/p93342', '/upload/1594743056681_636946309135370742_dell-vostro-v3481-core-i3-7020u-dd.jpg', 1, '2020-07-14 16:10:56', '2020-07-19 21:49:23'),
(7, 25, 'Camera IP 1', 'CAMERA IP ', 'CAMERA IP ', '/upload/1594743387690_camera-ip-mi-home-360-do-1080p-xiaomi-qdj4058gl-tr-ava-600x600.jpg', 1, '2020-07-14 16:15:39', '2020-07-14 16:37:46'),
(8, 25, 'Camera IP 2', 'CAMERA IP ', 'CAMERA IP ', '/upload/1594743456274_camera-ip-1080p-ezviz-cs-c1hc-d0-1d2wfr-trang-1-1-600x600.jpg', 1, '2020-07-14 16:17:36', '2020-07-14 16:37:40'),
(9, 24, 'Asus Vivobook 1', 'ASUS', 'ASUS', '/upload/1595195250626_1.jpg', 1, '2020-07-19 21:47:30', '2020-07-19 21:50:29'),
(10, 24, 'Asus Vivobook X509FA-EJ871T i3-8145U', 'ASUS', 'ASUS', '/upload/1595195332202_2.jpg', 1, '2020-07-19 21:48:52', '2020-07-19 21:48:52'),
(11, 24, 'ASUS 1', 'ASUS', 'ASUS', '/upload/1595195460728_3d.jpg', 1, '2020-07-19 21:51:00', '2020-07-19 21:51:00'),
(12, 24, 'DELL1', 'DELL', 'DELL', '/upload/1595195485992_4.jpg', 1, '2020-07-19 21:51:25', '2020-07-19 21:51:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `ID` int(11) NOT NULL,
  `ROLE_NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(200) NOT NULL,
  `ACTIVE_FLAG` int(1) NOT NULL DEFAULT 1,
  `CREATE_dATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`ID`, `ROLE_NAME`, `DESCRIPTION`, `ACTIVE_FLAG`, `CREATE_dATE`, `UPDATE_DATE`) VALUES
(1, 'admin', 'Admin of system', 1, '2020-07-01 07:17:42', '2020-07-01 07:17:42'),
(2, 'staff', 'Staff of system', 1, '2020-07-01 07:17:42', '2020-07-01 07:17:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `ACTIVE_FLAG` int(1) NOT NULL DEFAULT 1,
  `CREATE_dATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`ID`, `USER_NAME`, `PASSWORD`, `EMAIL`, `NAME`, `ACTIVE_FLAG`, `CREATE_dATE`, `UPDATE_DATE`) VALUES
(1, 'admin', '1234', 'vol@mail', 'Luong Nam', 1, '2020-06-29 21:52:45', '2020-06-29 21:52:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_role`
--

CREATE TABLE `users_role` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  `ACTIVE_FLAG` int(1) NOT NULL DEFAULT 1,
  `CREATE_dATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users_role`
--

INSERT INTO `users_role` (`ID`, `USER_ID`, `ROLE_ID`, `ACTIVE_FLAG`, `CREATE_dATE`, `UPDATE_DATE`) VALUES
(1, 1, 1, 1, '2020-07-01 07:22:15', '2020-07-01 07:22:15');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `roleId_foreignKey` (`ROLE_ID`),
  ADD KEY `menuId_foreignKey` (`MENU_ID`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `cateId_foreignKey` (`CATE_ID`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userId_foreign_key` (`USER_ID`),
  ADD KEY `roleId_foreign_key` (`ROLE_ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth`
--
ALTER TABLE `auth`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `product_info`
--
ALTER TABLE `product_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users_role`
--
ALTER TABLE `users_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth`
--
ALTER TABLE `auth`
  ADD CONSTRAINT `menuId_foreignKey` FOREIGN KEY (`MENU_ID`) REFERENCES `menu` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `roleId_foreignKey` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_info`
--
ALTER TABLE `product_info`
  ADD CONSTRAINT `cateId_foreignKey` FOREIGN KEY (`CATE_ID`) REFERENCES `category` (`ID`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `users_role`
--
ALTER TABLE `users_role`
  ADD CONSTRAINT `roleId_foreign_key` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `userId_foreign_key` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
