-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2022 lúc 03:17 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webshop_dotreem`
--
CREATE DATABASE IF NOT EXISTS `webshop_dotreem` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `webshop_dotreem`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_image`
--

DROP TABLE IF EXISTS `banner_image`;
CREATE TABLE `banner_image` (
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `title` varchar(64) DEFAULT NULL,
  `sub_title` varchar(64) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner_image`
--

INSERT INTO `banner_image` (`banner_id`, `link`, `image`, `sort_order`, `title`, `sub_title`, `description`, `price`, `status`) VALUES
(1, 'index.php?route=product/manufacturer/info&manufacturer_id=7', 'catalog/banners/e6e8b3c0f10ab379aab6e4c46df61b4b.jpg', 0, 'HP Banner', '', '<p><br></p>', '0.0000', 0),
(2, '/product-info.php?product_id=63', 'catalog/banners/7cde5902e3293fac1ae266029d5992c4.jpg', 1, '', '', '<p><br></p>', '21000000.0000', 1),
(3, '/product-info.php?product_id=69', 'catalog/banners/e6e8b3c0f10ab379aab6e4c46df61b4b.jpg', 2, '', 'Sieu pham cua Apple', '<p><br></p>', '0.0000', 1),
(4, 'https://www.apple.com/iphone-x/', 'catalog/banners/0be12909b1f0851e6876db639851bbd4.jpg', 0, '', 'Say Hello to Future !', '<p><br></p>', '16000000.0000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `name`, `description`, `featured`) VALUES
(24, 'catalog/customers/Betrai/c537496dfee7021732909dcc42d821c8.png', 0, 1, 0, 0, 1, '2009-01-20 02:36:26', '2022-10-12 09:08:28', 'Đồ Bé Trai', 'We always stay in touch with the latest fashion tendencies and hi-tech achievements.', 1),
(70, 'catalog/customers/Begai/03efc72414c988e26662d811be5d923c.jpg', 0, 1, 0, 1, 1, '2016-02-23 13:58:14', '2022-10-12 09:02:11', 'Đồ Bé Gái', '<p><br></p>', 1),
(71, 'catalog/customers/Phukien/2f4e2a65f3f5fef18e13d53be474f102.jpg', 0, 1, 0, 4, 1, '2016-02-23 13:58:39', '2022-10-12 09:05:50', 'Phụ Kiện', '<p><br></p>', 1),
(72, 'catalog/customers/53335f0fd19bea4513321aa94644b561.jpg', 0, 1, 0, 2, 1, '2016-02-23 13:59:01', '2022-09-21 09:46:17', 'Đồ Sơ SInh', '<p><br></p>', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_path`
--

DROP TABLE IF EXISTS `category_path`;
CREATE TABLE `category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category_path`
--

INSERT INTO `category_path` (`category_id`, `path_id`, `level`) VALUES
(24, 24, 0),
(70, 70, 0),
(71, 71, 0),
(72, 72, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `website` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `subject`, `message`, `date_added`, `date_modified`, `phone`, `date`, `address`, `website`) VALUES
(9, 'Lê Minh Họa', 'hoa@gmail.com', 'V/v chính sách khách hàng', 'Tôi có một vài điểm không đồng thuận về chính sách khách hàng.\r\nTôi có một vài điểm không đồng thuận về chính sách khách hàng.\r\nTôi có một vài điểm không đồng thuận về chính sách khách hàng.', '2020-07-05 11:45:21', '2020-07-11 18:11:22', NULL, NULL, NULL, NULL),
(10, 'Ví Văn Dụ', 'vidu@gmail.com', 'Khiếu nại về chất lượng sản phẩm', 'Tôi cực lực lên án cách bán hàng của các vị\r\nTôi cực lực lên án cách bán hàng của các vị\r\nTôi cực lực lên án cách bán hàng của các vị', '2020-07-11 18:17:31', '2020-07-11 18:34:18', '+(84)-0912247115', '2020-07-13 09:35:00', NULL, NULL),
(11, 'Khách Văn Hàng', 'hang@gmail.com', 'Khiếu nại về chất lượng sản phẩm', 'Tôi cực lực lên án\r\nTôi cực lực lên án\r\nTôi cực lực lên án\r\nTôi cực lực lên án', '2020-07-11 22:12:42', '2020-07-14 14:43:59', '0915147115', '2020-07-15 12:15:00', '285 Đội Cấn. Hà Nội', 'http://hang.org');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `address` varchar(128) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `fullname`, `email`, `telephone`, `address`, `password`, `status`, `date_added`) VALUES
(1, 'Bình', 'binh@fpt.vn', '0979999999', '285 Doi Can, Ba Dinh, HaNoi', '$2y$10$T.kuGeuZQRLuWraL3zclZuHl67q8InDwn4tmzFJ/Tn4lCb2OqaK5G', 1, '2015-07-10 13:37:34'),
(3, 'Quảng', 'quang@bkav.com', '0915686868', '69 Quan Hoa Cầu Giấy Hà Nội', '$2y$10$yeJkGSXTPLQoBX6QqjPlteI9qE496Qkl0z7jsQK0PJUa/pf9kOtua', 1, '2016-03-02 10:55:52'),
(4, 'Đức', 'demo@project.com', '0968686868', 'Playku Gialai2', '$2y$10$P1kJFjMxDqMP0jRhkkXVPuDv8hGLEDLGxmLyaX39.QObjsl0usu9.', 1, '2016-03-06 23:14:33'),
(5, 'Linh', 'linh@gmail.com', '0915147115', 'Hanoi 2', '$2y$10$KcH17v0lydo.ak/7.fEOdO3kPAE1nlZubuhlM3ygN9WBdYRjJ2TAS', 1, '2020-07-03 15:20:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`, `featured`) VALUES
(6, 'BabyShop', 'catalog/categories/nhanhang/b32a126b83019b08193d7a0e90bb426c.jpg', 0, 1),
(7, 'KidsClothes', 'catalog/categories/nhanhang/67cafce5b4f41b1e612524bf586a09e1.jpg', 0, 1),
(8, 'BeeBaby', 'catalog/categories/nhanhang/dd741ab82c0d19a24b179d0245ab3bd9.jpg', 0, 1),
(9, 'Bunny', 'catalog/categories/nhanhang/035a04f5be419d1bc978bacc3bbdaa33.jpg', 0, 1),
(10, 'Sweetbaby', 'catalog/categories/nhanhang/23dc986fdc14f6adc7420ccb9f177d2a.jpg', 0, 1),
(35, 'TinyToes', 'catalog/categories/nhanhang/0a6b550822916d82ffc48c541db55956.jpg', 0, 1),
(36, 'KidsClothes', 'catalog/categories/nhanhang/704cfadedfdc0f671fe7fc6cebafa7c5.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `email`, `telephone`, `fullname`, `address`, `comment`, `total`, `date_added`) VALUES
(23, 4, 'minhhoahuuvu@gmail.com', '043668866', 'Đức', '285 Doi Can', '', '601.0000', '2015-05-11 22:52:08'),
(25, 4, 'minhhoa2@gmail.com', '0968222222', 'Đức', 'Ngõ 285 Đội Cấn 1', '', '12020000.0000', '2015-06-16 04:16:17'),
(26, 4, 'minhhoa3@gmail.com', '0968333333', 'Đức', 'hà nội 3', '', '4020000.0000', '2015-06-16 04:24:58'),
(27, 4, 'minhhoa4@gmail.com', '0968444444', 'Đức', 'Ngõ 285 Đội Cấn 4', '', '16020000.0000', '2015-06-16 09:36:03'),
(28, 4, 'minhhoa5@gmail.com', '0968555555', 'Đức', 'Palo Alto CA 5', 'Some comment 5, Some comment 5, Some comment 5, Some comment 5\r\nSome comment 5, Some comment 5, Some comment 5, Some comment 5\r\nSome comment 5, Some comment 5, Some comment 5, Some comment 5', '16020000.0000', '2015-06-17 08:14:16'),
(29, 4, 'minhhoa6@gmail.com', '0968 666 666', 'Đức', 'Palo Alto CA 6', 'Some comment on order 6, Some comment on order 6, Some comment on order 6\r\nSome comment on order 6, Some comment on order 6, Some comment on order 6\r\nSome comment on order 6, Some comment on order 6, Some comment on order 6', '12020000.0000', '2015-06-17 09:17:52'),
(30, 4, 'minhhoa7@gmail.com', '0968777777', 'Đức', 'Address 7', 'Some comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7\r\nSome comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7\r\nSome comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7', '14020000.0000', '2015-07-01 05:44:03'),
(31, 4, 'minhhoa8@gmail.com', '0968888888', 'Đức', '285 Doi Can Hanoi', 'I like these products', '6020000.0000', '2015-07-09 09:09:08'),
(32, 4, 'minhhoa9@gmail.com', '0968999999', 'Đức', '285 Doi Can 9', 'Fuck it offf', '14020000.0000', '2015-07-09 09:10:55'),
(33, 4, 'minhhoa10@gmail.com', '0968101010', 'Đức', '258 Doi Can 10', '', '4020000.0000', '2015-07-09 09:14:08'),
(34, 4, 'minhhoa10@gmail.com', '0968101010', 'Đức', '258 Doi Can 10', '', '4020000.0000', '2015-07-09 09:15:17'),
(35, 4, 'minhhoa12@gmail.com', '0968111111', 'Đức', '285 Doi Can', 'Don hang nay mang so bao danh 11', '34020000.0000', '2015-07-09 13:33:00'),
(36, 4, 'minhhoa13@gmail.com', '09681313133', 'Đức', '285 Doi Can 13', 'Fuck offf 13', '4020000.0000', '2015-07-09 13:41:13'),
(37, 1, 'minhhoa@gmail.com', '0968802828', 'minhhoa', '285 Doi Can, Ba Dinh, HaNoi', '', '12020000.0000', '2015-07-11 10:02:33'),
(38, 1, 'minhhoa@gmail.com', '0968802828', 'minhhoa', '285 Doi Can, Ba Dinh, HaNoi', '', '16020000.0000', '2015-07-11 10:02:56'),
(39, 1, 'minhhoa@gmail.com', '0968802828', 'minhhoa', '285 Doi Can, Ba Dinh, HaNoi', 'Some test comment from minhhoa', '6020000.0000', '2015-07-11 11:06:09'),
(40, 4, 'demo@project.com', '0968686868', 'Đức', 'Playku Gialai2', 'Đây là những sản phẩm công nghệ đắt tiền tôi yêu thích, quý công ty vui lòng vận chuyển cẩn thận và phải trực tiếp đến tay tôi.', '82720000.0000', '2016-12-30 09:29:24'),
(41, 0, 'tham@gmail.com', '09688028282', 'Thám', '285 Đội Cấn', 'Đây chỉ là một màn test', '13360000.0000', '2017-04-03 15:57:06'),
(42, 4, 'demo@project.com', '0968686868', 'Đức', 'Playku Gialai2', 'Hello 20170405', '10100000.0000', '2017-04-05 09:41:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`) VALUES
(23, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000'),
(23, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000'),
(25, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(25, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(26, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(26, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(27, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(27, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(27, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(27, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(28, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(28, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(28, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(28, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(29, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(29, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(30, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(30, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(30, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(31, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(31, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(31, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(32, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(32, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(32, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(34, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(34, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(35, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(35, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(35, 43, 'MacBook', 'Product 16', 3, '10000000.0000', '30000000.0000'),
(36, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(36, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(37, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(37, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(38, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(38, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(38, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(38, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(39, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(39, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(39, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(40, 30, 'Pixel C', 'Product 3', 2, '11340000.0000', '22680000.0000'),
(40, 40, 'iPhone 3gs', '3GS', 2, '2020000.0000', '4040000.0000'),
(40, 41, 'iMac', 'iMac MK142ZP/A', 1, '26000000.0000', '26000000.0000'),
(40, 43, 'MacBook', 'Mac Old', 3, '10000000.0000', '30000000.0000'),
(41, 30, 'Pixel C', 'Product 3', 1, '11340000.0000', '11340000.0000'),
(41, 40, 'iPhone 3gs', '3GS', 1, '2020000.0000', '2020000.0000'),
(42, 40, 'iPhone 3gs', '3GS', 5, '2020000.0000', '10100000.0000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tag` text DEFAULT NULL,
  `best_seller` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `model`, `image`, `manufacturer_id`, `price`, `sort_order`, `status`, `date_added`, `date_modified`, `name`, `description`, `tag`, `best_seller`, `featured`) VALUES
(28, '', 'catalog/customers/Dososinh/8509aff8ba78ee8ef43ff95bfdec3157.jpg', 8, '200000.0000', 0, 1, '2009-02-03 16:06:50', '2022-10-26 21:39:11', 'Set vest kèm body dài – BU Baby', '<p><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Set áo dài tay kèm body yếm là trang phục xinh xắn dành cho các em bé từ 06 tháng tuổi. Thiết kế với body dài tay, cúc đũng tiện lợi cho ba mẹ trong quá trình thay đồ cho bé và không khiến bé cảm thấy khó chịu. Kèm theo chiếc áo gile thời trang và ấm áp. Sản phẩm được thiết kế vừa vặn, co giãn tự nhiên, nâng niu từng cử động của bé, giúp bé luôn cảm thấy thoải mái nhất.</span><br></p><ul>\r\n</ul>\r\n', '', 0, 0),
(29, '', 'catalog/customers/Dososinh/6870731aa79d2e1d9d2458886c087bb3.jpg', 6, '199999.0000', 0, 1, '2009-02-03 16:42:17', '2022-10-26 21:44:24', 'Quần legging đùi Bambus B&W – BU BABY', '<p><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Quần legging đùi là trang phục&nbsp;dành cho các em bé từ 06 tháng tuổi.&nbsp;Thiết kế ôm vừa vặn, tạo nên vẻ ngoài&nbsp;năng động, tôn lên đường cong “quyến rũ” từ những chiếc mông tròn xinh của bé.&nbsp;Sản phẩm được sản xuất từ chất liệu Micro Modal mềm mại, thoáng khí, an toàn cho làn da trẻ, áp dụng công nghệ dệt borip (thun gân) siêu co giãn giúp con thoải mái khi vui chơi, vận động.</span><br></p><ul>\r\n</ul>\r\n', '', 0, 0),
(30, '', 'catalog/customers/Betrai/f198ae714cc6de6476b6161094d6cf22.jpg', 9, '399999.0000', 0, 1, '2009-02-03 16:59:00', '2022-10-26 22:26:38', 'Áo khoác cardigan', '<p>Chiếc áo trẻ trung , lịch lãm toát lên được vẻ sang trọng ...</p><p><br></p>', '', 0, 1),
(32, '', 'catalog/customers/Begai/50f57eb2b7cd994464c1e21ca7a58248.jpg', 8, '359999.0000', 0, 1, '2009-02-03 17:07:26', '2022-10-26 22:02:03', 'Váy liền BG thêu mèo', '<h2 style=\"text-align: justify;\">Chiếc váy đầy cá tính cho các công chúa nhỏ , tôn lên vẻ đẹp hồn nhiên ...</h2><h2 style=\"text-align: justify;\"><br></h2>', '', 0, 1),
(33, '', 'catalog/customers/Begai/a4c42e4dc10a00b4c8f30c84f9ef412c.jpg', 9, '200000.0000', 0, 1, '2009-02-03 17:08:31', '2022-10-26 22:15:15', 'Áo dài tay bamboo phối ren', '<div><p></p></div><div><p><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Áo dài tay bamboo phối ren dành cho&nbsp; các bé 6 đến 12 tuổi</span><br></p></div>\r\n', '', 0, 0),
(34, '', 'catalog/customers/Betrai/ab66d73a983b942df22e6b52f038ac72.png', 7, '499999.0000', 0, 1, '2009-02-03 18:07:54', '2022-10-26 22:17:26', 'Blazer bé trai màu trơn GMN', '<h3 class=\"text-normal\"><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Mẫu áo blazer thuộc BST Spring Summer S’22 bé trai với chất liệu Tuytsi cao cấp, form dáng thời trang có ba màu sắc cho các bé lựa chọn.</span><br></h3>', '', 0, 0),
(36, '', 'catalog/customers/Betrai/c04f4ad0d6a80572ff4dba895a98ec9c.png', 7, '199999.0000', 0, 1, '2009-02-03 18:09:19', '2022-10-26 22:21:07', 'Áo sơ mi bé trai kiểu cơ bản LK', '<h2><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Mẫu áo sơ mi dài tay bé trai với chất liệu cotton thoáng mát, kiểu dáng cơ bản dễ dàng kết hợp với các loại trang phục.</span><br></h2>', '', 0, 0),
(40, '', 'catalog/customers/Begai/0a1001e15935bce3e1f7681df3d46cf8.jpg', 8, '299999.0000', 0, 1, '2009-02-03 21:07:12', '2022-10-26 22:09:58', 'Chân váy nhung phối cúc', '<p class=\"intro\">Chiếc chân váy đầy sự cá tính , năng động ...</p><p class=\"intro\"><br></p><img src=\"/web/images/catalog/products/150910-iphone-6s-iphone-6s-plus-official-announcement-03.jpg\" style=\"width: 214.75px; float: right;\"><br><p class=\"intro\"><br></p>\r\n', '', 0, 1),
(41, '', 'catalog/customers/Begai/305c80118694e74ba91968a598e888c2.jpg', 8, '199999.0000', 0, 1, '2009-02-03 21:07:26', '2022-10-26 22:12:07', 'Bộ dài tay in hoạ tiết', '<h2 class=\"hero-headline\"><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Bộ dài tay in họa tiết dành cho các bé từ 6 đến 12 tuổi</span><br></h2>', '', 0, 0),
(43, '', 'catalog/customers/Begai/533d08ce3165b3f155c696cde8efa703.jpg', 9, '259999.0000', 0, 1, '2009-02-03 21:07:49', '2022-10-26 21:57:24', 'Đầm thô màu tay cánh tiên', '<h2><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Mẫu đầm thô cánh tiên Lovekids,chất liệu chun thô mềm mại, thoáng mát.</span><br></h2>', '', 0, 0),
(46, '', 'catalog/customers/Begai/a0845623ee9745715ae6bbe7244f19d1.jpg', 10, '299999.0000', 0, 1, '2009-02-03 21:08:29', '2022-10-26 22:13:55', 'Áo khoác len phối cổ ', '<h2><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Mẫu áo khoác len phối cổ là một trong những thiết kế mới nhất thuộc bộ sưu tập&nbsp; mùa đông năm 2022.</span><br></h2>', '', 0, 0),
(47, '', 'catalog/customers/Begai/738f2520c95c0db933d95731a6071c67.jpg', 6, '359999.0000', 0, 1, '2009-02-03 21:08:40', '2022-10-26 22:07:21', 'Chân váy xòe phối ren', '<p><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Chân váy xòe phối ren dành cho bé từ 6 đến 8 tuổi.</span><br></p>', '', 0, 0),
(48, '', 'catalog/customers/Betrai/49043bcc3e47ccda2a7d140422c15566.png', 9, '259999.0000', 0, 1, '2009-02-08 17:21:51', '2022-10-26 22:22:40', 'Áo len giữ nhiệt BT bổ gấu LK', '<h2><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Mẫu áo dài tay với chất liệu len giữ nhiệt tốt, nằm trong bộ sưu tập Autumn Winter S’21</span><br></h2>', '', 0, 0),
(49, '', 'catalog/customers/Begai/7d3dd348d4c3fa3d10281f54339d1e81.jpg', 7, '399999.0000', 1, 1, '2011-04-26 08:57:34', '2022-10-26 22:00:55', 'Váy nhung babydoll dài tay', '<p><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Váy nhung babydoll dài tay dành cho bé 6 tuổi đến 14 tuổi</span><br></p>\r\n', '', 0, 0),
(60, '', 'catalog/customers/Begai/b6d00a9fab54852444a056c149c19e0e.jpg', 36, '499999.0000', 0, 1, '2015-06-22 06:46:02', '2022-10-26 21:59:12', 'Đầm tiệc hai tầng cộc tay màu trắng', '<p></p><p><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Đầm tiệc hai tầng cộc tay &nbsp;là một trong những mẫu thiết kế mới nhất nằm trong bộ sưu tập thu đông năm 2022</span><br></p>', '', 0, 0),
(63, '', 'catalog/customers/Betrai/b884043e965b2b46c7dfc77beaa7e5b7.jpg', 8, '350000.0000', 1, 1, '2016-02-23 14:33:11', '2022-10-26 22:24:37', 'Áo khoác khaki nam Harmony', '<h2 class=\"hero-subtitle subsection-headline\"><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Mẫu áo khoác khaki nằm trong BST Harmony dành cho bé trai.</span><br></h2>', '...', 0, 0),
(64, '', 'catalog/customers/Phukien/a3e87410e0f50d294a208f01286cced1.jpg', 9, '249999.0000', 1, 1, '2016-02-23 14:50:04', '2022-10-26 21:49:28', 'Giày búp bê tập đi đen trái tim', '<p><span style=\"color: rgb(32, 36, 53); font-family: Inter, sans-serif; font-size: 15px;\">Đôi giầy nhỏ nhỏ xinh xinh phù hợp cho các bé ...</span></p>', '...', 0, 0),
(65, '', 'catalog/customers/Betrai/f4b770c49057fc37d8a1b50751844c6b.jpg', 7, '109999.0000', 1, 1, '2016-02-23 15:12:12', '2022-10-26 22:19:29', 'Áo thun xanh set bé trai Harmony 3', '<div class=\"wrap inner-x left\">\r\n<div class=\"title active black m-black\"><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Áo thun bé trai với thiết kế cá tính nằm trong BST Harmony.</span><br></div><div class=\"desc active black m-black\"><div class=\"wrap inner-x right\"><div class=\"desc active black m-black\"><div class=\"wrap inner-x left\"><div class=\"desc active black m-black\"><div class=\"wrap inner-x right\">\r\n</div></div>\r\n</div></div>\r\n</div></div>\r\n</div>', '...', 0, 0),
(66, 'Lumina 950', 'catalog/customers/Begai/891f7f4b7dfccedfa7ea688b92119bb3.jpg', 7, '435000.0000', 1, 1, '2016-02-23 15:25:42', '2022-10-26 21:55:06', 'Váy thêu hoa cộc tay phối tầng', '<h3 class=\"content-block-enhanced-caption__headline\"><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Váy thêu hoa phối tầng chất liệu thô thêu 100% cotton dành cho các bé gái từ 6 đến 10 tuổi.</span><br></h3><div class=\"content-block-enhanced-caption\"><div class=\"content-block-enhanced-caption-content-wrapper half-wrapper\">\r\n </div>\r\n </div>', '...', 0, 0),
(67, '', 'catalog/customers/Phukien/2bfc6955c72bc3d6c36e3560c60d2033.jpg', 9, '209999.0000', 1, 1, '2016-02-23 16:29:43', '2022-10-26 21:49:48', 'Giày tập đi be phối trắng ', '<p><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Đôi giầy đơn giản được các bé yêu thích.</span><br></p>', '...', 1, 1),
(68, '', 'catalog/customers/Phukien/fce096a51689f16661569d9e7f7cea37.jpg', 36, '59999.0000', 1, 1, '2016-02-23 16:44:19', '2022-10-26 21:51:33', 'Bờm vải hoa xanh', '<p><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Bờm tóc cho bé gái</span><br></p>', '...', 0, 0),
(69, '', 'catalog/customers/Betrai/5f947ed08500c55cb1299045b18e255d.jpg', 8, '149999.0000', 1, 1, '2016-11-22 18:07:40', '2022-10-26 22:05:38', 'Quần khaki trắng phối gối Harmony', '<p><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Mẫu quần khaki dáng dài nằm trong BST Harmony dành cho bé trai.</span><br></p>', '...', 0, 0),
(70, '', 'catalog/customers/Anhphukien/b5b93d0dce37d3c15477e48199f51f07.jpg', 6, '199999.0000', 3, 1, '2022-10-26 21:30:13', '2022-10-26 21:30:13', 'Bộ dài tay cổ tròn Ponie – BU Baby', '<p><span style=\"color: rgb(62, 68, 90); font-family: Inter, sans-serif; font-size: 13px;\">Bộ dài tay cổ tròn Ponie là trang phục thời trang dành cho các&nbsp;em bé từ 06 tháng tuổi. Với thiết kế túi ngực và nơ giả gắn quần, set đồ mang phong cách&nbsp;năng động, thời trang&nbsp;bên cạnh sự thoải mái.&nbsp;Sản phẩm được thiết kế vừa vặn, co giãn tự nhiên, nâng niu từng cử động của bé, giúp bé luôn cảm thấy thoải mái nhất.</span><br></p>', '...', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image`
--

DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image` (
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_image`
--

INSERT INTO `product_image` (`product_id`, `image`, `sort_order`) VALUES
(28, 'catalog/customers/Anhsosinh/272d2d7b1294f93677fe0dab53b3c396.jpg', 3),
(28, 'catalog/customers/Anhsosinh/50003901c69b6bccd8b432efb8af0ce7.jpg', 2),
(28, 'catalog/customers/Anhsosinh/6d95ceff6c85e579a162be6c2079d8cd.jpg', 2),
(29, 'catalog/customers/Anhsosinh/583c3b273b09c7ef0daabb8e30d90091.jpg', 0),
(30, 'catalog/customers/Anhbetrai/dfa4740502157dc61cca7b869d44bd64.jpg', 0),
(30, 'catalog/customers/Anhbetrai/f67c801bd7274b729c61948a6bfdf507.jpg', 0),
(32, 'catalog/customers/Anhbegai/1ee22c1926c2e523bde1fb034786941b.jpg', 0),
(32, 'catalog/customers/Anhbegai/b20f9cdf70ca21d7ada6a12b2896cf56.jpg', 0),
(33, 'catalog/customers/Anhbegai/c8a80fee0450d0174516547d482ecb03.jpg', 0),
(34, 'catalog/customers/Anhbetrai/1b4459f9685b688a99a703c05e405830.png', 0),
(34, 'catalog/customers/Anhbetrai/801c03c8caad715354f7be24d8f8d8a1.png', 0),
(34, 'catalog/customers/Anhbetrai/e603b475c006426758ffe18d0a82a0c0.png', 0),
(36, 'catalog/customers/Anhbetrai/6b7dfb7892610dc38f353b1b1d3916fd.png', 0),
(36, 'catalog/customers/Anhbetrai/bac9d63981997f3a4c0fcf2040295ff2.png', 0),
(40, 'catalog/customers/Anhbegai/2ab42ad094567f9054912d70214ea4ed.jpg', 0),
(40, 'catalog/customers/Anhbegai/a0cb52cfca778dbae61e1024e4cfc3a5.jpg', 0),
(40, 'catalog/customers/Anhbegai/b4d9ed1357767b06f5d87f309e3c1ccd.jpg', 0),
(41, 'catalog/customers/Anhbegai/0bdb6906139d713cefdac9857c79fc56.jpg', 0),
(41, 'catalog/customers/Anhbegai/470b9a580a2689329ba92fdd2ed751a1.jpg', 0),
(41, 'catalog/customers/Anhbegai/9c07b058eefb74d7949eb606fd9e9d91.jpg', 0),
(43, 'catalog/customers/Anhbegai/955766bd03c60ccf740b4e2e286ddcae.jpg', 0),
(43, 'catalog/customers/Anhbegai/bdd2f10b2bf0edb6abeddd8dac647148.jpg', 0),
(43, 'catalog/customers/Anhbegai/d8522bf5e6846fc3f3e658c56a9c3ab9.jpg', 0),
(43, 'catalog/products/htc/cb63d8e31541c845ab7971d4535464d4.jpg', 0),
(46, 'catalog/customers/Anhbegai/294c40e6b4a3fa364ac8830ed1199012.jpg', 3),
(46, 'catalog/customers/Anhbegai/37f3fb6e43f20fe94a0c0b4e591e2527.jpg', 0),
(46, 'catalog/customers/Anhbegai/b04af990d5510ff91f4d8e1b005b8cc9.jpg', 1),
(47, 'catalog/customers/Anhbegai/7947cdd8da6b6970e37e24868507c66f.jpg', 0),
(47, 'catalog/customers/Anhbegai/aa86dd4ee53d5f6fb1ee1ad8be78d45c.jpg', 0),
(48, 'catalog/customers/Anhbetrai/030a2638ebd6ea20d67c8458195ab865.png', 0),
(48, 'catalog/customers/Anhbetrai/213d86889981baff91ac68bb45dcc0d0.png', 0),
(48, 'catalog/customers/Anhbetrai/6b7471d6dd1d1c4660a8930d13a2f0d1.png', 0),
(49, 'catalog/customers/Anhbegai/297f623ccbc4f235c86cf2c8913483db.jpg', 0),
(49, 'catalog/customers/Anhbegai/661767d26ad1eb7a7e363e087513946d.jpg', 0),
(49, 'catalog/customers/Anhbegai/71c3dc91df179e359529305e2e2dbd03.jpg', 0),
(60, 'catalog/customers/Anhbegai/47eb5ccb80cd7e0885cadb3c992a989e.jpg', 1),
(60, 'catalog/customers/Anhbegai/813e3418074d5e671474e82a8612071f.jpg', 2),
(60, 'catalog/customers/Anhbegai/b8e2bf1a94fef717f9c55c3399cd563e.jpg', 0),
(63, 'catalog/customers/Anhbetrai/352740a89756664717e5a0cc18fb9408.jpg', 0),
(63, 'catalog/customers/Anhbetrai/733c879573ef7ef5f17d7d477b5bd321.jpg', 0),
(64, 'catalog/customers/Anhphukien/033b40a6f1bc75b115fe0e8a4d48e011.jpg', 0),
(64, 'catalog/customers/Anhphukien/586f199481ae5733f3fad5a5d85563eb.jpg', 0),
(65, 'catalog/customers/Anhbetrai/110a830367c9f6c2a8eef6754e01496b.jpg', 0),
(65, 'catalog/customers/Anhbetrai/329c086311561e47a3463340e7d28c7a.jpg', 0),
(66, 'catalog/customers/Anhbegai/0dbc07d3859d1395351f3b8d4542613f.jpg', 0),
(66, 'catalog/customers/Anhbegai/ba1a49519e7d921dfe55d86eeebb8ac6.jpg', 0),
(66, 'catalog/customers/Anhbegai/d44bbd8db8c3be316eea199320f7256c.jpg', 0),
(67, 'catalog/customers/Anhphukien/f9f616d3a6966fb0b82d96442eb7c6d7.jpg', 0),
(68, 'catalog/customers/Anhphukien/19b2fc587f45769b2955151f6f807a7f.jpg', 0),
(68, 'catalog/customers/Anhphukien/923f3a557a061daa30a049a4a0109d23.jpg', 0),
(69, 'catalog/customers/Anhbetrai/3c996711d1199bc61f4156eb7d380f1d.jpg', 0),
(69, 'catalog/customers/Anhbetrai/a781769ef3dfc66bdbe9bf7cb1eb1756.jpg', 0),
(69, 'catalog/customers/Anhbetrai/d9546f964557ff47ab988be7e2725644.jpg', 0),
(70, 'catalog/customers/Anhphukien/4b80483e832a75c16f1d08fd4921d4c3.jpg', 0),
(70, 'catalog/customers/Anhphukien/a29ba2fe71f5512acb983a16856063bb.jpg', 0),
(70, 'catalog/customers/Anhphukien/fea6e539995a134f831674cd9fbb2276.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_category`
--

DROP TABLE IF EXISTS `product_to_category`;
CREATE TABLE `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_to_category`
--

INSERT INTO `product_to_category` (`product_id`, `category_id`) VALUES
(28, 24),
(28, 72),
(29, 24),
(29, 72),
(33, 70),
(34, 24),
(36, 24),
(40, 70),
(41, 70),
(43, 70),
(46, 70),
(47, 70),
(48, 24),
(49, 70),
(60, 70),
(63, 24),
(64, 70),
(64, 71),
(65, 24),
(66, 70),
(67, 24),
(67, 71),
(68, 71),
(69, 24),
(70, 72);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`setting_id`, `key`, `value`) VALUES
(171, 'config_name', 'GUCCI'),
(172, 'config_owner', 'Steve Jobs'),
(173, 'config_address', '54 phố Lê Thanh Nghị - quận Hai Bà Trưng. t.p Hà Nội. Việt Nam.'),
(176, 'config_telephone', '0968999888'),
(178, 'config_image', 'catalog/logos/Apple_logo.png'),
(179, 'config_open', '08h:00'),
(180, 'config_comment', 'Cửa hành chỉ nhận thanh toán tiền mặt.'),
(194, 'config_product_count', '1'),
(195, 'config_product_limit', '15'),
(196, 'config_product_description_length', '100'),
(197, 'config_limit_admin', '20'),
(220, 'config_order_mail', '0'),
(231, 'config_logo', 'catalog/9bfa7216c20a1039a3d94176c4d9c5bb.png'),
(232, 'config_icon', 'catalog/9bfa7216c20a1039a3d94176c4d9c5bb.png'),
(233, 'config_image_category_width', '80'),
(234, 'config_image_category_height', '80'),
(235, 'config_image_thumb_width', '228'),
(236, 'config_image_thumb_height', '228'),
(237, 'config_image_popup_width', '500'),
(238, 'config_image_popup_height', '500'),
(239, 'config_image_product_width', '228'),
(240, 'config_image_product_height', '228'),
(241, 'config_image_additional_width', '74'),
(242, 'config_image_additional_height', '74'),
(243, 'config_image_related_width', '80'),
(244, 'config_image_related_height', '80'),
(245, 'config_image_compare_width', '90'),
(246, 'config_image_compare_height', '90'),
(247, 'config_image_wishlist_width', '47'),
(248, 'config_image_wishlist_height', '47'),
(249, 'config_image_cart_width', '47'),
(250, 'config_image_cart_height', '47'),
(251, 'config_image_location_width', '268'),
(252, 'config_image_location_height', '50'),
(269, 'config_file_max_size', '300000'),
(270, 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods'),
(271, 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet'),
(272, 'config_maintenance', '0'),
(273, 'config_password', '1'),
(275, 'config_compression', '0'),
(276, 'config_error_display', '1'),
(277, 'config_error_log', '1'),
(278, 'config_error_filename', 'error.log'),
(280, 'config_email', 'stevejobs@gmail.com'),
(281, 'config_url', 'http://localhost:82/xxxxxx/'),
(282, 'products_featured_limit', '8'),
(283, 'products_best_seller_limit', '5'),
(284, 'html_google_map_embed', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.7297008861333!2d105.8469290148016!3d21.003469486012065!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad58455db2ab%3A0x9b3550bc22fd8bb!2zNTQgTMOqIFRoYW5oIE5naOG7iywgQsOhY2ggS2hvYSwgSGFpIELDoCBUcsawbmcsIEjDoCBO4buZaSwgVmlldG5hbQ!5e0!3m2!1sen!2s!4v1618929186381!5m2!1sen!2s\" style=\"border:0; width: 100%;\"  height=\"450\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(285, 'config_post_limit', '15'),
(286, 'categories_featured_limit', '5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `due_date` datetime NOT NULL DEFAULT '2099-01-01 23:00:00',
  `phone` varchar(32) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `email`, `image`, `code`, `status`, `date_added`, `due_date`, `phone`, `description`, `sort_order`) VALUES
(1, 'admin', '$2y$10$OjTGuM9RjBgwq9GHZCw3feji4dQeGNyg4NF3LzPS/cmMXbqz2VJKi', 'Nguyễn Văn Ngọ', 'ngodz@gmail.com', 'catalog/profiles/anonymous_face.png', '', 1, '2015-01-29 08:07:20', '2099-01-01 23:00:00', '+(84)-0912247115', '<p><span style=\"font-size: 16px;\" lang=\"IT-IT\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Passionate about digital marketing, good food, animals, nature and coffee. </font><font style=\"vertical-align: inherit;\">I have lived abroad for many years, and have never stopped looking for good food, especially what could make me feel at home. </font><font style=\"vertical-align: inherit;\">Unfortunately even in times of globalization, certain products are not available in stores or on the Internet. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n \r\n	               Foodgenuine is an ambitious and special project, our aim\r\n is to \"reduce\" the distances and bring you that \"good time\", no matter \r\nwhere you are. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> \r\n	               I love pizza and pasta, and I could always eat Genoese focaccia. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> \r\n	               My slogan? </font><font style=\"vertical-align: inherit;\">\"You are what you eat\".</font></font></span></p>', 0),
(4, 'tuanfuckboy', '$2y$10$ZLipDnO6LmBXDjAbV.PuBulf30fYTOpP4FW4fT3F949z52WmbGPJi', 'Phạm Anh Tuấn', 'tuan@gmail.com', 'catalog/profiles/obama.png', '', 1, '2015-04-03 17:32:02', '2099-01-01 23:00:00', '', '<p><span style=\"font-size: 16px;\" lang=\"IT-IT\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">A lover of technology and the internet, I have worked in the Netherlands for more than 7 years in this area. </font><font style=\"vertical-align: inherit;\">I Holland food is not a factor of pride and my passion for good food and the difficulty of finding it in supermarkets and on the net has weighed heavily on my stay abroad. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">	               Driven by this need, I started the creation of Foodgenuine, an e-commerce for the sale of food and drinks that are genuine, healthy, natural and non-industrial. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">	               My goal is also to offer small producers the opportunity to sell their products worldwide. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">	               Good and healthy food for everyone; </font><font style=\"vertical-align: inherit;\">\" </font></font><span style=\"font-style: italic;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">food is not filling your belly, food is health</font></font></span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> \".</font></font></span></p>', 3),
(5, 'quyenhotgirl', '$2a$10$Onh3/KpeCpd5a.SuC18/geyLew.VHS73AFWq9mCcK4dW3.S45KbhS', 'Vũ Trọng Quyến', 'quyen@gmail.com', 'catalog/profiles/Steve-Jobs-Profile.jpg', '', 1, '2015-04-06 18:25:04', '2099-01-01 23:00:00', '', '<p><span style=\"font-size: 16px;\" lang=\"IT-IT\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Passionate\r\n about the internet and technology, health and well-being, I like to \r\ntravel and taste the typical products of different locations in search \r\nof the best products and unique flavors. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n	               So I decided to take part in the Foodgenuine project taking care of the IT aspect.</font></font></span></p>', 2),
(7, 'loctrapboy', '$2y$10$deoauGiQgarivYBASiGRZuto0DII3h7i6JO95xURyOb.Bx/8aBry.', 'Vũ Trung Lộc', 'loc@gmail.com', 'catalog/profiles/mark-zuckerberg.jpg', '', 1, '2020-07-09 22:45:42', '2099-01-01 23:00:00', '', '<p><font style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Passionate about digital marketing, good food, animals, nature and coffee.&nbsp;</font><font style=\"vertical-align: inherit;\">I have lived abroad for many years, and have never stopped looking for good food, especially what could make me feel at home.&nbsp;</font><font style=\"vertical-align: inherit;\">Unfortunately even in times of globalization, certain products are not available in stores or on the Internet.</font></font><br style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><font style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; vertical-align: inherit;\">Foodgenuine is an ambitious and special project, our aim is to \"reduce\" the distances and bring you that \"good time\", no matter where you are.</font><br style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><font style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; vertical-align: inherit;\">I love pizza and pasta, and I could always eat Genoese focaccia.</font><br style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><font style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">My slogan?&nbsp;</font><font style=\"vertical-align: inherit;\">\"You are what you eat\".</font></font><br></p>', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner_image`
--
ALTER TABLE `banner_image`
  ADD PRIMARY KEY (`banner_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `category_path`
--
ALTER TABLE `category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `fk_order_details_to_order` (`order_id`),
  ADD KEY `fk_order_details_to_product` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_to_manufacturer` (`manufacturer_id`);

--
-- Chỉ mục cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`product_id`,`image`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `fk_product_image_to_product` (`product_id`);

--
-- Chỉ mục cho bảng `product_to_category`
--
ALTER TABLE `product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `fk_product_to_category_to_category` (`category_id`),
  ADD KEY `fk_product_to_category_to_product` (`product_id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner_image`
--
ALTER TABLE `banner_image`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_order_details_to_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `fk_order_details_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_to_manufacturer` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`);

--
-- Các ràng buộc cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `fk_product_image_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product_to_category`
--
ALTER TABLE `product_to_category`
  ADD CONSTRAINT `fk_product_to_category_to_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `fk_product_to_category_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
