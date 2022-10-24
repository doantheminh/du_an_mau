-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2022 lúc 11:01 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmau2022`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `iduser` int(10) DEFAULT 0,
  `bill_name` varchar(255) NOT NULL,
  `bill_address` varchar(255) NOT NULL,
  `bill_tel` varchar(225) NOT NULL,
  `bill_email` varchar(255) NOT NULL,
  `bill_pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1.Thanh toán trực 2.Chuyển khoản 3.Thanh toán ',
  `ngaydathang` varchar(255) DEFAULT NULL,
  `total` int(10) NOT NULL DEFAULT 0,
  `bill_status` tinyint(1) DEFAULT 0 COMMENT '0.Đơn hàng mới 1.Đang xử lý 2.Đang chờ 3.Đang giao hàng 3.Đã giao hàng',
  `receive_name` varchar(255) DEFAULT NULL,
  `receive_address` varchar(255) DEFAULT NULL,
  `receive_tel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(8, '7586799sdtweddg', 13, 47, '12:14:41pm 09/10/2022'),
(10, '7586799sdtweddg', 13, 57, '05:15:16pm 09/10/2022'),
(13, '7586799sdtweddg', 13, 52, '04:57:44am 10/10/2022'),
(14, 'quá tuyệt vời', 13, 56, '04:48:25pm 20/10/2022'),
(15, 'quá xịn', 13, 56, '05:03:38pm 22/10/2022'),
(16, 'hay', 14, 52, '06:29:23pm 22/10/2022'),
(17, 'xuất săc', 14, 52, '06:29:33pm 22/10/2022'),
(18, 'đồng hồ quá đẹp :D', 13, 58, '08:31:36am 23/10/2022'),
(19, '123', 0, 56, '10:36:11am 23/10/2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `img` varchar(225) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) NOT NULL DEFAULT 0,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `idbill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `iduser`, `idpro`, `img`, `name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES
(1, 13, 57, 'n', 'i', 0, 0, 0, 1),
(2, 13, 57, 'n', 'i', 0, 0, 0, 1),
(3, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 2),
(4, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 2),
(5, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 3),
(6, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 3),
(7, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 4),
(8, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 4),
(9, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 5),
(10, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 5),
(11, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 6),
(12, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 6),
(13, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 7),
(14, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 7),
(15, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 8),
(16, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 8),
(17, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 9),
(18, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 9),
(19, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 10),
(20, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 10),
(21, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 11),
(22, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 11),
(23, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 12),
(24, 13, 57, '1030.jpg', 'Vali đen', 12325, 1, 12325, 12),
(25, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 13),
(26, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 14),
(27, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 14),
(28, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 15),
(29, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 15),
(30, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 16),
(31, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 16),
(32, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 17),
(33, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 17),
(34, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 18),
(35, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 18),
(36, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 19),
(37, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 19),
(38, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 20),
(39, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 20),
(40, 13, 56, '1033.png', 'Samsug', 100000, 1, 100000, 21),
(41, 13, 56, '1033.png', 'Samsug', 100000, 1, 100000, 21),
(42, 13, 56, '1033.png', 'Samsug', 100000, 1, 100000, 21),
(43, 13, 56, '1033.png', 'Samsug', 100000, 1, 100000, 22),
(44, 13, 56, '1033.png', 'Samsug', 100000, 1, 100000, 22),
(45, 13, 56, '1033.png', 'Samsug', 100000, 1, 100000, 22),
(46, 13, 56, '1033.png', 'Samsug', 100000, 1, 100000, 23),
(47, 13, 56, '1033.png', 'Samsug', 100000, 1, 100000, 23),
(48, 13, 56, '1033.png', 'Samsug', 100000, 1, 100000, 23),
(49, 13, 56, '1033.png', 'Samsug', 100000, 1, 100000, 24),
(50, 13, 56, '1033.png', 'Samsug', 100000, 1, 100000, 24),
(51, 13, 56, '1033.png', 'Samsug', 100000, 1, 100000, 24),
(52, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 25),
(53, 0, 56, '1033.png', 'Samsug', 100000, 1, 100000, 26),
(54, 13, 56, '1033.png', 'Samsug', 100000, 1, 100000, 27),
(55, 13, 52, '1014.jpg', 'Mũ', 50000, 1, 50000, 27),
(56, 13, 52, '1014.jpg', 'Mũ', 50000, 1, 50000, 27),
(57, 13, 56, '1033.png', 'Samsug', 100000, 1, 100000, 28),
(58, 13, 52, '1014.jpg', 'Mũ', 50000, 1, 50000, 28),
(59, 13, 52, '1014.jpg', 'Mũ', 50000, 1, 50000, 28),
(60, 13, 50, '1010.jpg', 'Balo leo núi', 100000, 1, 100000, 28);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(33, 'Điện thoại'),
(34, 'Ba lô'),
(35, 'Máy ảnh'),
(36, 'Laptop'),
(37, 'Mũ'),
(38, 'Đồng hồ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `iddm` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(10,2) DEFAULT 0.00,
  `mota` text DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `luotxem` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `iddm`, `name`, `price`, `mota`, `img`, `luotxem`) VALUES
(48, 36, 'Máy tính dell', 100000.00, 'Sau khi dư luận lên tiếng, Bộ Giáo dục và Đào tạo đã tổ chức hội đồng thẩm định lại kết quả luận án tiến sĩ về giáo dục học liên quan đến bộ môn cầu lông, và đưa ra kết luận không chấp nhận kết quả đánh giá. Nghiên cứu sinh phải sửa chữa lại luận án, trong khi một thành viên hội đồng không công nhận luận án tiến sĩ này.\r\n\r\nSự việc càng trở nên rõ ràng về trách nhiệm và thiếu sót của những người trong cuộc cùng các bên liên quan gồm chính nghiên cứu sinh, đội ngũ giảng viên hướng dẫn, cơ sở đào tạo và hội đồng đánh giá luận án tiến sĩ. ', '1015.jpg', 10),
(49, 35, 'Máy ảnh abc', 1200000.00, 'Sau khi dư luận lên tiếng, Bộ Giáo dục và Đào tạo đã tổ chức hội đồng thẩm định lại kết quả luận án tiến sĩ về giáo dục học liên quan đến bộ môn cầu lông, và đưa ra kết luận không chấp nhận kết quả đánh giá. Nghiên cứu sinh phải sửa chữa lại luận án, trong khi một thành viên hội đồng không công nhận luận án tiến sĩ này.\r\n\r\nSự việc càng trở nên rõ ràng về trách nhiệm và thiếu sót của những người trong cuộc cùng các bên liên quan gồm chính nghiên cứu sinh, đội ngũ giảng viên hướng dẫn, cơ sở đào tạo và hội đồng đánh giá luận án tiến sĩ. ', '1016.jpg', 12),
(50, 34, 'Balo leo núi', 100000.00, 'Sau khi dư luận lên tiếng, Bộ Giáo dục và Đào tạo đã tổ chức hội đồng thẩm định lại kết quả luận án tiến sĩ về giáo dục học liên quan đến bộ môn cầu lông, và đưa ra kết luận không chấp nhận kết quả đánh giá. Nghiên cứu sinh phải sửa chữa lại luận án, trong khi một thành viên hội đồng không công nhận luận án tiến sĩ này.\r\n\r\nSự việc càng trở nên rõ ràng về trách nhiệm và thiếu sót của những người trong cuộc cùng các bên liên quan gồm chính nghiên cứu sinh, đội ngũ giảng viên hướng dẫn, cơ sở đào tạo và hội đồng đánh giá luận án tiến sĩ. ', '1010.jpg', 5),
(51, 33, 'Di động nokia', 250000.00, 'Sau khi dư luận lên tiếng, Bộ Giáo dục và Đào tạo đã tổ chức hội đồng thẩm định lại kết quả luận án tiến sĩ về giáo dục học liên quan đến bộ môn cầu lông, và đưa ra kết luận không chấp nhận kết quả đánh giá. Nghiên cứu sinh phải sửa chữa lại luận án, trong khi một thành viên hội đồng không công nhận luận án tiến sĩ này.\r\n\r\nSự việc càng trở nên rõ ràng về trách nhiệm và thiếu sót của những người trong cuộc cùng các bên liên quan gồm chính nghiên cứu sinh, đội ngũ giảng viên hướng dẫn, cơ sở đào tạo và hội đồng đánh giá luận án tiến sĩ. ', '1032.jpg', 7),
(52, 36, 'Mũ', 50000.00, 'Sau khi dư luận lên tiếng, Bộ Giáo dục và Đào tạo đã tổ chức hội đồng thẩm định lại kết quả luận án tiến sĩ về giáo dục học liên quan đến bộ môn cầu lông, và đưa ra kết luận không chấp nhận kết quả đánh giá. Nghiên cứu sinh phải sửa chữa lại luận án, trong khi một thành viên hội đồng không công nhận luận án tiến sĩ này.\r\n\r\nSự việc càng trở nên rõ ràng về trách nhiệm và thiếu sót của những người trong cuộc cùng các bên liên quan gồm chính nghiên cứu sinh, đội ngũ giảng viên hướng dẫn, cơ sở đào tạo và hội đồng đánh giá luận án tiến sĩ. ', '1014.jpg', 8),
(53, 37, 'Mũ tròn', 120000.00, 'Sau khi dư luận lên tiếng, Bộ Giáo dục và Đào tạo đã tổ chức hội đồng thẩm định lại kết quả luận án tiến sĩ về giáo dục học liên quan đến bộ môn cầu lông, và đưa ra kết luận không chấp nhận kết quả đánh giá. Nghiên cứu sinh phải sửa chữa lại luận án, trong khi một thành viên hội đồng không công nhận luận án tiến sĩ này.\r\n\r\nSự việc càng trở nên rõ ràng về trách nhiệm và thiếu sót của những người trong cuộc cùng các bên liên quan gồm chính nghiên cứu sinh, đội ngũ giảng viên hướng dẫn, cơ sở đào tạo và hội đồng đánh giá luận án tiến sĩ. ', '1007.jpg', 22),
(54, 37, 'mu', 1223352.00, 'Sau khi dư luận lên tiếng, Bộ Giáo dục và Đào tạo đã tổ chức hội đồng thẩm định lại kết quả luận án tiến sĩ về giáo dục học liên quan đến bộ môn cầu lông, và đưa ra kết luận không chấp nhận kết quả đánh giá. Nghiên cứu sinh phải sửa chữa lại luận án, trong khi một thành viên hội đồng không công nhận luận án tiến sĩ này.\r\n\r\nSự việc càng trở nên rõ ràng về trách nhiệm và thiếu sót của những người trong cuộc cùng các bên liên quan gồm chính nghiên cứu sinh, đội ngũ giảng viên hướng dẫn, cơ sở đào tạo và hội đồng đánh giá luận án tiến sĩ. ', 'kcn.jfif', 0),
(56, 33, 'Samsug', 100000.00, 'Sau khi dư luận lên tiếng, Bộ Giáo dục và Đào tạo đã tổ chức hội đồng thẩm định lại kết quả luận án tiến sĩ về giáo dục học liên quan đến bộ môn cầu lông, và đưa ra kết luận không chấp nhận kết quả đánh giá. Nghiên cứu sinh phải sửa chữa lại luận án, trong khi một thành viên hội đồng không công nhận luận án tiến sĩ này.\r\n\r\nSự việc càng trở nên rõ ràng về trách nhiệm và thiếu sót của những người trong cuộc cùng các bên liên quan gồm chính nghiên cứu sinh, đội ngũ giảng viên hướng dẫn, cơ sở đào tạo và hội đồng đánh giá luận án tiến sĩ. ', '1033.png', 30),
(57, 34, 'Vali đen', 12325.00, 'Sau khi dư luận lên tiếng, Bộ Giáo dục và Đào tạo đã tổ chức hội đồng thẩm định lại kết quả luận án tiến sĩ về giáo dục học liên quan đến bộ môn cầu lông, và đưa ra kết luận không chấp nhận kết quả đánh giá. Nghiên cứu sinh phải sửa chữa lại luận án, trong khi một thành viên hội đồng không công nhận luận án tiến sĩ này.\r\n\r\nSự việc càng trở nên rõ ràng về trách nhiệm và thiếu sót của những người trong cuộc cùng các bên liên quan gồm chính nghiên cứu sinh, đội ngũ giảng viên hướng dẫn, cơ sở đào tạo và hội đồng đánh giá luận án tiến sĩ. ', '1030.jpg', 18),
(58, 38, 'daszccxc', 12000000.00, 'Sau khi dư luận lên tiếng, Bộ Giáo dục và Đào tạo đã tổ chức hội đồng thẩm định lại kết quả luận án tiến sĩ về giáo dục học liên quan đến bộ môn cầu lông, và đưa ra kết luận không chấp nhận kết quả đánh giá. Nghiên cứu sinh phải sửa chữa lại luận án, trong khi một thành viên hội đồng không công nhận luận án tiến sĩ này.\r\n\r\nSự việc càng trở nên rõ ràng về trách nhiệm và thiếu sót của những người trong cuộc cùng các bên liên quan gồm chính nghiên cứu sinh, đội ngũ giảng viên hướng dẫn, cơ sở đào tạo và hội đồng đánh giá luận án tiến sĩ. ', '1034.jpg', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(10) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(225) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(13, 'admin', '123', 'minh@gmail.com', 'thanh hoa', '0232362877', 1),
(14, 'minh', '123', 'Minhdoan4473@gmail.com', NULL, NULL, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
