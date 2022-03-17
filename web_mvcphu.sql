-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2021 lúc 10:02 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mvcphu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(2, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(15, 'Nike'),
(16, 'Converse'),
(17, 'Adidas'),
(18, 'Vans');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `size`, `quantity`, `image`) VALUES
(211, 45, '', 'Nike Jordan 4', '1500000', 35, 1, '6d2853a14e.png'),
(212, 58, '', 'Converse Chuck Taylor 1970s ', '1200000', 41, 3, '35cf4ca7fe.png'),
(213, 54, '', 'Adidas Yeezy 350', '1600000', 35, 1, 'ce25ea6e5f.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(18, 'Nike'),
(19, 'Adidas'),
(20, 'Converse'),
(21, 'Vans');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contactId` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `mess` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_contact`
--

INSERT INTO `tbl_contact` (`contactId`, `name`, `email`, `phone`, `mess`) VALUES
(8, 'Trang Hán Siêu', 'tranghansieu123@gmail.com', '0383356646', 'Cho em hỏi hàng em giao đến đâu rồi à'),
(9, 'Khánh', 'tdkhanh.20it6@vku.udn.vn', '0383356646', 'Hi em chào anh ạ'),
(11, 'Pham Van Dat', 'pvdat@gmail.com', '0383356789', 'Cho em hỏi đơn hàng của em được gửi chưa ạ'),
(12, 'Trang Hán Siêu', 'tranghansieu123@gmail.com', '+84383356646', 'hi'),
(13, 'Trang Hán Siêu', 'tranghansieu123@gmail.com', '+84383356646', 'sao đơn hàng mình lâu vậy'),
(33, '', 'tranghansieu1263@gmail.com', '', ''),
(34, '', 'tranghansieu12344@gmail.com', '', ''),
(35, '', 'tranghansieu12344@gmail.com', '', ''),
(36, 'Trang Hán Siêu', 'tranghansieu123@gmail.com', '+84383356646', 'hihihihihi'),
(37, '', 'testemail@gmail.com', '', ''),
(38, 'test bài', 'testmuahang@gmail.com', '0383356646', 'cho em hỏi với');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `zipcode`, `phone`, `email`, `password`, `type`) VALUES
(27, 'test bài', 'Kinh Thị-Trung Sơn-Gio Linh-Quảng Trị', 'Gio Linh', '70000', '0383356646', 'test@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(36, 'Pham Van Dat', 'Phúc Linh-Quảng Nam', 'Quảng Nam', '48000', '0383768456', 'pvdat@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(37, 'test', 'Kinh Thị-Trung Sơn-Gio Linh-Quảng Trị', 'Gio Linh', '70000', '0383356646', 'testmuahang@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `size` int(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `size`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(143, 45, 'Nike Jordan 4', 36, 40, 2, '3000000', '6d2853a14e.png', 2, '2021-11-30 13:45:47'),
(145, 49, 'Vans Vault Old Skool', 36, 38, 2, '2000000', '59656f0dd6.png', 2, '2021-11-30 13:45:47'),
(146, 45, 'Nike Jordan 4', 27, 38, 1, '1500000', '6d2853a14e.png', 2, '2021-11-30 13:47:00'),
(147, 54, 'Adidas Yeezy 350', 27, 35, 1, '1600000', 'ce25ea6e5f.png', 2, '2021-11-30 13:47:00'),
(149, 50, 'Vans Vault OG Classic', 27, 35, 1, '1000000', '5ef46ceecc.png', 2, '2021-11-30 13:47:00'),
(150, 45, 'Nike Jordan 4', 27, 37, 1, '1500000', '6d2853a14e.png', 2, '2021-12-01 07:05:20'),
(151, 54, 'Adidas Yeezy 350', 27, 35, 2, '3200000', 'ce25ea6e5f.png', 0, '2021-12-01 18:43:09'),
(152, 46, ' Nike Jordan 4', 27, 38, 3, '4500000', 'ac9373fc97.png', 0, '2021-12-02 03:02:02'),
(155, 66, 'Converse Chuck  1970s', 27, 35, 1, '1300000', '5ca03604c8.png', 2, '2021-12-02 03:58:45'),
(156, 59, 'Converse Chuck Taylor 1970s ', 27, 35, 1, '1200000', '49fd8749ce.png', 1, '2021-12-02 09:40:52'),
(157, 47, 'Nike Jordan 4', 27, 35, 1, '1400000', '28b51789d9.png', 0, '2021-12-02 09:46:08'),
(158, 46, ' Nike Jordan 4', 27, 35, 1, '1500000', 'ac9373fc97.png', 0, '2021-12-03 03:38:27'),
(159, 46, ' Nike Jordan 4', 27, 35, 1, '1500000', 'ac9373fc97.png', 0, '2021-12-03 05:15:10'),
(160, 57, 'Converse Chuck  1970s', 36, 38, 5, '6000000', '965d11f80d.png', 2, '2021-12-03 09:00:17'),
(161, 54, 'Adidas Yeezy 350', 27, 39, 10, '16000000', 'ce25ea6e5f.png', 0, '2021-12-03 09:03:26'),
(162, 59, 'Converse Chuck Taylor 1970s ', 27, 40, 1, '1200000', '49fd8749ce.png', 0, '2021-12-04 03:55:51'),
(163, 49, 'Vans Vault Old Skool', 37, 39, 1, '1000000', '59656f0dd6.png', 0, '2021-12-04 08:39:36'),
(164, 45, 'Nike Jordan 4', 37, 35, 1, '1500000', '6d2853a14e.png', 1, '2021-12-04 08:44:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(45, 'Nike Jordan 4', '006', '30', '6', '24', 18, 15, '<p>Gi&agrave;y Nike Jordan 4 l&agrave; một trong những phối m&agrave;u cực kỳ hot trong series 1s n&oacute;i chung v&agrave; cũng l&agrave; những phối m&agrave;u trường kỳ với thời gian được ph&aacute;t h&agrave;nh v&agrave;o năm 1985. M&ugrave;a h&egrave; 2019, Jordan Brand đ&atilde; nhanh tay chuẩn bị ph&aacute;t h&agrave;nh ra phi&ecirc;n...</p>\r\n', 0, '1500000', '6d2853a14e.png'),
(46, ' Nike Jordan 4', '008', '30', '0', '30', 18, 15, '<p>Gi&agrave;y Nike Jordan 4 l&agrave; một trong những phối m&agrave;u cực kỳ hot trong series 1s n&oacute;i chung v&agrave; cũng l&agrave; những phối m&agrave;u trường kỳ với thời gian được ph&aacute;t h&agrave;nh v&agrave;o năm 1985. M&ugrave;a h&egrave; 2019, Jordan Brand đ&atilde; nhanh tay chuẩn bị ph&aacute;t h&agrave;nh ra phi&ecirc;n...</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, '1500000', 'ac9373fc97.png'),
(47, 'Nike Jordan 4', '009', '40', '0', '40', 18, 15, '<p>Gi&agrave;y Nike Jordan 4 l&agrave; một trong những phối m&agrave;u cực kỳ hot trong series 1s n&oacute;i chung v&agrave; cũng l&agrave; những phối m&agrave;u trường kỳ với thời gian được ph&aacute;t h&agrave;nh v&agrave;o năm 1985. M&ugrave;a h&egrave; 2019, Jordan Brand đ&atilde; nhanh tay chuẩn bị ph&aacute;t h&agrave;nh ra phi&ecirc;n...</p>\r\n', 0, '1400000', '28b51789d9.png'),
(48, 'Nike Jordan 4', '007', '40', '0', '40', 18, 15, '<p>Gi&agrave;y Nike Jordan 4 l&agrave; một trong những phối m&agrave;u cực kỳ hot trong series 1s n&oacute;i chung v&agrave; cũng l&agrave; những phối m&agrave;u trường kỳ với thời gian được ph&aacute;t h&agrave;nh v&agrave;o năm 1985. M&ugrave;a h&egrave; 2019, Jordan Brand đ&atilde; nhanh tay chuẩn bị ph&aacute;t h&agrave;nh ra phi&ecirc;n...</p>\r\n', 0, '1500000', 'c8fd06373e.png'),
(49, 'Vans Vault Old Skool', '005', '40', '2', '38', 21, 18, '<p><span>VANS</span><span>&nbsp;được cộng đồng thể thao biết đến như một thương hiệu thời trang chuy&ecirc;n về gi&agrave;y d&agrave;nh cho c&aacute;c bộ m&ocirc;n nghệ thuật đường phố, nổi bật l&agrave; trượt v&aacute;n.&nbsp;</span></p>', 1, '1000000', '59656f0dd6.png'),
(50, 'Vans Vault OG Classic', '003', '40', '1', '39', 21, 18, '<p><span>VANS</span><span>&nbsp;được cộng đồng thể thao biết đến như một thương hiệu thời trang chuy&ecirc;n về gi&agrave;y d&agrave;nh cho c&aacute;c bộ m&ocirc;n nghệ thuật đường phố, nổi bật l&agrave; trượt v&aacute;n.&nbsp;</span></p>', 1, '1000000', '5ef46ceecc.png'),
(51, 'Vans Vault Old Skool', '004', '40', '0', '40', 21, 18, '<p><span>VANS</span><span>&nbsp;được cộng đồng thể thao biết đến như một thương hiệu thời trang chuy&ecirc;n về gi&agrave;y d&agrave;nh cho c&aacute;c bộ m&ocirc;n nghệ thuật đường phố, nổi bật l&agrave; trượt v&aacute;n.&nbsp;</span></p>', 1, '1000000', '4d9e3cf055.png'),
(52, 'Vans Vault Old Skool', '002', '30', '0', '33', 21, 18, '<p><span>VANS</span><span>&nbsp;được cộng đồng thể thao biết đến như một thương hiệu thời trang chuy&ecirc;n về gi&agrave;y d&agrave;nh cho c&aacute;c bộ m&ocirc;n nghệ thuật đường phố, nổi bật l&agrave; trượt v&aacute;n.&nbsp;</span></p>', 1, '1000000', '79bde9507e.png'),
(53, 'Adidas Yeezy 350', '013', '30', '2', '28', 19, 17, '<p><span>H&agrave;ng loạt bản mẫu. H&agrave;ng loạt cải tiến. H&agrave;ng loạt thử nghiệm. H&atilde;y đồng h&agrave;nh c&ugrave;ng ch&uacute;ng t&ocirc;i tr&ecirc;n h&agrave;nh tr&igrave;nh t&igrave;m kiếm sự h&ograve;a hợp đỉnh cao giữa trọng lượng, sự &ecirc;m &aacute;i v&agrave; độ đ&agrave;n hồi.&nbsp;</span></p>', 0, '1700000', 'c391401e30.png'),
(54, 'Adidas Yeezy 350', '012', '30', '1', '29', 19, 17, '<p><span>H&agrave;ng loạt bản mẫu. H&agrave;ng loạt cải tiến. H&agrave;ng loạt thử nghiệm. H&atilde;y đồng h&agrave;nh c&ugrave;ng ch&uacute;ng t&ocirc;i tr&ecirc;n h&agrave;nh tr&igrave;nh t&igrave;m kiếm sự h&ograve;a hợp đỉnh cao giữa trọng lượng, sự &ecirc;m &aacute;i v&agrave; độ đ&agrave;n hồi.&nbsp;</span></p>', 1, '1600000', 'ce25ea6e5f.png'),
(55, 'Adidas Yeezy 350', '011', '40', '0', '40', 19, 17, '<p><span>H&agrave;ng loạt bản mẫu. H&agrave;ng loạt cải tiến. H&agrave;ng loạt thử nghiệm. H&atilde;y đồng h&agrave;nh c&ugrave;ng ch&uacute;ng t&ocirc;i tr&ecirc;n h&agrave;nh tr&igrave;nh t&igrave;m kiếm sự h&ograve;a hợp đỉnh cao giữa trọng lượng, sự &ecirc;m &aacute;i v&agrave; độ đ&agrave;n hồi.&nbsp;</span></p>', 1, '1500000', '762b0ca7c1.png'),
(56, 'Adidas Yeezy 350', '010', '40', '0', '40', 19, 17, '<p><span>H&agrave;ng loạt bản mẫu. H&agrave;ng loạt cải tiến. H&agrave;ng loạt thử nghiệm. H&atilde;y đồng h&agrave;nh c&ugrave;ng ch&uacute;ng t&ocirc;i tr&ecirc;n h&agrave;nh tr&igrave;nh t&igrave;m kiếm sự h&ograve;a hợp đỉnh cao giữa trọng lượng, sự &ecirc;m &aacute;i v&agrave; độ đ&agrave;n hồi.&nbsp;</span></p>', 1, '1700000', 'e2a8628da8.png'),
(57, 'Converse Chuck  1970s', '014', '30', '15', '15', 20, 16, '<p>Phải khẳng định rằng,&nbsp;<em>Converse&nbsp;</em>chưa bao giờ l&agrave;m người h&acirc;m mộ thất vọng đối với c&aacute;c c&aacute;ch thể hiện sản phẩm của m&igrave;nh.&nbsp;</p>\r\n', 0, '1200000', '965d11f80d.png'),
(58, 'Converse Chuck Taylor 1970s ', '015', '30', '2', '28', 20, 16, '<p>Phải khẳng định rằng,&nbsp;<em>Converse&nbsp;</em>chưa bao giờ l&agrave;m người h&acirc;m mộ thất vọng đối với c&aacute;c c&aacute;ch thể hiện sản phẩm của m&igrave;nh.&nbsp;</p>\r\n', 0, '1200000', '35cf4ca7fe.png'),
(59, 'Converse Chuck Taylor 1970s ', '016', '30', '2', '28', 20, 16, '<p>Phải khẳng định rằng,&nbsp;<em>Converse&nbsp;</em>chưa bao giờ l&agrave;m người h&acirc;m mộ thất vọng đối với c&aacute;c c&aacute;ch thể hiện sản phẩm của m&igrave;nh.&nbsp;</p>\r\n', 0, '1200000', '49fd8749ce.png'),
(66, 'Converse Chuck  1970s', '017', '30', '40', '1', 20, 16, '<p>Phải khẳng định rằng,&nbsp;<em>Converse&nbsp;</em>chưa bao giờ l&agrave;m người h&acirc;m mộ thất vọng đối với c&aacute;c c&aacute;ch thể hiện sản phẩm của m&igrave;nh.&nbsp;</p>\r\n', 1, '1300000', '5ca03604c8.png'),
(67, 'Giày Nike Air Jordan 1', '', '30', '0', '30', 18, 15, '<p>test b&agrave;i</p>\r\n', 1, '1200000', '931dfe8f19.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_mota` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_mota`, `slider_image`, `type`) VALUES
(82, 'Chính sách ưu đãi', 'Mua giày sneaker giao tận nơi và tham khảo thêm nhiều sản phẩm khác. Miễn phí vận chuyển toàn quốc cho mọi đơn hàng . Đổi trả dễ dàng. Thanh toán bảo mật.', 'cbdc0693d7.png', 2),
(84, 'Dẫn đầu xu hướng', 'Xu hướng giày thể thao (sneakers) luôn là một trong những “dòng chảy” chính yếu của thời trang được giới mộ điệu thời trang quan tâm nhất.', '97faaffa31.png', 5),
(104, 'Thiết kế hiện đại', 'Sneaker là món đồ không thể thiếu trong tủ đồ của mọi cô gái bởi nó không quá cầu kỳ về hình thức lại khá dễ để kết hợp với bất kì phong cách thời trang nào.', '92ddc604d8.png', 6),
(112, 'RUNNING COLLECTION', 'Tổng hợp những mẫu giày tích hợp những tính năng ưu việt cho việc chạy bộ.', '1221ebe918.jpg', 3),
(113, 'ADIDAS COLLECTION', 'Tổng hợp những mẫu giày đẹp, thời trang , xu hướng.', 'e90eb68469.png', 4),
(114, 'Nike Collection', 'Kể từ những đôi giày đầu tiên mà hãng sản xuất là Nike “Cortez” cũng đã nhận được vô số lời khen cũng như mang đến cho Nike một lượng lớn fan hâm mộ kể từ đó, theo thời gian hãng không ngừng nghiên cứu và phát triển để cho ra mắt những mẫu giày được cải tiến.', 'ed8946e655.png', 7),
(115, 'Adidas Collection', 'Thương hiệu giày Adidas trong hơn 70 năm hình thành và phát triển đã tạo được ấn tượng đặc biệt cho các tín đồ thời trang, đặc biệt là những người yêu thích giày và đã có mặt ở hầu khắp các quốc gia trên Thế giới.', '920a5389fc.png', 8),
(116, 'NIKE COLLECTION', 'Tổng hợp những mẫu giày đẹp, thời trang , xu hướng.', '3cb6b5de2c.png', 9),
(117, 'CONVERSE COLLECTION', 'Tổng hợp những mẫu giày đẹp, thời trang , xu hướng.', '794b1b61e7.png', 11),
(118, 'ADIDAS COLLECTION', 'Tổng hợp những mẫu giày đẹp, thời trang , xu hướng.', 'b2f9893d39.png', 10),
(119, 'VANS COLLECTION', 'Tổng hợp những mẫu giày đẹp, thời trang , xu hướng.', '65936a522f.png', 12),
(120, 'Nike Collection', 'Kể từ những đôi giày đầu tiên mà hãng sản xuất là Nike “Cortez” cũng đã nhận được vô số lời khen cũng như mang đến cho Nike một lượng lớn fan hâm mộ kể từ đó, theo thời gian hãng không ngừng nghiên cứu và phát triển để cho ra mắt những mẫu giày được cải tiến.', '30fde37402.png', 13),
(121, 'Converse Collection', 'Converse là một trong những thương hiệu giày nổi tiếng và uy tín nhất trên thế giới với lịch sử phát triển hơn 100 năm. Đến 60% người Mỹ đều sở hữu ít nhất 1 đôi giày từ nhãn hiệu Converse. Với thiết kế đơn giản, trẻ trung và năng động, Converse trở thành một must-have item trong bộ sưu tập giày của tất cả mọi người.', 'f64ad7ec7d.png', 15),
(122, 'Adidas Collection', 'Thương hiệu giày Adidas trong hơn 70 năm hình thành và phát triển đã tạo được ấn tượng đặc biệt cho các tín đồ thời trang, đặc biệt là những người yêu thích giày và đã có mặt ở hầu khắp các quốc gia trên Thế giới.', 'c0544f03d2.png', 14),
(123, 'Vans Collection', 'Hãng giày Vans được ông Paul Van Doren, một nhân viên nhà máy giày, sáng lập vào năm 1966. Sau vài năm làm việc tại xưởng giày Randy\'s, Doren gặt hái kinh nghiệm và quyết định thành lập một thương hiệu giày của riêng mình.', '1b240a34ce.png', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 18:31:22'),
(2, 21, '10', '2019-07-16 18:32:03'),
(3, 21, '3', '2019-07-16 18:42:59'),
(4, 20, '5', '2019-07-16 18:51:40'),
(5, 34, '50', '2021-11-17 16:11:34'),
(6, 34, '69', '2021-11-17 16:12:42'),
(7, 60, '10', '2021-11-26 04:02:19'),
(8, 66, '10', '2021-12-02 03:00:43'),
(9, 66, '1', '2021-12-02 04:00:52'),
(10, 52, '3', '2021-12-03 06:40:07');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contactId`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contactId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
