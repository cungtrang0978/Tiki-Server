-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 08:02 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databasetiki`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(1, 'admin', 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `imageUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`id`, `name`, `imageUrl`) VALUES
(1, 'REALME', 'https://salt.tikicdn.com/cache/w885/ts/banner/af/3c/ae/fa7f2edb309e44da80cb83e7ded10d92.jpg'),
(2, 'Đại tiệc sale điện tử', 'https://salt.tikicdn.com/cache/w885/ts/banner/92/2a/65/bc6c7f873376c8e054c501f0a431c649.jpg'),
(3, 'Ngập tràn công nghệ', 'https://salt.tikicdn.com/cache/w885/ts/banner/06/21/ac/b7872b67a058e3143d849233f75798c1.jpg'),
(4, 'SMARTPHONE', 'https://salt.tikicdn.com/cache/w885/ts/banner/5e/cf/57/c15399a93c571e6ffd2dd49b57ea933c.png'),
(5, 'SAMSUNG', 'https://salt.tikicdn.com/cache/w885/ts/banner/8a/9b/14/3e89bc68c4411e44c129cd4c367fd77f.jpg'),
(6, 'SALE 6.5', 'https://salt.tikicdn.com/cache/w885/ts/banner/8a/fa/64/d6b044897f416a23a1bb744aaf883ea2.jpg'),
(7, 'SALE  8.5', 'https://salt.tikicdn.com/cache/w885/ts/banner/ff/75/88/f7c7221cb8280e169bea31b6c9213b61.jpg'),
(8, 'SALE 27.4', 'https://salt.tikicdn.com/cache/w885/ts/banner/47/3e/65/4678cbc0ec7f7b4e710a7849f3480691.jpg'),
(9, 'phụ kiện', 'https://salt.tikicdn.com/cache/w885/ts/banner/1a/9c/ac/d3bd90154a15b9740c18cdce8e0dfbc8.jpg'),
(10, 'xe máy', 'https://salt.tikicdn.com/cache/w885/ts/banner/1a/9c/ac/d3bd90154a15b9740c18cdce8e0dfbc8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idParents` int(11) NOT NULL,
  `imageUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `idParents`, `imageUrl`) VALUES
(1, 'Samsung', 1, 'https://vietcomfilm.com/wp-content/uploads/2019/01/samsung-logo-4.png'),
(2, 'Iphone', 1, 'https://tintuc.shopdunk.com/wp-content/uploads/2018/05/tai-sao-logo-hang-Apple-la-trai-tao-do-2.png'),
(3, 'Nokia', 1, 'https://seeklogo.net/wp-content/uploads/2015/03/nokia-logo.png'),
(4, 'Xiaomi', 1, 'https://download.logo.wine/logo/Xiaomi_Mi_4c/Xiaomi_Mi_4c-Logo.wine.png'),
(5, 'LG', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/LG_logo_%282015%29.svg/800px-LG_logo_%282015%29.svg.png'),
(6, 'Oppo', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/OPPO_LOGO_2019.svg/1280px-OPPO_LOGO_2019.svg.png'),
(7, 'Vivo', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Vivo_logo_2019.svg/1200px-Vivo_logo_2019.svg.png'),
(8, 'Realme', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Realme-realme-_logo_box-RGB-01_with_out_back_ground.svg/1280px-Realme-realme-_logo_box-RGB-01_with_out_back_ground.svg.png'),
(9, 'Huawei', 1, 'https://dwglogo.com/wp-content/uploads/2016/06/1400px_Huawei_logo.png'),
(10, 'Vsmart', 1, 'https://upload.wikimedia.org/wikipedia/vi/d/da/Vsmart-logo.jpg'),
(11, 'Bphone', 1, 'https://hoantienmuasam.com/wp-content/uploads/2019/08/logo-Bphone.png'),
(29, 'Laptop Truyền Thống', 6, 'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c06244517.png'),
(30, 'Macbook', 6, 'https://phucanhcdn.com/media/product/33871_lap_app_mrea2.png'),
(31, 'Laptop Gaming', 6, 'https://laptop88.vn/media/product/pro_poster_4618.jpg'),
(32, 'Laptop 2 trong 1', 6, 'https://www.laptopvip.vn/images/detailed/104/notebook-latitude-13-7389-2in1-campaign-hero-504x350-ng.png'),
(33, 'Màn Hình Máy Tính', 7, 'https://bizweb.dktcdn.net/thumb/grande/100/305/872/products/m-n-h-nh-vi-t-nh-hp-24es-t3m79aa.png?v=1525949768840'),
(34, 'Máy In - Photocopy', 7, 'https://toancaucopier.com/wp-content/uploads/2019/08/may-photocopy-ricoh-aficio-mp-3351-5939.png'),
(35, 'Phần Mềm Máy Tính', 7, 'https://www.kaspersky.com.vn/Images/KISA_188x266_FL2020.png'),
(36, 'Mực In và Toner', 7, 'https://vitinhnguyenkim.vn/uploads/product/muc-in-giay-in/muc-in-laser-oki-c911-black-toner.png'),
(37, 'Máy Scan Tài Liệu', 7, 'https://vn.canon/media/migration/shared/live/products/VN/lide-220-b1.png'),
(38, 'Giấy In', 7, 'https://scdn.thitruongsi.com/image/cached/thumb/img/product/2019/03/10/ed11fde0-42f9-11e9-ad6c-59d752d7967b.png'),
(39, 'Máy Chiếu và Phụ Kiện Máy Chiếu', 7, 'https://product.hstatic.net/1000340975/product/upload_bf0809fc57714b1abf10767a1d0bf2fc_grande.jpg'),
(40, 'Máy Scan Mã Vạch', 7, 'https://maybanhang.net/wp-content/uploads/2015/12/may-quet-ma-vach-1.png'),
(41, 'Máy Hủy Tài Liệu', 7, 'https://sangha.vn/image/may-huy-tai-lieu-deli-9952--48.png'),
(42, 'Máy Chấm Công', 7, 'https://www.anphatpc.com.vn/media/product/24296_m__y_ch___m_c__ng_v__n_tay_v___th____zkteco_g2___50_000_th____1.png'),
(43, 'Máy Đếm Tiền', 7, 'https://cdn.nguyenkimmall.com/images/detailed/170/10025997-M%C3%81Y-%C4%90%E1%BA%BEM-TI%E1%BB%80N-SILICON-MC-2700-01.png'),
(44, 'Thiết Bị Truyền Thông Hội Nghị', 7, 'https://baoantelecom.com/upload/images/aver-svc500-01.png'),
(49, 'Ổ Cứng Gắn Trong', 8, 'https://www.thietbiluutru.com.vn/media/product/2783_ns100_01_600x500.png'),
(50, 'Ổ Cứng Di Động', 8, 'https://transcendvietnam.com/wp-content/uploads/2019/03/Pp_SJ25C3S-2-600x400.png'),
(51, 'Case Ổ Cứng - Hộp Đựng HDD Box - Dock Ổ Cứng', 8, 'https://lh3.googleusercontent.com/proxy/MGo2-bKiu-UpGUqCuvLrFIO8pirtZP9wcvgqZOH5N80MN1mJLP3I8JsdJocZ_yJrJubkOsfXAnBgx1BQHfCiKXlZ'),
(52, 'Thiết bị Lưu Trữ Qua Mạng NAS', 8, 'https://vnreview.vn/image/18/59/72/1859722.jpg?t=1539847054680'),
(53, 'USB', 8, 'https://www.thietbiluutru.com.vn/media/product/2368_cz600.jpg'),
(54, 'Đĩa Trắng - Băng Cuộn', 8, 'https://www.jeancoutu.com/catalog-images/298942/viewer/0/maxell-cd-r-700-mb-1-unit.png');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_gr_parents`
--

CREATE TABLE `catalog_gr_parents` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `imageUrl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_gr_parents`
--

INSERT INTO `catalog_gr_parents` (`id`, `name`, `imageUrl`) VALUES
(0, 'Gợi ý cho bạn', 'https://f23-zpg.zdn.vn/6751761853071115624/2d15230bc74638186157.jpg'),
(1, 'Điện Thoại - Máy Tính Bảng', 'https://cdn.tgdd.vn/Products/Images/42/204088/asus-rog-phone-2-400x460.png'),
(2, 'Laptop - Máy Vi Tính - Linh Kiện', 'https://genk.mediacdn.vn/139269124445442048/2020/4/1/gaming-laptop-vs-desktop-rig-hero1557864085439-15857154549401928686836.png'),
(3, 'Đồ Thể Thao', 'https://images.allvolleyball.com/images/uploads/category_7_6775.png'),
(4, 'Ô Tô - Xe Máy - Xe đạp', 'https://miro.medium.com/max/550/0*KfPYItKa06WnD_f9.png');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_parents`
--

CREATE TABLE `catalog_parents` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `idCatalog_gr_parents` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_parents`
--

INSERT INTO `catalog_parents` (`id`, `name`, `idCatalog_gr_parents`) VALUES
(0, 'Danh mục đang hot:', 0),
(1, 'Điện Thoại Smartphone', 1),
(2, 'Máy tính bảng', 1),
(3, 'Máy đọc sách', 1),
(4, 'Điện thoại phổ thông', 1),
(5, 'Điện thoại bàn', 1),
(6, 'Laptop', 2),
(7, 'Thiết bị văn phòng - Thiết bị ngoại vi', 2),
(8, 'Thiết bị lưu trữ', 2),
(9, 'Thiết bị mạng', 2),
(10, 'PC - Máy tính bộ', 2),
(11, 'Linh kiện máy tính - Phụ kiện máy tính', 2);

-- --------------------------------------------------------

--
-- Table structure for table `image_product`
--

CREATE TABLE `image_product` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `imageUrl` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image_product`
--

INSERT INTO `image_product` (`id`, `idProduct`, `imageUrl`) VALUES
(1, 1, 'https://cdn.tgdd.vn/Products/Images/42/214908/samsung-galaxy-a01-xanh-400x460-400x460.png'),
(2, 1, 'https://didongthongminh.vn/upload_images/2020/01/galaxy-a01-red.png'),
(3, 1, 'https://dienmaycholon.vn/public/picture/product/product15840/product_15840_5.png'),
(4, 1, 'https://huymobile.vn/upload/default/product/album_1583226900_A017.png'),
(5, 1, 'https://images.samsung.com/is/image/samsung/vn-galaxy-a01-a015-sm-a015fzbdxev-front-204962834?$PD_SHOP_JPG$'),
(6, 2, 'http://cdn.fptshop.com.vn/Uploads/Originals/2019/8/13/637012894439085262_SS-a10s-xanh-1.png'),
(7, 2, 'http://cdn.fptshop.com.vn/Uploads/Originals/2019/8/13/637012894439765262_SS-a10s-xanh-2.png'),
(8, 2, 'http://cdn.fptshop.com.vn/Uploads/Originals/2019/8/13/637012894439635262_SS-a10s-xanh-3.png'),
(9, 2, 'http://cdn.fptshop.com.vn/Uploads/Originals/2019/8/13/637012894439045262_SS-a10s-xanh-4.png'),
(10, 2, 'http://cdn.fptshop.com.vn/Uploads/Originals/2019/8/13/637012894438495262_SS-a10s-xanh-5.png'),
(11, 2, 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/8/23/637021513977432806_SAMSUNG-S10-PLUS-11.jpg'),
(12, 3, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/4/15/637225676977414115_ss-a11-den-1.png'),
(13, 3, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/4/15/637225676977889293_ss-a11-den-2.png'),
(14, 3, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/4/15/637225676976139136_ss-a11-den-3.png'),
(15, 3, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/4/15/637225676969358701_ss-a11-den-4.png'),
(16, 3, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/4/15/637225676971148941_ss-a11-den-5.png'),
(17, 13, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/3/12/637196196034615068_ss-a71-xanh-1.png'),
(18, 13, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/3/12/637196196034666390_ss-a71-xanh-2.png'),
(19, 13, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/1/16/637147830322922152_ss-a71-xanh-3.png'),
(20, 13, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/1/16/637147830323234931_ss-a71-xanh-4.png'),
(21, 13, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/1/16/637147830321910586_ss-a71-xanh-5.png'),
(22, 14, 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/4/13/636907526460907165_samsung-galaxy-a80-den-1.png'),
(23, 14, 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/4/13/636907526457747165_samsung-galaxy-a80-den-2.png'),
(24, 14, 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/4/13/636907526457507165_samsung-galaxy-a80-den-3.png'),
(25, 15, 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/8/7/637008129845765817_SS-S10e-green-1.png'),
(26, 15, 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/8/7/637008129843825817_SS-S10e-green-2.png'),
(27, 15, 'https://cdn.fptshop.com.vn/Uploads/Originals/2019/8/7/637008129843485817_SS-S10e-green-3.png'),
(28, 6, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/6/11/637274688349002340_3%20iPhone_11_Black_2-up_US-EN_SCREEN.jpg?fbclid=IwAR1DNINPY4kHhFlXOjS_Ev4T5G92gUXG79PbP0G-n8tDyJ8y3Ljuw2ylrdg'),
(29, 21, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/6/9/637273078874316829_iphone%2011%20pro%20max%20(6).jpg\r\n'),
(30, 21, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/6/9/637273078874206785_iphone%2011%20pro%20max%20(7).jpg\r\n'),
(31, 21, 'http://vienthinh.vn/assets/Uploads/sanpham/2772/MX0H4.jpg\r\n'),
(32, 22, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/6/11/637274688345972278_iPhone_11_Green_2-up_US-EN_SCREEN.jpg\r\n'),
(33, 22, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/6/11/637274687713655394_iphone-11-blue-14.jpg\r\n'),
(34, 22, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/6/11/637274688345302225_1%20iPhone_11_Black_2-up_US-EN_SCREEN.jpg\r\n'),
(35, 23, 'https://salt.tikicdn.com/cache/w390/ts/product/97/7d/7d/6d19554446154285118b20a4e5dd8557.jpg\r\n'),
(36, 23, 'https://salt.tikicdn.com/cache/w390/ts/product/eb/a6/b5/5e0147f5002af686440a90d746c2b058.jpg\r\n'),
(37, 23, 'https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/695833428.jpeg\r\n'),
(38, 23, 'https://www.xtmobile.vn/vnt_upload/product/Hinh_DT/Iphone/Xs/thumbs/(600x600)_crop_xs_max_black_800x800.jpg\r\n'),
(39, 27, 'https://salt.tikicdn.com/cache/w390/ts/product/b0/39/73/aa015ff37be75f60a07439ddd47310ac.jpg\r\n'),
(40, 27, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/6/11/637274712015242801_5%20iPhone8-SpaceGray-34BR-34FL-2up-US-EN-SCREEN.jpg\r\n'),
(41, 27, 'https://cdn.fptshop.com.vn/Uploads/Originals/2020/6/11/637274712015262767_4%20iPhone8-Silver-360-US-EN-SCREEN.jpg\r\n'),
(42, 27, 'https://cdn.fptshop.com.vn/Uploads/Originals/2017/11/10/636459041871679213_1.jpg\r\n'),
(43, 28, 'https://salt.tikicdn.com/cache/w390/ts/product/31/71/dd/4ee9964b205cdf0d28d3647d7b43e346.jpg\r\n'),
(44, 28, 'https://cdn.fptshop.com.vn/Uploads/Originals/2018/1/19/636519640825769506_iphone-6s-plus-15.jpg\r\n'),
(45, 28, 'https://cdn.fptshop.com.vn/Uploads/Originals/2015/11/9/635826893066048748_iphone-6s-plus-13.jpg\r\n'),
(46, 28, 'https://salt.tikicdn.com/cache/w390/media/catalog/product/3/2/32gb-rose-gold_4.u504.d20161031.t112254.502752.jpg\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `idTransact` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `amount` int(15) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `idTransact`, `idProduct`, `qty`, `amount`) VALUES
(239, 87, 3, 1, 3690000),
(240, 87, 2, 1, 3690000),
(241, 88, 3, 3, 11070000),
(242, 89, 1, 1, 2790000),
(243, 90, 28, 2, 12040000),
(244, 92, 20, 1, 47500000),
(245, 92, 15, 1, 12000000),
(246, 92, 2, 1, 3690000),
(247, 93, 1, 2, 5580000),
(248, 93, 2, 3, 11070000),
(249, 93, 3, 1, 3690000),
(250, 93, 13, 2, 18000000),
(251, 94, 21, 1, 28900000),
(252, 94, 6, 1, 14490000),
(254, 95, 27, 1, 15010000),
(255, 96, 21, 5, 144500000),
(263, 97, 2, 18, 66420000),
(264, 97, 34, 14, 39312000),
(265, 98, 1, 2, 5580000),
(266, 98, 13, 1, 9000000),
(267, 99, 30, 5, 62250000),
(268, 99, 29, 3, 32850000),
(269, 99, 18, 2, 36533000),
(270, 99, 20, 1, 47500000),
(271, 99, 14, 2, 20000000),
(272, 100, 4, 1, 9990000),
(273, 102, 27, 4, 60040000),
(274, 102, 6, 4, 57960000),
(275, 102, 1, 2, 5580000),
(276, 103, 21, 1, 28900000),
(277, 105, 29, 1, 10950000),
(278, 105, 27, 1, 15010000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `idCatalog` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(15) NOT NULL DEFAULT 0,
  `discount` int(11) NOT NULL DEFAULT 0,
  `created` bigint(20) NOT NULL DEFAULT 0,
  `views` int(11) DEFAULT 0,
  `qty` int(11) DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `idCatalog`, `name`, `description`, `price`, `discount`, `created`, `views`, `qty`) VALUES
(1, 1, 'Điện Thoại Samsung Galaxy A01 (16GB/2GB) - Hàng Chính Hãng - Đã Kích Hoạt Bảo Hành Điện Tử', 'Samsung Galaxy A01 là một smartphone nhà Samsung mới được ra mắt vào đầu năm 2020. Chiếc điện thoại nổi bật với camera kép, màn hình Infinity-V tràn cạnh, chạy hệ điều hành Android 10 mới nhất đi kèm mức giá bán cực kỳ hấp dẫn.', 2790000, 0, 0, 256, 14),
(2, 1, 'Samsung Galaxy A10s', 'Samsung Galaxy A10s là bản nâng cấp của chiếc Galaxy A10 đã ra mắt trước đó với camera kép, dung lượng pin lớn hơn và đã được trang bị thêm cảm biến vân tay.', 3690000, 0, 0, 107, 0),
(3, 1, 'Samsung Galaxy A11', 'Samsung Galaxy A11 với thiết kế màn hình Infinity-O siêu tràn viền, bộ ba camera ấn tượng, đi kèm với mức giá phải chăng hứa hẹn sẽ tạo nên cơn sốt trên thị trường điện thoại giá rẻ.', 3690000, 0, 0, 56, 0),
(4, 2, 'iPhone 7 32GB', 'iPhone 7 32GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng, dàn loa stereo và cấu hình cực mạnh', 9990000, 0, 0, 22, 19),
(5, 2, 'iPhone 7 Plus 32GB', 'Mặc dù giữ nguyên vẻ bề ngoài so với dòng điện thoại iPhone đời trước, bù lại iPhone 7 Plus 32GB lại được trang bị nhiều nâng cấp đáng giá như camera kép đầu tiên cũng như cấu hình mạnh mẽ.', 8990000, 0, 0, 23, 21),
(6, 2, 'iPhone 8 Plus 64GB', 'Thừa hưởng những thiết kế đã đạt đến độ chuẩn mực, thế hệ iPhone 8 Plus thay đổi phong cách bóng bẩy hơn và bổ sung hàng loạt tính năng cao cấp cho trải nghiệm sử dụng vô cùng tuyệt vời.\r\n', 14490000, 0, 0, 25, 15),
(7, 3, 'Nokia C1', 'Nokia C1 là dòng điện thoại giá rẻ hướng tới đối tượng là những người dùng phổ thông, sử dụng smartphone với nhu cầu cơ bản. Chiếc điện thoại cung cấp đầy đủ các tính năng thiết yếu: Không gian hiển thị lớn, bộ đôi camera trước và sau với đèn flash, 2 SIM...', 1390000, 0, 0, 3, 20),
(8, 3, 'Nokia C2', 'Nokia C2 là một smartphone giá rẻ chạy Android Go, máy có màn hình rộng, hiệu năng ổn định cùng với mức giá hấp dẫn dễ tiếp cận đến người dùng có nhu cầu cơ bản, phổ thông.', 1490000, 0, 0, 4, 20),
(9, 3, 'Nokia 3.2 16GB', 'Nokia quay trở lại thị trường mạnh mẽ với những chiếc smartphone giá cả phải chăng nhưng vẫn đáp ứng tốt nhu cầu sử dụng hằng ngày của người dùng và Nokia 3.2 16GB là một chiếc máy như vậy.\r\n', 1990000, 0, 0, 2, 20),
(10, 4, 'Xiaomi Redmi Go 16GB', 'Xiaomi Redmi Go 16GB là một trong những chiếc smartphone giá rẻ nhất tới từ Xiaomi nhưng vẫn mang lại cho bạn một trải nghiệm mượt mà đến \"khó tin\".', 1790000, 0, 0, 2, 20),
(11, 4, 'Xiaomi Redmi 8A', 'Xiaomi Redmi 8A là một chiếc smartphone nổi bật trong phân khúc giá rẻ với nhiều ưu điểm như pin khủng, chip Snapdragon mới, camera AI và màn hình giọt nước thời thượng.', 2290000, 0, 0, 1, 20),
(12, 4, 'Xiaomi Redmi 8 (3GB/32GB)', 'Những sản phẩm của Xiaomi thường trang bị cấu hình mạnh mẽ trong tầm giá, camera nhiều tính năng và viên pin \"trâu\". Xiaomi Redmi 8 3GB/32GB cũng không phải là ngoại lệ và với chiếc smartphone này Xiaomi một lần nữa khẳng định vị thế của mình trong phân khúc smartphone giá rẻ.', 2690000, 10, 0, 4, 21),
(13, 1, 'Samsung Galaxy A71', 'Một sản phẩm thực sự đột phá, Samsung Galaxy A71 là tổng hòa của những công nghệ cao cấp nhất hiện nay với bộ 4 camera sau 64MP, màn hình 6,7 inch Full HD+ mãn nhãn và thời lượng pin trên cả tuyệt vời.', 10000000, 10, 0, 68, 21),
(14, 1, 'Samsung Galaxy A80', 'Samsung A80 là chiếc điện thoại dẫn đầu kỷ nguyên mới với màn hình vô cực hoàn hảo, camera trượt xoay 180 độ độc đáo, cảm biến vân tay trong màn hình và những đột phá đầy ấn tượng.', 10000000, 0, 0, 16, 20),
(15, 1, 'Samsung Galaxy S10e', 'Samsung Galaxy S10e là chiếc điện thoại nhỏ gọn hoàn hảo với hiệu năng mạnh mẽ nhất, camera thay đổi khẩu độ xuất sắc và màn hình Infinity-O tuyệt mỹ.', 12000000, 0, 0, 35, 22),
(16, 1, 'Samsung Galaxy Note 10 Lite', 'Chiếc Galaxy Note mới đã quay trở lại, Samsung Galaxy Note10 Lite đưa bạn đến trải nghiệm tuyệt vời của màn hình vô cực Infinity-O, bút S Pen danh tiếng, camera chuyên nghiệp và thời lượng pin dài bất tận trong một mức giá dễ chịu.', 13990000, 20, 0, 9, 20),
(17, 1, 'Samsung Galaxy A31', 'Sở hữu Samsung Galaxy A31, bạn sẽ có được trải nghiệm hình ảnh không thua kém smartphone cao cấp nào với màn hình rộng 6.4 inch rực rỡ sắc nét. Ngoài ra, khả năng chụp ảnh chuyên nghiệp nhờ cụm bốn camera trên mặt lưng cũng là điểm cộng không thể bỏ qua khi nhắc tới Galaxy A31.', 6490000, 10, 0, 11, 22),
(18, 1, 'Samsung Galaxy S20', 'Samsung S20 mang trên mình những tính năng cao cấp đầu bảng, với 3 camera 64MP, khả năng quay video 8K, sức mạnh phần cứng mạnh mẽ bên trong một thiết kế vô cùng di động, nhỏ gọn trong lòng bàn tay.', 21490000, 15, 0, 18, 20),
(19, 1, 'Samsung Galaxy Note 10', 'Quyền năng thế hệ mới đã xuất hiện, Samsung Galaxy Note 10 mang đến trải nghiệm tuyệt đỉnh như máy tính trong một thiết kế gọn gàng cùng bút S Pen thông minh, tất cả đều nằm trên tay bạn.', 22990000, 10, 0, 27, 23),
(20, 1, 'Samsung Galaxy Fold', 'Một chiếc điện thoại mà bạn chưa từng thấy trước đây, một chiếc điện thoại có màn hình gập độc đáo ngỡ như chỉ có ở tương lai, xin giới thiệu kỳ quan công nghệ mới mang tên Samsung Galaxy Fold.', 50000000, 5, 0, 57, 25),
(21, 2, 'Điện Thoại iPhone 11 Pro Max 64GB - Hàng Chính Hãng\r\n', 'Điện thoại iPhone 11 Pro Max là phiên bản cao cấp nhất của iPhone năm nay. Sản phẩm có nhiều cải tiến nổi bật, hiệu năng, thiết kế mới đặc biệt ở phần mặt lưng và hệ thống camera.\r\niPhone 11 Pro Max có rất nhiều cải tiến về thiết kế, điểm khác biệt lớn nhất đến từ phần mặt lưng với cụm camera được thiết kế cách điệu khá to. Nhìn từ xa, thiết kế khá giống với mặt Apple Watch. Mặt dù kiểu dáng vẫn còn nhiều tranh cãi, tuy nhiên nhiều người vấn đánh giá rất cao về tính thẩm mỹ.\r\nSở hữu màn hình kích thước 6.5 inch, iPhone 11 Pro Max mang đến nhiều không gian trải nghiệm hơn. Sản phẩm được trang bị công nghệ tấm nền OLED, độ phân giải 2688 x 1242 pixels. iPhone 11 Pro Max tiếp tục được trang bị màn hình tai thỏ giống như dòng iPhone X từng gây sốt tại thời điểm mới ra mắt. Cùng với đó, các viền cạnh xung quanh máy sẽ được làm mỏng tối đa, giúp màn hình lớn hơn và mang đến những trải nghiệm thú vị hơn. Hơn thế nữa màn hình Super Retina XDR tự hào có thể điều chỉnh độ sáng để giúp bạn có những trải nghiệm hình ảnh tốt nhất. Nó đạt tới 800 nits khi bạn ra ngoài nắng - tuyệt vời để chụp và thực hiện các lựa chọn khi đang di chuyển - và lên tới 1200 nits khi bạn xem nội dung phạm vi cực kỳ động. Nó giống như có một XDR Pro Display trên iPhone của bạn.\r\n', 34000000, 15, 0, 13, 97),
(22, 2, 'Điện Thoại iPhone 11 64GB - Hàng Chính Hãng\r\n', 'Điện Thoại iPhone 11 là sản phẩm kế nhiệm cho chiếc iPhone Xr từng dành được sự chú ý của giới công nghệ. Lần này, Apple vẫn đi theo những tiêu chỉ của Xr khi tạo ra iPhone 11. Đầu tiên là thiết kế trẻ trung có thể thấy được ngay trên sự đa dạng màu sắc. Hơn nhữa, những màu của iPhone 11 đều mang xu hướng phá cách, tinh nghịch. Nhưng đồng thời, màu sắc này cũng mang trong nó một sự sang trọng nhất định.\r\nMặt trước vẫn là tai thỏ thời thượng như trên những thế hệ iPhone toàn màn hình trước. Tuy vậy, ở mặt sau đã có sự chuyển biến khi mà cụm camera kép mới được đặt trong một modul hình vuông. Thiết kế 2 mặt kính, kèm viền nhôm giúp iPhone 11 có trọng lượng nhẹ, nhưng đồng thời cũng cứng cáp. Phím tắt âm được thiết kế lại thành dạng tròn và có cơ cấu gạt xuống, phù hợp hơn trong quá trình sử dụng máy.\r\nMàn hình LCD của iPhone 11 có cái tên là Liquid Retina với độ phân giải HD+. Màn hình này cho phép iPhone 11 có độ sáng tốt hơn, kèm theo đó thì với chuẩn Retina của Apple thì máy có khả năng tái hiện màu thực sự tốt. Kể cả trong những điều kiện môi trường với độ sáng gắt. Thêm vào đó, màn hình rộng cũng cho phép iPhone 11 hiển thị nhiều thông tin hơn mà lại không bị quá to để gây khó chịu khi sử dụng.\r\n', 22000000, 9, 0, 6, 100),
(23, 2, 'Điện Thoại iPhone XS 64GB - Hàng Nhập Khẩu Chính Hãng\r\n', 'Điện Thoại iPhone XS cuối cùng cũng chính thức giới thiệu những chiếc iPhone X thế hệ mới với tên gọi XS. XS được đọc là \"ten ess\", từ s được đặt trong một ô vuông. iPhone XS cũng giống như truyền thống của Apple khi hầu như không thay đổi thiết kế bên ngoài và chỉ nâng cấp nhiều về phần cứng bên trong. iPhone XS được trang bị kính bảo vệ mới cho màn hình được Apple nói rằng đó là loại kính bền nhất trên smartphone hiện nay. Máy đạt chuẩn chống nước bụi IP68.\r\niPhone XS với thiết kế bên ngoài giống với iPhone X, không trang bị nút Home cứng, viền kim loại sang trọng và đặc biệt là cụm camera sau được trang bị theo chiều dọc tạo điểm nhấn cho chiếc điện thoại.\r\nSở hữu màn hình OLED 5.8 inch với độ phân giải (2436 x 1125) pixels với 3.3 triệu điểm ảnh, mật độ điểm ảnh 463ppi pixel mang đến khả năng hiển thị màu sắc ấn tượng, sắc nét cho bạn trải nghiệm ở mọi góc nhìn. Màn hình lược bỏ nút Home cứng truyền thống tạo cảm giác lạ mắt và tạo nhiều không gian hơn cho người dùng.\r\nFace ID là công nghệ được phát triển dựa trên Touch ID, sử dụng một loạt cảm biến phía trước, máy ảnh TrueDepth và máy chiếu chấm hồng ngoại để tạo ra bản đồ 3D cực kỳ chi tiết dành cho khuôn mặt của bạn. Máy chiếu chấm hồng ngoại tạo ra 30.000 điểm vô hình trên khuôn mặt mỗi khi bạn nhìn vào điện thoại để đảm bảo độ chính xác khi quét. Công nghệ này sẽ giúp bạn bảo mật thông tin một cách tốt hơn.\r\n', 25000000, 28, 0, 17, 102),
(26, 2, 'Apple iPhone X 64Gb CPO (Certified Pre-Owned) - Hàng Nhập Khẩu\r\n', 'iPhone Xs Max 64GB có màn hình vượt trội so với mọi thế hệ iPhone trước đây khi lớn tới 6,5 inch, được làm từ tấm nền OLED, hỗ trợ hiển thị HDR. HDR mang đến màu sắc chính xác, màu đen có chiều sâu, độ sáng và độ tương phản tuyệt vời. Bạn sẽ được tận hưởng một màn hình cực lớn, độ phân giải siêu cao 2688 x 1242 pixels cho trải nghiệm xem đáng kinh ngạc.\r\niPhone Xs Max 64GB được hoàn thiện từ những vật liệu đặc biệt, đó là viền thép không gỉ sáng bóng và mặt kính bền nhất trong thế giới smartphone. Kỹ thuật gia công chính xác hoàn hảo của Apple mang đến chiếc điện thoại cứng cáp, thời trang, vừa vặn trong lòng bàn tay bạn. Ba màu sắc thời thượng Xám không gian, Bạc và Vàng cho những lựa chọn cá tính. Đặc biệt, hai phiên bản màu Vàng và Xám được sơn bằng quá trình xử lý màu PVD, tạo hiệu ứng ánh sáng qua lớp kính rất đẹp mắt.\r\niPhone Xs Max 64GB mang trên mình con chip A12 Bionic có 6 nhân, trong đó 2 nhân hiệu năng cao nhanh hơn 15% và 4 nhân tiết kiệm điện tiết kiệm hơn 50% so với thế hệ trước A11 Bionic của iPhone X. Đồng thời GPU đồ họa của A12 Bionic mạnh hơn tới 50%, cho phép bạn chơi mọi tựa game ở cấu hình cao nhất một cách nhẹ nhàng và mượt mà.\r\n', 20500000, 40, 0, 1, 100),
(27, 2, 'Điện Thoại iPhone 8 Plus - Hàng Chính Hãng VN/A\r\n', 'Điện thoại iPhone 8 Plus 64GB nổi bật với thiết kế mặt lưng bằng kính trơn bóng kết hợp cạnh viền mang lại vẻ ngoài sang trọng cho người sở hữu. Mặt trước điện thoại vẫn giữ nguyên tỉ lệ màn hình, viền màn hình khá dày, nút Home cảm ứng lực tích hợp cảm biến vân tay như iPhone 7.\r\niPhone 8 Plus sở hữu kích thước màn hình lớn 5.5 inch với độ phân giải Full HD (1080 x 1920 Pixels), mật độ điểm ảnh 401 ppi pixel và được Apple nâng cấp lên màn hình Retina HD True Tone, mang đến khả năng hiển thị màu sắc ấn tượng, sắc nét cho bạn trải nghiệm ở mọi góc nhìn.\r\niPhone 8 Plus sử dụng chip A11 Bionic có sức mạnh cao cấp nhất tính đến thời điểm ra mắt. Theo Apple, con chip Apple A11 Bionic này gồm có 6 nhân với 4,3 tỷ bóng bán dẫn, tốc độ xử lý GPU cao hơn 30% so với thế hệ chip A10 và điện năng tiêu thụ giảm một nửa. Về hiệu năng, A11 mạnh hơn 70% ở 4 nhân tiết kiệm điện và 25% ở 2 nhân hiệu năng cao so với A10.\r\n', 19000000, 21, 0, 10, 97),
(28, 2, 'Điện Thoại iPhone 6s 32GB - Nhập Khẩu Chính Hãng\r\n', 'iPhone 6s 32GB được trang bị bộ đôi camera 12.0MP và 5.0MP để bạn thỏa thích chụp ảnh. Camera chính 12.0MP tích hợp đèn Retina Flash kép 2 tones với công nghệ điểm ảnh tiên tiến True Tones giúp bạn chụp ảnh chi tiết hơn. Camera trước 5.0 MP tích hợp đèn Retina Falsh giúp màn hình sáng lên gấp 3 lần giúp bạn chụp selfie tốt hơn. Đồng thơi, máy cũng sẽ cho phép bạn quay chuẩn 4K, có thể hiệu chỉnh trên iMovie.\r\nApple trang bị cho iPhone 6s 32GB bộ vi xử lý A9 chip 64bit mạnh mẽ ngang với một thiết bị PC. Với  bộ vi xử lý này cho khả năng xử lý cao hơn đến 90%. Bạn hoàn toàn có thể chơi những game 3D đồ họa phức tạp, những hiệu ứng bóng đổ, ánh sáng, hành động đều mượt mà mà không hề có độ trễ. Ngoài ra, máy sử dụng RAM 2 GB, bộ nhớ 32 GB bạn có thể thoải mái lưu trữ và hoạt động mà không lo đầy bộ nhớ.\r\niPhone 6s sở hữu cảm biến quét vân tay Touch ID thế hệ thứ 2 nhanh hơn gấp 2 lần so với thế hệ đầu tiên và bảo mật hơn, chắc chắn sẽ giữ an toàn cho dữ liệu và khiến bạn hài lòng khi sử dụng.\r\n', 7000000, 14, 0, 12, 100),
(29, 2, 'Điện Thoại iPhone 7 Plus 128GB - Hàng Nhập Khẩu Chính Hãng\r\n', 'iPhone 7 Plus 128GB với kích thước  158.2 x 77.9 x 7.3 mm mỏng nhẹ và thiết kế tương tự như bộ đôi iPhone 6s/6s Plus, tuy nhiên phần dải nhựa bắt sóng không cắt ngang mặt lưng như phiên bản cũ mà được chuyển sang phần cạnh trên của sản phẩm. Phím Home vật lý trên điện thoại cũng được thay thế bằng phím cảm ứng nhờ vào sự kết hợp Taptic Engine mới và liên kết với 3D Touch tiện lợi và đẹp mắt.\r\niPhone 7 Plus sở hữu màn hình Retina HD 5.5 inches có độ phân giải  1080 x 1920 pixels , mang đến khả năng cung cấp không gian màu sắc tương tự như các thiết bị kỹ thuật số, giúp màn hình hiển thị rực rỡ và sống động và mang lại cho bạn trải nghiệm hình ảnh ấn tượng.\r\nNgoài ra, màn hình được tích hợp tích hợp công nghệ 3D Touch, giúp máy vận hành nhanh chóng hơn khi bạn tương tác với màn hình để sử dụng các ứng dụng tin nhắn, mail, lịch,\r\n', 15000000, 27, 0, 17, 101),
(30, 2, 'Điện Thoại iPhone SE 128G ( 2020) - Hàng Nhập Khẩu\r\n', 'iPhone SE 2020 có ngôn ngữ thiết kế giống iPhone 8. Điều khác biệt chính là logo Apple trên mặt lưng này đã được dời sang chính giữa thay vì đặt lệch ở nửa trên như trên đàn anh.\r\niPhone SE 2020 được trang bị màn hình Retina LCD 4.7 inch với mật độ điểm ảnh 326 ppi. Tỉ lệ màn hình 16:9. Màn hình hỗ trợ đầy đủ các công nghệ True Tone, Haptic Touch, và HDR10…\r\nMàn hình máy không có notch tai thỏ như iPhone X hay iPhone 11. Viền cạnh trên và dưới dày, cạnh dưới của máy chứa nút Home đi kèm Touch ID để quét vân tay.\r\n', 15000000, 17, 0, 13, 98),
(31, 4, 'Điện Thoại Xiaomi Redmi 8A (2GB/32GB) - Hàng Chính Hãng\r\n', 'Điện Thoại Xiaomi Redmi 8A (2GB/32GB) - Hàng Chính Hãng được trang bị viên pin có dung lượng cực lớn, lên tới 5000 mAh, cho bạn thỏa sức trải nghiệm cả ngày, chẳng cần bận tâm quá nhiều đến thời lượng pin.\r\nCòn nếu lỡ bạn chủ quan dẫn đến hết pin, thì yên tâm, sẽ chỉ mất ít giờ để sạc đầy Redmi 8A, nhờ việc nó hỗ trợ sạc nhanh 18W thông qua USB Type-C đời mới.\r\nRedmi 8A sở hữu RAM 2GB, vi xử lý Qualcomm Snapdragon 439 tám nhân 64-bit chạy trên giao diện MIUI 10 nổi tiếng của Xiaomi (trên nền tảng Android 9 Pie).\r\n', 3500000, 43, 0, 0, 100),
(32, 4, 'Điện Thoại Xiaomi Redmi Note 8 - Hàng Chính Hãng\r\n', '\"Điện Thoại Xiaomi Redmi Note 8 - Hàng Chính Hãng Không chỉ có 2 hay 3 camera mà với chiếc smartphone mới Xiaomi Redmi Note 8 thì người dùng sẽ có tới 4 camera để thỏa mãn nhu cầu chụp ảnh của mình. Xiaomi Redmi Note 8 sở hữu cho mình camera chính với độ phân giải khủng \"\"khủng\"\" với \"\"số chấm\"\" lên tới 48 MP.\r\n Chiếc máy này sử dụng công nghệ pixel-binning để kết hợp dữ liệu ánh sáng từ 4 pixels liền kề nhằm tạo ra hình ảnh có độ chi tiết cao.\r\nCấu hình vốn là thế mạnh của các thiết bị nên sẽ không quá ngạc nhiên khi Xiaomi Redmi Note 8 được cung cấp thông số kỹ thuật mạnh mẽ.\r\n\r\n\"\r\n', 4000000, 13, 0, 100, 100),
(33, 4, 'ĐIỆN THOẠI XIAOMI REDMI NOTE 9S - HÀNG CHÍNH HÃNG\r\n', 'Bộ xử lý tám nhân hiệu suất cao, xung nhịp lên đến 2.3 GHz. Công cụ AI thế hệ thứ năm với khả năng tính toán vượt trội.\r\n36%: hiệu năng CPU mạnh hơn so với Snapdragon 712\r\n18%: hiệu năng GPU mạnh hơn so với Snapdragon 712\r\n', 5500000, 13, 0, 2, 100),
(34, 4, 'Điện thoại Xiaomi Redmi 8 64GB Ram 4GB - Hàng chính hãng\r\n	', 'Bên cạnh thiết kế, Xiaomi đã sử dụng tấm nền IPS LCD cho màn hình Xiaomi Redmi 8 để mang đến cho smartphone không gian hiển thị sống động với màu sắc chính xác. Độ phân giải HD+ (720 x 1520 pixels) cho hình ảnh sắc nét, chân thực. Bạn sẽ có những giây phút tận hưởng những bộ phim hay, chơi game, giải trí hay làm việc tuyệt vời với Xiaomi Redmi 8. Ngoài ra, màn hình Redmi 8 còn có khả năng lọc ánh sáng xanh giúp bảo vệ đôi mắt người dùng khi sử dụng smartphone trong thời gian dài.\r\nMặc dù là một smartphone giá rẻ nhưng Xiaomi Redmi 8 vẫn được trang bị hệ thống camera kép với camera chính cảm biến 12MP và camera phụ 2MP giúp xóa phông chuyên nghiệp. Camera chính còn có khẩu độ f/1.8 hỗ trợ lấy nét theo pha Dual Pixel nên sẽ giúp mang đến những tấm ảnh chụp với chất lượng tuyệt vời ngay cả trong điều kiện thiếu sáng, giúp bạn chụp ảnh ban đêm xinh đẹp, rõ nét. Hỗ trợ quay video với chất lượng Full HD 1080p nên bạn có thể ghi lại mọi khoảnh khắc đáng nhớ, sẵn sàng chia sẻ với mọi người.\r\nĐiểm cộng tuyệt vời nhất của Xiaomi Redmi 8 chính là viên pin với dung lượng cực “khủng” 5000mAh. Viên pin này của smartphone sẽ cung cấp 17 giờ phát video liên tục, 28 giờ đàm thoại liên tục hay nghe nhạc liên tục tới 180 giờ - những con số vô cùng ấn tượng. Đối với nhu cầu sử dụng thông thường thì chỉ cần một lần sạc đầy, bạn đã có thể sử dụng smartphone đến 3 ngày.\r\n', 3600000, 22, 0, 4, 88);

-- --------------------------------------------------------

--
-- Table structure for table `transact`
--

CREATE TABLE `transact` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(50) DEFAULT NULL,
  `user_phone` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `ward` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `amount` int(15) NOT NULL DEFAULT 0,
  `message` text DEFAULT NULL,
  `created` bigint(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transact`
--

INSERT INTO `transact` (`id`, `status`, `id_user`, `user_name`, `user_phone`, `province`, `district`, `ward`, `address`, `qty`, `amount`, `message`, `created`) VALUES
(87, 4, 41, 'Văn Thắng', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 2, 7380000, NULL, 1599580422360),
(88, 1, 41, 'Văn Thắng', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 3, 11070000, NULL, 1599580646601),
(89, -1, 41, 'Văn Thắng', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 1, 2790000, NULL, 1599581776324),
(90, 4, 42, 'Thắng Nguyễn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 2, 12040000, NULL, 1599963440860),
(92, -1, 42, 'Thắng Nguyễn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 3, 63190000, NULL, 1599969172980),
(93, 4, 42, 'Thắng Nguyễn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 8, 38340000, NULL, 1599969330661),
(94, 1, 42, 'Thắng Nguyễn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 2, 43390000, NULL, 1599977376282),
(95, 1, 42, 'Thắng Nguyễn Văn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 1, 15010000, NULL, 1600016680695),
(96, 1, 42, 'Thắng Nguyễn Văn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 5, 144500000, NULL, 1600088354133),
(97, 4, 42, 'Thắng Nguyễn Văn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 32, 105732000, NULL, 1600091191032),
(98, 2, 42, 'Thắng Nguyễn Văn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 3, 14580000, NULL, 1600093724171),
(99, 3, 42, 'Thắng Nguyễn Văn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 13, 199133000, NULL, 1600096122047),
(100, 1, 42, 'Thắng Nguyễn Văn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 1, 9990000, NULL, 1600097380232),
(101, 0, 42, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(102, 1, 43, 'Thắng pro', '0967244081', 'Tỉnh Bình Định', 'Huyện Tuy Phước', 'Xã Phước Nghĩa', 'cung nam', 10, 123580000, NULL, 1600167057865),
(103, 1, 43, 'Thắng pro', '0967244081', 'Tỉnh Bình Định', 'Huyện Tuy Phước', 'Xã Phước Nghĩa', 'cung nam', 1, 28900000, NULL, 1600188478721),
(104, 0, 43, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(105, -1, 44, 'Hồ Phạm Ngọc Thạch', '0778889076', 'Tỉnh Tây Ninh', 'Huyện Hòa Thành', 'Xã Long Thành Nam', 'Chờ người nơi ấy', 2, 25960000, NULL, 1600314417954),
(106, 0, 44, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `ward` varchar(50) DEFAULT NULL,
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageUrl` varchar(50) DEFAULT NULL,
  `created` bigint(20) DEFAULT NULL,
  `birthdate` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phoneNumber`, `email`, `password`, `sex`, `province`, `district`, `ward`, `address`, `imageUrl`, `created`, `birthdate`) VALUES
(41, 'Văn Thắng', '0326566821', 'cungtrang@gmail.com', '123456', 1, 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', NULL, 1599580329286, '30-4-2000'),
(42, 'Thắng Nguyễn Văn', '0321234567', 'cungtrang0978@gmail.com', '123456', 1, 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', NULL, 1599961403423, '11-8-2018'),
(43, 'Thắng pro', '0967244081', NULL, '123456', 2, 'Tỉnh Bình Định', 'Huyện Tuy Phước', 'Xã Phước Nghĩa', 'cung nam', NULL, 1600166801349, '3-2-2000'),
(44, 'Hồ Phạm Ngọc Thạch', '0778889076', 'ngocthach26112000@gmail.com', 'ngocthach2611', 1, 'Tỉnh Tây Ninh', 'Huyện Hòa Thành', 'Xã Long Thành Nam', 'Chờ người nơi ấy', NULL, 1600314202403, '17-9-2000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idParents` (`idParents`);

--
-- Indexes for table `catalog_gr_parents`
--
ALTER TABLE `catalog_gr_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_parents`
--
ALTER TABLE `catalog_parents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCatalog_gr_parents` (`idCatalog_gr_parents`);

--
-- Indexes for table `image_product`
--
ALTER TABLE `image_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idTransact` (`idTransact`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCatalog` (`idCatalog`);

--
-- Indexes for table `transact`
--
ALTER TABLE `transact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `catalog_gr_parents`
--
ALTER TABLE `catalog_gr_parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `catalog_parents`
--
ALTER TABLE `catalog_parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `image_product`
--
ALTER TABLE `image_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `transact`
--
ALTER TABLE `transact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catalog`
--
ALTER TABLE `catalog`
  ADD CONSTRAINT `catalog_ibfk_1` FOREIGN KEY (`idParents`) REFERENCES `catalog_parents` (`id`);

--
-- Constraints for table `catalog_parents`
--
ALTER TABLE `catalog_parents`
  ADD CONSTRAINT `catalog_parents_ibfk_1` FOREIGN KEY (`idCatalog_gr_parents`) REFERENCES `catalog_gr_parents` (`id`);

--
-- Constraints for table `image_product`
--
ALTER TABLE `image_product`
  ADD CONSTRAINT `image_product_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`idTransact`) REFERENCES `transact` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`idCatalog`) REFERENCES `catalog` (`id`);

--
-- Constraints for table `transact`
--
ALTER TABLE `transact`
  ADD CONSTRAINT `transact_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
