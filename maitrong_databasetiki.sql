-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2020 at 10:31 PM
-- Server version: 10.3.25-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maitrong_databasetiki`
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
(10, 'xe máy', 'https://salt.tikicdn.com/cache/w584/ts/banner/b2/32/68/3cd46b7f90dd990aa49b64e99d6a654f.png');

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
(0, 'Gợi ý cho bạn', 'https://png.pngtree.com/png-vector/20190129/ourlarge/pngtree-flame--fire-png-image_362978.jpg'),
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
  `imageUrl` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
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
(46, 28, 'https://salt.tikicdn.com/cache/w390/media/catalog/product/3/2/32gb-rose-gold_4.u504.d20161031.t112254.502752.jpg\r\n'),
(47, 20, 'https://cdn.tgdd.vn/Products/Images/42/198158/samsung-galaxy-fold-black-600x600.jpg'),
(48, 20, 'https://www.duchuymobile.com/images/detailed/30/bac_kesk-gr.jpg'),
(49, 20, 'https://cdn.tgdd.vn/Files/2019/10/02/1204058/galaxy-fold_800x449_800x449.jpg'),
(50, 20, 'https://vnreview.vn/image/19/93/29/1993290.jpg'),
(51, 5, 'https://bachlongmobile.com/media/catalog/product/cache/2/image/040ec09b1e35df139433887a97daa66f/7/p/7psilver_2.jpg'),
(52, 5, 'https://cdn.tgdd.vn/Products/Images/42/78124/iphone-7-plus-32gb-gold-600x600-600x600.jpg'),
(53, 5, 'https://bizweb.dktcdn.net/thumb/large/100/116/615/products/7plus-1.jpg?v=1513998695480'),
(54, 5, 'https://cdn.tgdd.vn/Products/Images/42/87839/iphone-7-plus-128gb-hh-600x600.jpg'),
(55, 5, 'https://vn-test-11.slatic.net/p/663392b042a88e4842058bb23886e25a.jpg_720x720q80.jpg_.webp'),
(56, 4, 'https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-gold-600x600.jpg'),
(57, 4, 'https://clickbuy.com.vn/uploads/2019/03/iPhone-7-jetback.png'),
(58, 4, 'https://cdn.tgdd.vn/Files/2016/09/06/884128/iphone-7-7-plus-6.jpg'),
(59, 4, 'https://cdn.cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-7-32gb-nhap-khau-1.jpg'),
(60, 4, 'https://cdn.cellphones.com.vn/media/wysiwyg/second_hand_mobile/apple/apple-iphone-7-32gb-cu-99-1.jpg'),
(61, 7, 'https://cdn.tgdd.vn/Products/Images/42/218107/nokia-c1-600x600-1-600x600.jpg'),
(62, 7, 'https://genk.mediacdn.vn/thumb_w/640/2019/12/12/nokia-c1-15761151743071590721660-crop-15761151857992017704694.jpg'),
(63, 7, 'https://photo-1-baomoi.zadn.vn/w1000_r1/2020_02_18_304_34004087/34892e29076aee34b77b.jpg'),
(64, 7, 'https://cdn.tgdd.vn/Files/2020/02/10/1235535/cover-image_800x450.png'),
(65, 7, 'https://cf.shopee.vn/file/017ceac7ceaaa3fab39b1f5c03e6b92d'),
(66, 8, 'https://phuongtung.vn/pt/images/detailed/14/nokia-c2.jpg'),
(67, 8, 'https://didongviet.vn/pub/media/catalog/product//n/o/nokia-c2_1.jpg'),
(68, 8, 'https://cdn.tgdd.vn/Files/2020/04/17/1249755/nokia-c2_800x449.jpg'),
(69, 8, 'https://www.gizmochina.com/wp-content/uploads/2020/05/Nokia-C2-Tennen.jpg'),
(70, 8, 'https://images.ctfassets.net/wcfotm6rrl7u/5aBHezLL9dvO2GILkT70Hz/bac2d996cf8c4952514d5f4c57caf8e1/nokia_C2-og.jpg'),
(71, 9, 'https://cdn.tgdd.vn/Products/Images/42/202919/nokia-32-16gb-2-600x600.jpg'),
(72, 9, 'https://didongthongminh.vn/upload_images/2019/05/nokia-32-silver-400x460.png'),
(73, 9, 'https://images.ctfassets.net/wcfotm6rrl7u/3AdLECzrEGRGoZZuaBtQUi/74ba2b72d5c70f982f80daf57c49de7a/nokia_3_2-device-mobile.png'),
(74, 9, 'https://images-na.ssl-images-amazon.com/images/I/61YkABm81cL._AC_SL1000_.jpg'),
(75, 9, 'https://cdn.tgdd.vn/Products/Images/42/199977/nokia-32-14.jpg'),
(76, 10, 'https://static.toiimg.com/photo/69516546/Xiaomi-Redmi-Go-16GB.jpg'),
(77, 10, 'https://i.gadgets360cdn.com/products/large/1548393277_635_redmi_go.jpg'),
(78, 10, 'https://phoneaqua.com/products/xiaomi-redmi-go-Price.webp'),
(79, 10, 'https://cdn-files.kimovil.com/default/0002/88/thumb_187000_default_big.jpeg'),
(80, 11, 'https://cdn.tgdd.vn/Products/Images/42/210089/xiaomi-redmi-8a-1-600x600.jpg'),
(81, 11, 'https://fptshop.com.vn/Uploads/Originals/2019/10/21/637072701542091596_xiaomi-redmi-8a-den-1.png'),
(82, 11, 'https://cdn.tgdd.vn/Products/Images/42/218762/xiaomi-redmi-8a-dual-600x600-600x600.jpg'),
(83, 11, 'https://vn-test-11.slatic.net/p/9fb1e5d522bf67b8a809f8bd1942e816.png_720x720q80.jpg_.webp'),
(84, 12, 'https://cdn.tgdd.vn/Products/Images/42/212212/xiaomi-redmi-8-64gb-red-600x600.jpg'),
(85, 12, 'https://salt.tikicdn.com/cache/w390/ts/product/14/71/dc/4eaa1c5b79e21195b85614288eff4ab5.png'),
(86, 12, 'https://cf.shopee.vn/file/52448c69a00f6f0423ff5a282948c0fd'),
(87, 12, 'https://cdn.tgdd.vn/Products/Images/42/209797/xiaomi-redmi-note-8-pro-white-400x400.jpg'),
(88, 16, 'https://cdn.tgdd.vn/Products/Images/42/214909/samsung-galaxy-note-10-lite-thumb-600x600.jpg'),
(89, 16, 'https://www.xtmobile.vn/vnt_upload/product/02_2020/thumbs/600_samsung_galaxy_note_10_lite.jpg'),
(90, 16, 'https://hoanghamobile.com/Uploads/Originals/2020/02/19/202002190959392616_1.png;width=550'),
(91, 16, 'https://hoanghamobile.com/Uploads/Originals/2020/01/06/202001061644020975_HHM-Khung-%E1%BA%A3nh-s%E1%BA%A3n-ph%E1%BA%A9m-12.png;width=820;height=550;watermark=logo;crop=auto;format=jpg'),
(92, 17, 'https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/1888951315.jpeg'),
(93, 17, 'https://didongviet.vn/pub/media/catalog/product/cache/926507dc7f93631a094422215b778fe0/s/a/samsung-galaxy-a31-den-didongviet-1_1.jpg'),
(94, 17, 'https://cdn.tgdd.vn/Products/Images/42/216174/samsung-galaxy-a313-2.jpg'),
(95, 17, 'https://vnreview.vn/image/20/53/12/2053121.jpg?t=1585056730732'),
(96, 18, 'https://cdn.tgdd.vn/Products/Images/42/217935/samsung-galaxy-s20-600x600-hong-600x600.jpg'),
(97, 18, 'https://fptshop.com.vn/Uploads/Originals/2020/2/12/637170929984611739_ss-s20-xam-1.png'),
(98, 18, 'https://cdn.tgdd.vn/Products/Images/42/217936/samsung-galaxy-s20-plus-600x600-fix-600x600.jpg'),
(99, 18, 'https://fptshop.com.vn/Uploads/Originals/2020/2/12/637170945536714482_ss-s20-plus-den-1.png'),
(100, 19, 'https://cdn.tgdd.vn/Products/Images/42/191276/samsung-galaxy-note-10-silver-600x600.jpg'),
(101, 19, 'https://cdn.tgdd.vn/Products/Images/42/206176/samsung-galaxy-note-10-plus-171220-101247-600x600.jpg'),
(102, 19, 'https://sudospaces.com/mobilecity-vn/images/2019/10/samsung-note-10-plus-4.jpg'),
(103, 19, 'https://product.hstatic.net/1000370939/product/samsung-galaxy-note-10-plus-white-400x460_80d08ab229904454a9cc0158812f6e28_grande.png'),
(104, 26, 'https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb-hh-600x600.jpg'),
(105, 26, 'https://didongviet.vn/pub/media/catalog/product/cache/926507dc7f93631a094422215b778fe0/i/p/iphone-x-64gb-quoc-te-cu-mau-xam-didongviet_1.jpg'),
(106, 26, 'https://cdn.cellphones.com.vn/media/wysiwyg/mobile/apple/apple-iphone-x-64-gb-95-cu-1.jpg'),
(107, 26, 'https://product.hstatic.net/1000259254/product/x_sliver_4_b08c6311e7dc4c5980b69698467feef7_grande.jpg'),
(108, 29, 'https://bachlongmobile.com/media/catalog/product/cache/2/image/040ec09b1e35df139433887a97daa66f/7/p/7psilver_2.jpg'),
(109, 29, 'https://cdn.tgdd.vn/Products/Images/42/78124/iphone-7-plus-32gb-gold-600x600-600x600.jpg'),
(110, 29, 'https://bizweb.dktcdn.net/thumb/large/100/116/615/products/7plus-1.jpg?v=1513998695480'),
(111, 29, 'https://product.hstatic.net/1000370939/product/iphone-7-plus-gold-400x460-400x460_c6cfca0cdd7742a4b41513af30fb4617.png'),
(112, 30, 'https://salt.tikicdn.com/cache/w390/ts/product/16/15/72/7363f6268c34387efc2d4079c537e64e.jpg'),
(113, 30, 'https://didongviet.vn/pub/media/catalog/product//i/p/iphone-se-family-didongviet_10.jpg'),
(114, 30, 'https://cdn.tgdd.vn/Products/Images/42/74997/Slider/iphone-se-16gb--1.jpg'),
(115, 30, 'https://bizweb.dktcdn.net/100/112/815/products/iphonese-gallery1-2016.jpg?v=1534912234150'),
(116, 31, 'https://cdn.tgdd.vn/Products/Images/42/210089/xiaomi-redmi-8a-1-600x600.jpg'),
(117, 31, 'https://fptshop.com.vn/Uploads/Originals/2019/10/21/637072701542091596_xiaomi-redmi-8a-den-1.png'),
(118, 31, 'https://cdn.tgdd.vn/Products/Images/42/218762/xiaomi-redmi-8a-dual-600x600-600x600.jpg'),
(119, 31, 'https://vn-test-11.slatic.net/p/0d02e59af5bc4d21ad251520d2cb3a31.jpg_720x720q80.jpg_.webp'),
(120, 32, 'https://cdn.tgdd.vn/Products/Images/42/209535/xiaomi-redmi-note-8-white-400x400.jpg'),
(121, 32, 'https://clickbuy.com.vn/uploads/2019/09/thumb-Note-8-1.1.jpg'),
(122, 32, 'https://fptshop.com.vn/Uploads/Originals/2019/10/7/637060410960077373_xiaomi-redmi-note-8-xanh-1.png'),
(123, 32, 'https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/1153449202.png'),
(124, 33, 'https://cdn.tgdd.vn/Products/Images/42/214924/xiaomi-redmi-note-9s-4gb-green-400x460-400x400.jpg'),
(125, 33, 'https://fptshop.com.vn/Uploads/Originals/2020/5/8/637245493329150474_xiaomi-redmi-note-9-xam-1.png'),
(126, 33, 'https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/808898736.jpeg'),
(127, 33, 'https://cf.shopee.vn/file/2431d56b2a5e0d44bf5ac24d84c12def'),
(128, 34, 'https://clickbuy.com.vn/uploads/2019/09/thumb_RMN8_Pro_1.jpg'),
(129, 34, 'https://sudospaces.com/mobilecity-vn/images/2019/09/xiaomi-redmi-note-8-pro.jpg'),
(130, 34, 'https://fptshop.com.vn/Uploads/Originals/2020/4/24/637233204389060896_xiaomi-redmi-note-8-pro-blue-1.png'),
(131, 34, 'https://cf.shopee.vn/file/5e93b0e26df8bcdb08ceb0e12586c727'),
(132, 35, 'https://fptshop.com.vn/Uploads/Originals/2019/6/11/636958630926572881_lenovo-ideapad-330-15ikb-xam-1.png'),
(133, 35, 'https://salt.tikicdn.com/cache/w390/ts/product/f4/7e/51/68f51f818119abc72735a8a2a15ab384.jpg'),
(134, 35, 'https://bizweb.dktcdn.net/100/330/208/products/laptop-lenovo-ideapad-330.jpg?v=1593425025613'),
(135, 35, 'https://www.lenovo.com/medias/lenovo-laptop-ideapad-330-15-gallery-03.jpg?context=bWFzdGVyfHJvb3R8OTk3NTd8aW1hZ2UvanBnfGg5NS9oNDYvOTcxNDY5OTg5NDgxNC5qcGd8YmMxMWIwZjZhZDgzZjQyOWZlMTE2NWYyOWM3OGRlZGQzNDk4MWJhNWVjYmI3MDgzZWRkNjVhZTA3MWUxMDIxYw'),
(136, 36, 'https://driver.gianhangvn.com/file/thiet-ke-1382234f1442.jpg'),
(137, 36, 'https://salt.tikicdn.com/ts/product/92/2a/c9/05775624562952f451336c1a5663d117.jpg'),
(138, 36, 'https://hoangsoncomputer.com/wp-content/uploads/2020/05/Laptop-Dell-3583-7315BLK-Core-i7-8565U-RAM-8GB-HDD-1TB-LCD-15.6-FHD-WIN10-Black-2.png'),
(139, 36, 'https://salt.tikicdn.com/ts/product/13/f7/6d/9b1f85d5a0c860a9416bf7c5647d05ac.jpg'),
(140, 37, 'https://www.ankhang.vn/media/product/18341-asus-vivobook-s14-s433ea-eb100t-1.jpg'),
(141, 37, 'data:image/jpeg;base64,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kQtO/wDHgJArdAzspYhioAVVBCAgWzWJJJtxYm2trXN9nhcOQdNW7eCyXCYW+7QcW4nwmyp0wosBOkRpHiqbJ2ZTw9NaVO9kUKCzFmt3sdT4mXYiSEREBERAREQEREBERAREQEjrUVcZXUMOxhceMkiBqK+zGXWkcw+9uesPoud/g3b6wlDS5GqPvKkWbxK7iL+0N/AzppDisKlQWdQbag6hlParDVT3iRMDQhzxHmtyPMbx8R3zO0mr7PqJqnpF7OqKw8Nyv+qbD2jIKVQNex1GhBBDKexlOqnxlZhLICe2ntp7aQPLRaexJGNomU9tuG8nco3kxpDFU7d39bpsMNhOLCw4L9pmeFwtus2/s4LLcvEaACIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAlbF4FKmrDrAaOptUXuDDh3HQ8QZZiBo62Gq094NRfnovpQPwqY9bxTX8GY0aisMykEXIuDxG8HsI7JvpSxezUc5xdHt/aU7BiBuDXFnHcwNuEjQo2i0jrpiKehomr+HQamvmyVGGXyLeUs08FUcdb0d+yzOB+7f3+BkaNqxqEt0dMZnsDa/VRTuZzwG+3E2NgbG21wWDCak5nI1ci3ko9le73knWSYTCpTXKgsL3JuSzN85mOrHTeZNLBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQP/2Q=='),
(142, 37, 'https://anphat.com.vn/media/product/31002_laptop_asus_vivobook_s14_s431fl_eb511t_1.jpg'),
(143, 37, 'https://anphat.com.vn/media/product/30594_laptop_asus_vivobook_s_s431fa_eb076t_1.jpg'),
(148, 39, 'https://macone.vn/wp-content/uploads/2020/05/macbookpro2020-silver.jpeg'),
(149, 39, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/305/872/products/2071628.jpg?v=1589429857450'),
(150, 39, 'https://minhtuanmobile.com/wp-content/uploads/2020/05/macbook-pro-13-2020-touchbar-gray-1-600x600.jpg'),
(151, 39, 'https://laptopvang.com/wp-content/uploads/2020/05/macbook-pro-13-inch-2020-2-port-silver.jpg'),
(152, 40, 'https://canary.contestimg.wish.com/api/webimage/5f06ed1309021d003c29f00d-large.jpg?cache_buster=d7cf036f9cf9362fbc52cd4bf3ec0596'),
(153, 40, 'https://macf5.vn/wp-content/uploads/2020/02/MacBook-Pro-15-inch-Touch-Bar-2018-Silver-MR962-MR972-2.jpg'),
(154, 40, 'https://macf5.vn/wp-content/uploads/2020/02/MacBook-Pro-15-inch-Touch-Bar-2018-Silver-MR962-MR972-3.jpg'),
(155, 40, 'https://bucket.nhanh.vn/store1/40857/ps/20200330/mr9721_thumb.jpeg'),
(156, 41, 'https://macf5.vn/wp-content/uploads/2020/03/MacBook-Pro-13-inch-Touch-Bar-2018-Silver-MR9U2-MR9V2-1.jpg'),
(157, 41, 'https://product.hstatic.net/1000285571/product/mpxu2-1.jpg'),
(158, 41, 'https://macf5.vn/wp-content/uploads/2020/02/MacBook-Pro-13-inch-Retina-2015-MF839-MF840-MF841-MF843-1.jpg'),
(159, 41, 'https://laptopvang.com/wp-content/uploads/2017/11/Ngo%E1%BA%A1i-h%C3%ACnh-MacBook-Pro-2017.jpg'),
(160, 42, 'https://bizweb.dktcdn.net/100/318/659/products/4-1-443f3b29-cf66-4d15-8927-69e0cd65defd.jpg?v=1536984378143'),
(161, 42, 'https://mac24h.vn/images/companies/1/macbook%20pro%202016/h%C3%ACnh%20%E1%BA%A3nh%20t%E1%BA%A1m/3898844_Screen_Shot_2016-10-28_at_00.36.21.png?1477617195456'),
(162, 42, 'https://macone.vn/wp-content/uploads/2019/03/15inch_2018_gray.jpg'),
(163, 42, 'https://img.websosanh.vn/v2/users/root_product/images/laptop-macbook-pro-2016-mnqf2/tBkcHMVUHuot.jpg'),
(164, 43, 'https://phucanhcdn.com/media/product/39986_tuf_gaming_fx505dt_ha5.jpg'),
(165, 43, 'https://laptop88.vn/media/product/5708_18125_asus_tuf_gaming_fx505dt_hn488t_4.jpg'),
(166, 43, 'https://cdn.mediamart.vn/Product/laptop-asus-tuf-gaming-fx505dthn488t-xam-UBWub3.png'),
(167, 43, 'https://hanoicomputercdn.com/media/product/54524_49587_asus_gaming_tuf_fx505dt_al118t_2.jpg'),
(168, 44, 'https://anphat.com.vn/media/product/33754_asus_rog_zephyrus_g14_ga401i_hhe042t_r5_4600hs_3_38c6e274594247ccbe9d9044a4e3afba_master.jpg'),
(169, 44, 'https://xgear.vn/wp-content/uploads/2020/04/zep-g14-4.jpg'),
(170, 44, 'https://xgear.vn/wp-content/uploads/2020/06/G14-Grey-15-Lighting.jpg'),
(171, 44, 'https://xgear.vn/wp-content/uploads/2020/04/zep-g14-8.jpg'),
(172, 45, 'https://xgear.vn/wp-content/uploads/2019/05/G531GD-05-1.jpg'),
(173, 45, 'https://xgear.vn/wp-content/uploads/2019/05/G531GD-06-1.jpg'),
(174, 45, 'https://xgear.vn/wp-content/uploads/2019/05/GD531GD-04-1.jpg'),
(175, 45, 'https://xgear.vn/wp-content/uploads/2019/05/G531GD-07-1.jpg'),
(176, 46, 'https://xgear.vn/wp-content/uploads/2019/05/Zephyrus-G-GA502-3-1.jpg'),
(177, 46, 'https://xgear.vn/wp-content/uploads/2019/05/Zephyrus-G-GA502-2-1.jpg'),
(178, 46, 'https://phucanhcdn.com/media/product/39542_asus_gaming_rog_zephyrus_ga502iu_ha1.jpg'),
(179, 46, 'https://product.hstatic.net/1000296652/product/al007t_1_879df4669d074a02bc2278c6e6e073b1.jpg'),
(180, 47, 'https://bizweb.dktcdn.net/thumb/grande/100/372/934/products/laptopnew-asus-zenbook-duo-ux481-2-16139cd9-61b3-4e9f-8f4f-c1ced84b2a72.jpg?v=1589803230283'),
(181, 47, 'https://cdn.mediamart.vn/Product/laptop-asus-ux481flbm049t-win10-xanh-7K790m.jpg'),
(182, 47, 'https://bizweb.dktcdn.net/thumb/grande/100/372/934/products/laptopnew-asus-zenbook-duo-ux481-2-16139cd9-61b3-4e9f-8f4f-c1ced84b2a72.jpg?v=1589803230283'),
(183, 47, 'https://phucanhcdn.com/media/lib/37506_LaptopAsusZenbookDuoUX481FL-BM049T-2.jpg'),
(184, 48, 'https://phucanhcdn.com/media/product/39886_pavilion_x360_14_dw_ha4.jpg'),
(185, 48, 'https://phucanhcdn.com/media/product/39886_pavilion_x360_14_dw_ha2.jpg'),
(186, 48, 'https://phucanhcdn.com/media/product/39886_pavilion_x360_14_dw_ha5.jpg'),
(187, 48, 'https://img.fpt.shop/w_465/h_465/f_png/cmpr_10/m_letterbox_ffffff_100/https://fptshop.com.vn/Uploads/Originals/2020/2/14/637172701408686754_hp-pavilion-x360-14-vang-1.png'),
(188, 49, 'https://vn-test-11.slatic.net/p/093874d08ceb360c94a455dd7c65547e.jpg'),
(189, 49, 'https://farm6.staticflickr.com/5575/14789565277_c641a7105c.jpg'),
(190, 49, 'https://vn-test-11.slatic.net/p/c75e95283acb2db43720071c6713604c.jpg_720x720q80.jpg_.webp'),
(191, 49, 'https://vnreview.vn/image/12/92/67/1292675.jpg?t=1408504433191'),
(192, 50, 'https://ph-live-01.slatic.net/p/03e773ca6f6de5bfaebecbd6efd7f017.jpg'),
(193, 50, 'https://vn-test-11.slatic.net/p/4772c77d5d5b4cdb991b5f924567cef1.jpg'),
(194, 50, 'https://vn-test-11.slatic.net/p/8199fd9330a4e8dd50125790473497a1.jpg_720x720q80.jpg_.webp'),
(195, 50, 'https://vn-test-11.slatic.net/p/cebed24d08eb0229325619eb95f9d243.jpg'),
(196, 51, 'https://www.xtmobile.vn/vnt_upload/product/Hinh_DT/LG/v50/thumbs/600_lg-v50-800x800-min.jpg'),
(197, 51, 'https://didongmoi.com.vn/site/pictures/products/lg-v50-thinq-5g-cu.jpg'),
(198, 51, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/168/366/products/v50-2-7e6139d0-0147-4e92-90ed-980bb60ad395.png'),
(199, 51, 'https://www.viettablet.com/images/thumbnails/480/516/detailed/36/lg-v50-thinq-5g-thiet-ke-cau-hinh-xach-tay.jpg'),
(200, 52, 'https://www.xtmobile.vn/vnt_upload/product/08_2019/thumbs/600_lg-g8x-thinq.jpg'),
(201, 52, 'https://clickbuy.com.vn/uploads/2020/09/thumb_g8x.jpg'),
(202, 52, 'https://www.duchuymobile.com/images/detailed/27/xanh_bh9e-jq.jpg'),
(203, 52, 'https://images-na.ssl-images-amazon.com/images/I/816uiupgaEL._AC_SY355_.jpg'),
(204, 53, 'https://www.xtmobile.vn/vnt_upload/product/12_2019/thumbs/600_600_600_lg_v40_black_800x800.jpg'),
(205, 53, 'https://www.xtmobile.vn/vnt_upload/product/12_2019/thumbs/600_600_lg_v40_red_800x800.jpg'),
(206, 53, 'https://didongmoi.com.vn/site/pictures/slide_posts/lg-v40-thinq-ban-xach-tay-han-quoc-cu-like-new-gia-re%20(2).jpg'),
(207, 53, 'https://didongthongminh.vn/upload_images/2018/10/lg-v40-thinq-black.png'),
(208, 54, 'https://www.xtmobile.vn/vnt_upload/product/12_2019/thumbs/600_600_lg_v40_800x800_1.jpg'),
(209, 54, 'https://www.xtmobile.vn/vnt_upload/product/12_2019/thumbs/600_600_lg_v40_red_800x800_1.jpg'),
(210, 54, 'https://www.duchuymobile.com/images/detailed/25/lg-v40-thinq-my.jpg'),
(211, 54, 'https://product.hstatic.net/1000309862/product/54905d6c439a9c0e0b55f9caf0c0_master_1178d4adaf4245feb96469959f108b12_m_b328d12c1dd8407aa13a6262a48b31f2_master.jpg'),
(212, 55, 'https://cdn.tgdd.vn/Products/Images/42/220654/oppo-a92-tim-600x600-1-2-600x600.jpg'),
(213, 55, 'https://didongviet.vn/pub/media/catalog/product/cache/926507dc7f93631a094422215b778fe0/d/i/dien-thoai-oppo-a92_1.jpg'),
(214, 55, 'https://dienmaycholon.vn/public/picture/product/product16446/product_16446_1.png'),
(215, 55, 'https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/A92-Whi-1.jpg'),
(216, 56, 'https://cdn.tgdd.vn/Products/Images/42/222596/oppo-reno4-275620-035629-600x600.jpg'),
(217, 56, 'https://didongviet.vn/pub/media/catalog/product//o/p/oppo-reno-4-xanh-didongviet-1_1_1.jpg'),
(218, 56, 'https://phuongtung.vn/pt/images/detailed/16/oppo-reno-4-blue.png'),
(219, 56, 'https://didongviet.vn/pub/media/catalog/product//o/p/oppo-reno-4-pro_2.jpg'),
(220, 57, 'https://cdn.tgdd.vn/Products/Images/42/198150/oppo-find-x2-blue-600x600-600x600.jpg'),
(221, 57, 'https://cdn.tgdd.vn/Products/Images/42/218434/oppo-find-x2-pro-black-600x600-600x600.jpg'),
(222, 57, 'https://hoanghamobile.com/Uploads/Originals/2020/03/13/202003131344163410_HHM-Khung-%E1%BA%A3nh-s%E1%BA%A3n-ph%E1%BA%A9m-1.png;width=820;height=550;watermark=logo;crop=auto;format=jpg'),
(223, 57, 'https://didongthongminh.vn/upload_images/2020/02/Oppo-Find-X2-ocean.png'),
(224, 58, 'https://cdn.tgdd.vn/Products/Images/42/213591/oppo-reno3-trang-600x600-600x600.jpg'),
(225, 58, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/c/o/combo---reno3-pro---black.gif'),
(226, 58, 'https://sudospaces.com/mobilecity-vn/images/2020/01/oppo-reno-3-pro-5g-do.jpg'),
(227, 58, 'https://didongviet.vn/pub/media/catalog/product//o/p/oppo-reno-3-pro.jpg'),
(228, 59, 'https://fptshop.com.vn/Uploads/Originals/2019/10/25/637076223853081004_vivo-y19-trang-1.png'),
(229, 59, 'https://nguyenhuymobile.com/wp-content/uploads/2019/11/1-1.jpg'),
(230, 59, 'https://www.vivosmartphone.vn/uploads/product/y19/y19_trangsuongmai.png'),
(231, 59, 'https://didongthongminh.vn/upload_images/2019/11/vivo-y19-den.png'),
(232, 60, 'https://www.thegioididong.com/images/42/223847/vivo-x50-pro-plus-100120-100104-400x400.jpg'),
(233, 60, 'https://img.fpt.shop/w_465/h_465/f_png/cmpr_10/m_letterbox_ffffff_100/https://fptshop.com.vn/Uploads/Originals/2020/7/22/637310320519096243_vivo-x50-pro-xam-1.png'),
(234, 60, 'https://www.duchuymobile.com/images/detailed/33/xam_h6sg-xo_t8mm-uy.jpg'),
(235, 60, 'https://msg2viw9dj.vcdn.com.vn/uploads/2020/06/Clickbuy0932904-vivo-x50-pro-1.jpg'),
(236, 61, 'https://img.fpt.shop/w_465/h_465/f_png/cmpr_10/m_letterbox_ffffff_100/https://fptshop.com.vn/Uploads/Originals/2020/7/22/637310320519096243_vivo-x50-pro-xam-1.png'),
(237, 61, 'https://www.thegioididong.com/images/42/223847/vivo-x50-pro-plus-100120-100104-400x400.jpg'),
(238, 61, 'https://sudospaces.com/mobilecity-vn/images/2020/05/vivo-x50-01.jpg'),
(239, 61, 'https://www.duchuymobile.com/images/detailed/33/xam_h6sg-xo_t8mm-uy.jpg'),
(240, 62, 'https://cdn.tgdd.vn/Products/Images/42/217859/vivo-v19-xanh-600x600-600x600.jpg'),
(241, 62, 'https://fptshop.com.vn/Uploads/Originals/2020/6/24/637286159371581434_vivo-v19-neo-1.png'),
(242, 62, 'https://cellphones.com.vn/media/catalog/product/v/i/vivo-v19-_4.png'),
(243, 62, 'https://img.sosanhgia.com/images/500x0/c8175bbd39b3432fa65a767c0e06a5ca/vivo-v19-8gb128gb.jpeg'),
(244, 63, 'https://cdn.tgdd.vn/Products/Images/42/227689/realme-7-pro-043220-013244-600x600.jpg'),
(245, 63, 'https://cdn.tgdd.vn/Products/Images/42/227731/realme-7-043120-113116-600x600.jpg'),
(246, 63, 'https://cellphones.com.vn/sforum/wp-content/uploads/2020/09/Realme-7-Mist-Blue-1.jpg'),
(247, 63, 'https://cdn.tgdd.vn/Files/2020/08/25/1283567/0_1200x675-800-resize.jpg'),
(248, 64, 'https://cdn.tgdd.vn/Products/Images/42/214645/realme-6-pro-600x600-2-600x600.jpg'),
(249, 64, 'https://msmobile.com.vn/images/products/2020/03/06/large/realme-6-pro-msmobile-3_1583512358.jpg.jpg'),
(250, 64, 'https://sudospaces.com/mobilecity-vn/images/2020/03/realme-6-pro-3.jpg'),
(251, 64, 'https://cdn.tgdd.vn/Products/Images/42/214644/realme-6-xanh-600x600-600x600.jpg'),
(252, 65, 'https://cdn.tgdd.vn/Products/Images/42/227731/realme-7-043120-113116-600x600.jpg'),
(253, 64, 'https://cdn.tgdd.vn/Products/Images/42/227689/realme-7-pro-043220-013244-600x600.jpg'),
(254, 64, 'https://cellphones.com.vn/sforum/wp-content/uploads/2020/09/Realme-7-Mist-Blue-1.jpg'),
(255, 65, 'https://cdn.tgdd.vn/Products/Images/42/227731/realme-72.jpg'),
(256, 66, 'https://cdn.tgdd.vn/Products/Images/42/227731/realme-7-043120-113116-600x600.jpg'),
(257, 66, 'https://cdn.tgdd.vn/Products/Images/42/227689/realme-7-pro-043220-013244-600x600.jpg'),
(258, 66, 'https://cdn.tgdd.vn/Products/Images/42/227688/realme-7i-xanhla-600x600-600x600.jpg'),
(259, 65, 'https://cellphones.com.vn/media/catalog/product/r/e/realme-7i-xanh-duong_1.jpg'),
(260, 67, 'https://cdn.tgdd.vn/Products/Images/42/218363/huawei-nova-7i-pink-600x600-600x600.jpg'),
(261, 67, 'https://vn-test-11.slatic.net/p/11ae8fc4547c12ee8fcbcca01dd2a300.jpg_720x720q80.jpg_.webp'),
(262, 67, 'https://cdn.tgdd.vn/Products/Images/42/218363/huawei-nova-7i-pink-400x460-400x460.png'),
(263, 67, 'https://cdn.tgdd.vn/Products/Images/42/220109/huawei-nova-7-1-600x600.jpg'),
(264, 68, 'https://vn-test-11.slatic.net/p/54e2edfc3b3606e79a3b0b219b1b68b2.jpg_720x720q80.jpg_.webp'),
(265, 68, 'https://cdn.tgdd.vn/Products/Images/42/179673/huawei-nova-3i-600-600-600x600.jpg'),
(266, 68, 'https://cdn.tgdd.vn/Products/Images/42/221926/huawei-y6p-tgdd3-1.jpg'),
(267, 68, 'https://vn-test-11.slatic.net/p/f98f2177513fdc3694e61b81888b0db3.jpg_720x720q80.jpg_.webp'),
(268, 69, 'https://fptshop.com.vn/Uploads/Originals/2019/3/28/636893871537890000_huawei-p30-pro-xanh-thien-thanh-1.png'),
(269, 69, 'https://cdn.tgdd.vn/Products/Images/42/197228/huawei-p30-pro-1-600x600.jpg'),
(270, 68, 'https://dn.clickbuy.com.vn/uploads/2019/04/huawei-p30-pro-den.png'),
(271, 69, 'https://www.duchuymobile.com/images/variant_image/25/p30-pro-thien-thanh.jpg'),
(272, 70, 'https://fptshop.com.vn/Uploads/Originals/2020/2/6/637165989862080442_huawei-nova-5t-green-1.png'),
(273, 70, 'https://img.sosanhgia.com/images/500x0/c02fe7a2b30c458f8cdafb1428c92e7e/huawei-nova-5t-8gb128gb.jpeg'),
(274, 70, 'https://fptshop.com.vn/Uploads/Originals/2020/2/6/637165989863348429_huawei-nova-5t-green-2.png'),
(275, 70, 'https://img.websosanh.vn/v2/users/root_product/images/dien-thoai-huawei-nova-5t-/yhaxhgdjembqn.jpg'),
(276, 71, 'https://cdn.tgdd.vn/Products/Images/42/219208/vsmart-joy-3-4gb-den-600x600-600x600.jpg'),
(277, 71, 'https://hoanghamobile.com/Uploads/Originals/2020/02/07/202002071340211211_HHM-Khung-%E1%BA%A3nh-s%E1%BA%A3n-ph%E1%BA%A9m-12.png;width=820;height=550;watermark=logo;crop=auto;format=jpg'),
(278, 71, 'https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/1473371517.jpeg'),
(279, 71, 'https://vn-test-11.slatic.net/p/92000cd8766d8d913b4d168b657b4c4e.jpg_720x720q80.jpg_.webp'),
(280, 72, 'https://cdn.tgdd.vn/Products/Images/42/227060/vsmart-aris-5g-pro-100320-110342-600x600.jpg'),
(281, 72, 'https://cdn.tgdd.vn/Products/Images/42/228531/vsmart-aris-pro-181720-121748-600x600.jpg'),
(282, 72, 'https://didongviet.vn/pub/media/catalog/product//v/s/vsmart-aris-pro-8gb-128gb.jpg'),
(283, 72, 'https://24hstore.vn/images/products/2020/08/15/original/vsmart-aris-5g-pro_1597464174.jpg'),
(284, 73, 'https://salt.tikicdn.com/ts/product/87/dc/e0/f0d649b9a7457fb2db3f363105b4a1f8.jpg'),
(285, 73, 'https://fptshop.com.vn/Uploads/Originals/2020/9/17/637359469441710404_vsmart-aris-green-1.png'),
(286, 73, 'https://cdn.tgdd.vn/Products/Images/42/209553/vsmart-live-6gb-white-600x600.jpg'),
(287, 73, 'https://cdn.tgdd.vn/Products/Images/42/228530/vsmart-aris-182020-122018-600x600.jpg'),
(288, 74, 'https://cdn.tgdd.vn/Products/Images/42/227529/vsmart-live-4-6gb-245420-075418-600x600.jpg'),
(289, 74, 'https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-live-4-1.jpg'),
(290, 74, 'https://hoanghamobile.com/Uploads/Originals/2020/08/24/202008241726046776_Vsmart%20Live%204%20(12).png;width=820;height=550;watermark=logo;crop=auto;format=jpg'),
(291, 74, 'https://cdn.tgdd.vn/Products/Images/42/209553/vsmart-live-6gb-white-600x600.jpg'),
(292, 75, 'https://cdn.tgdd.vn/Products/Images/42/222202/bphone-b86s-thumb-tam-600x600.jpg'),
(293, 75, 'https://cdn.tgdd.vn/Products/Images/42/206175/bphone-4-thumb-tam-600x600.jpg'),
(294, 75, 'https://didongviet.vn/blog/wp-content/uploads/2020/05/thiet-ke-bphone-b86-didongviet-1.jpg'),
(295, 75, 'https://didongviet.vn/blog/wp-content/uploads/2020/05/cover-bphone-b86-didongviet.jpg'),
(296, 76, 'https://cdn.tgdd.vn/Products/Images/42/206175/bphone-4-thumb-tam-600x600.jpg'),
(297, 76, 'https://cdn.tgdd.vn/Files/2020/05/10/1254631/bphoneb86-40_1280x720-800-resize.jpg'),
(298, 76, 'https://tintuc.vnshop.vn/wp-content/uploads/2020/05/Bphone-M%C3%A0u-s%E1%BA%AFc-696x397.jpg'),
(299, 76, 'https://didongviet.vn/blog/wp-content/uploads/2020/05/cover-bphone-b86-didongviet.jpg'),
(300, 77, 'https://cdn.tgdd.vn/Files/2020/06/12/1262483/bkav-c85_800x450.jpg'),
(301, 77, 'https://cdn.tgdd.vn/Products/Images/42/226902/600-bkav-c85-600x600.jpg'),
(302, 77, 'https://cdn.tgdd.vn/Files/2020/06/12/1262483/5_960x541-800-resize.jpg'),
(303, 77, 'https://genk.mediacdn.vn/thumb_w/640/139269124445442048/2020/6/10/photo1591776269700-15917762698991347640027.png'),
(304, 78, 'https://clickbuy.com.vn/uploads/2019/04/bphone-3-pro-den.png'),
(305, 78, 'https://cf.shopee.vn/file/2ec80aa302be92bcce5ad86c95d64dc6'),
(306, 78, 'https://cf.shopee.vn/file/a04516cdb691bd26c9308762088e0ef8'),
(307, 78, 'https://vn-live-01.slatic.net/p/e8539466699f42d96c20737d62319abb.jpg');

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
(278, 105, 27, 1, 15010000),
(279, 101, 14, 3, 30000000),
(280, 107, 27, 1, 15010000),
(281, 107, 15, 1, 12000000),
(282, 108, 1, 1, 2790000),
(283, 108, 13, 1, 9000000),
(284, 109, 23, 1, 18000000),
(285, 109, 28, 1, 6020000),
(286, 109, 22, 1, 20020000),
(287, 110, 23, 2, 36000000),
(290, 111, 15, 1, 12000000),
(293, 111, 1, 3, 8370000),
(294, 112, 20, 3, 142500000),
(295, 113, 18, 10, 182665000),
(296, 113, 17, 1, 5841000),
(299, 114, 7, 5, 6950000),
(300, 115, 7, 5, 6950000),
(301, 116, 7, 7, 9730000),
(302, 117, 7, 5, 6950000),
(303, 118, 7, 2, 2780000),
(304, 118, 12, 1, 2421000),
(305, 119, 17, 1, 5841000),
(306, 120, 33, 1, 4785000),
(307, 121, 30, 2, 24900000),
(308, 121, 29, 3, 32850000),
(309, 121, 23, 1, 18000000),
(310, 122, 9, 1, 1990000),
(311, 122, 29, 1, 10950000),
(312, 120, 34, 1, 2808000),
(313, 122, 34, 2, 5616000),
(314, 122, 68, 1, 3500000),
(315, 122, 67, 1, 6000000),
(316, 122, 18, 2, 36533000),
(317, 122, 17, 1, 5841000),
(318, 129, 18, 2, 36533000),
(319, 129, 1, 2, 5580000),
(320, 129, 13, 1, 9000000),
(321, 129, 14, 2, 20000000),
(322, 130, 13, 1, 9000000),
(323, 130, 15, 1, 12000000),
(324, 128, 29, 1, 10950000),
(325, 128, 13, 1, 9000000),
(327, 106, 20, 1, 47500000),
(328, 132, 14, 1, 10000000),
(329, 132, 36, 1, 10500000),
(330, 132, 47, 1, 38000000),
(331, 133, 63, 2, 18000000),
(332, 133, 65, 1, 8000000),
(333, 133, 66, 3, 22500000),
(334, 134, 20, 1, 47500000),
(337, 135, 76, 1, 9000000);

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
  `qty` int(11) DEFAULT 100,
  `rate` double DEFAULT 0,
  `rateQty` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `idCatalog`, `name`, `description`, `price`, `discount`, `created`, `views`, `qty`, `rate`, `rateQty`) VALUES
(1, 1, 'Điện Thoại Samsung Galaxy A01 (16GB/2GB) - Hàng Chính Hãng - Đã Kích Hoạt Bảo Hành Điện Tử', 'Samsung Galaxy A01 là một smartphone nhà Samsung mới được ra mắt vào đầu năm 2020. Chiếc điện thoại nổi bật với camera kép, màn hình Infinity-V tràn cạnh, chạy hệ điều hành Android 10 mới nhất đi kèm mức giá bán cực kỳ hấp dẫn.', 2790000, 0, 0, 268, 11, 4, 2),
(2, 1, 'Samsung Galaxy A10s', 'Samsung Galaxy A10s là bản nâng cấp của chiếc Galaxy A10 đã ra mắt trước đó với camera kép, dung lượng pin lớn hơn và đã được trang bị thêm cảm biến vân tay.', 3690000, 0, 0, 125, 0, 3, 1),
(3, 1, 'Samsung Galaxy A11', 'Samsung Galaxy A11 với thiết kế màn hình Infinity-O siêu tràn viền, bộ ba camera ấn tượng, đi kèm với mức giá phải chăng hứa hẹn sẽ tạo nên cơn sốt trên thị trường điện thoại giá rẻ.', 3690000, 0, 0, 65, 0, 5, 1),
(4, 2, 'iPhone 7 32GB', 'iPhone 7 32GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng, dàn loa stereo và cấu hình cực mạnh', 9990000, 0, 0, 28, 19, 0, 0),
(5, 2, 'iPhone 7 Plus 32GB', 'Mặc dù giữ nguyên vẻ bề ngoài so với dòng điện thoại iPhone đời trước, bù lại iPhone 7 Plus 32GB lại được trang bị nhiều nâng cấp đáng giá như camera kép đầu tiên cũng như cấu hình mạnh mẽ.', 8990000, 0, 0, 32, 22, 0, 0),
(6, 2, 'iPhone 8 Plus 64GB', 'Thừa hưởng những thiết kế đã đạt đến độ chuẩn mực, thế hệ iPhone 8 Plus thay đổi phong cách bóng bẩy hơn và bổ sung hàng loạt tính năng cao cấp cho trải nghiệm sử dụng vô cùng tuyệt vời.\r\n', 14490000, 0, 0, 33, 15, 0, 0),
(7, 3, 'Nokia C1', 'Nokia C1 là dòng điện thoại giá rẻ hướng tới đối tượng là những người dùng phổ thông, sử dụng smartphone với nhu cầu cơ bản. Chiếc điện thoại cung cấp đầy đủ các tính năng thiết yếu: Không gian hiển thị lớn, bộ đôi camera trước và sau với đèn flash, 2 SIM...', 1390000, 0, 0, 22, 3, 2, 1),
(8, 3, 'Nokia C2', 'Nokia C2 là một smartphone giá rẻ chạy Android Go, máy có màn hình rộng, hiệu năng ổn định cùng với mức giá hấp dẫn dễ tiếp cận đến người dùng có nhu cầu cơ bản, phổ thông.', 1490000, 0, 0, 9, 20, 0, 0),
(9, 3, 'Nokia 3.2 16GB', 'Nokia quay trở lại thị trường mạnh mẽ với những chiếc smartphone giá cả phải chăng nhưng vẫn đáp ứng tốt nhu cầu sử dụng hằng ngày của người dùng và Nokia 3.2 16GB là một chiếc máy như vậy.\r\n', 1990000, 0, 0, 8, 19, 5, 1),
(10, 4, 'Xiaomi Redmi Go 16GB', 'Xiaomi Redmi Go 16GB là một trong những chiếc smartphone giá rẻ nhất tới từ Xiaomi nhưng vẫn mang lại cho bạn một trải nghiệm mượt mà đến \"khó tin\".', 1790000, 0, 0, 4, 20, 0, 0),
(11, 4, 'Xiaomi Redmi 8A', 'Xiaomi Redmi 8A là một chiếc smartphone nổi bật trong phân khúc giá rẻ với nhiều ưu điểm như pin khủng, chip Snapdragon mới, camera AI và màn hình giọt nước thời thượng.', 2290000, 0, 0, 3, 20, 0, 0),
(12, 4, 'Xiaomi Redmi 8 (3GB/32GB)', 'Những sản phẩm của Xiaomi thường trang bị cấu hình mạnh mẽ trong tầm giá, camera nhiều tính năng và viên pin \"trâu\". Xiaomi Redmi 8 3GB/32GB cũng không phải là ngoại lệ và với chiếc smartphone này Xiaomi một lần nữa khẳng định vị thế của mình trong phân khúc smartphone giá rẻ.', 2690000, 10, 0, 6, 20, 5, 1),
(13, 1, 'Samsung Galaxy A71', 'Một sản phẩm thực sự đột phá, Samsung Galaxy A71 là tổng hòa của những công nghệ cao cấp nhất hiện nay với bộ 4 camera sau 64MP, màn hình 6,7 inch Full HD+ mãn nhãn và thời lượng pin trên cả tuyệt vời.', 10000000, 10, 0, 83, 18, 4, 1),
(14, 1, 'Samsung Galaxy A80', 'Samsung A80 là chiếc điện thoại dẫn đầu kỷ nguyên mới với màn hình vô cực hoàn hảo, camera trượt xoay 180 độ độc đáo, cảm biến vân tay trong màn hình và những đột phá đầy ấn tượng.', 10000000, 0, 0, 22, 15, 4, 2),
(15, 1, 'Samsung Galaxy S10e', 'Samsung Galaxy S10e là chiếc điện thoại nhỏ gọn hoàn hảo với hiệu năng mạnh mẽ nhất, camera thay đổi khẩu độ xuất sắc và màn hình Infinity-O tuyệt mỹ.', 12000000, 0, 0, 46, 23, 3, 2),
(16, 1, 'Samsung Galaxy Note 10 Lite', 'Chiếc Galaxy Note mới đã quay trở lại, Samsung Galaxy Note10 Lite đưa bạn đến trải nghiệm tuyệt vời của màn hình vô cực Infinity-O, bút S Pen danh tiếng, camera chuyên nghiệp và thời lượng pin dài bất tận trong một mức giá dễ chịu.', 13990000, 20, 0, 11, 20, 0, 0),
(17, 1, 'Samsung Galaxy A31', 'Sở hữu Samsung Galaxy A31, bạn sẽ có được trải nghiệm hình ảnh không thua kém smartphone cao cấp nào với màn hình rộng 6.4 inch rực rỡ sắc nét. Ngoài ra, khả năng chụp ảnh chuyên nghiệp nhờ cụm bốn camera trên mặt lưng cũng là điểm cộng không thể bỏ qua khi nhắc tới Galaxy A31.', 6490000, 10, 0, 20, 21, 2, 1),
(18, 1, 'Samsung Galaxy S20', 'Samsung S20 mang trên mình những tính năng cao cấp đầu bảng, với 3 camera 64MP, khả năng quay video 8K, sức mạnh phần cứng mạnh mẽ bên trong một thiết kế vô cùng di động, nhỏ gọn trong lòng bàn tay.', 21490000, 15, 0, 25, 5, 3.5, 2),
(19, 1, 'Samsung Galaxy Note 10', 'Quyền năng thế hệ mới đã xuất hiện, Samsung Galaxy Note 10 mang đến trải nghiệm tuyệt đỉnh như máy tính trong một thiết kế gọn gàng cùng bút S Pen thông minh, tất cả đều nằm trên tay bạn.', 22990000, 10, 0, 40, 24, 0, 0),
(20, 1, 'Samsung Galaxy Fold', 'Một chiếc điện thoại mà bạn chưa từng thấy trước đây, một chiếc điện thoại có màn hình gập độc đáo ngỡ như chỉ có ở tương lai, xin giới thiệu kỳ quan công nghệ mới mang tên Samsung Galaxy Fold.', 50000000, 5, 0, 74, 21, 5, 1),
(21, 2, 'Điện Thoại iPhone 11 Pro Max 64GB - Hàng Chính Hãng\r\n', 'Điện thoại iPhone 11 Pro Max là phiên bản cao cấp nhất của iPhone năm nay. Sản phẩm có nhiều cải tiến nổi bật, hiệu năng, thiết kế mới đặc biệt ở phần mặt lưng và hệ thống camera.\r\niPhone 11 Pro Max có rất nhiều cải tiến về thiết kế, điểm khác biệt lớn nhất đến từ phần mặt lưng với cụm camera được thiết kế cách điệu khá to. Nhìn từ xa, thiết kế khá giống với mặt Apple Watch. Mặt dù kiểu dáng vẫn còn nhiều tranh cãi, tuy nhiên nhiều người vấn đánh giá rất cao về tính thẩm mỹ.\r\nSở hữu màn hình kích thước 6.5 inch, iPhone 11 Pro Max mang đến nhiều không gian trải nghiệm hơn. Sản phẩm được trang bị công nghệ tấm nền OLED, độ phân giải 2688 x 1242 pixels. iPhone 11 Pro Max tiếp tục được trang bị màn hình tai thỏ giống như dòng iPhone X từng gây sốt tại thời điểm mới ra mắt. Cùng với đó, các viền cạnh xung quanh máy sẽ được làm mỏng tối đa, giúp màn hình lớn hơn và mang đến những trải nghiệm thú vị hơn. Hơn thế nữa màn hình Super Retina XDR tự hào có thể điều chỉnh độ sáng để giúp bạn có những trải nghiệm hình ảnh tốt nhất. Nó đạt tới 800 nits khi bạn ra ngoài nắng - tuyệt vời để chụp và thực hiện các lựa chọn khi đang di chuyển - và lên tới 1200 nits khi bạn xem nội dung phạm vi cực kỳ động. Nó giống như có một XDR Pro Display trên iPhone của bạn.\r\n', 34000000, 15, 0, 26, 97, 0, 0),
(22, 2, 'Điện Thoại iPhone 11 64GB - Hàng Chính Hãng\r\n', 'Điện Thoại iPhone 11 là sản phẩm kế nhiệm cho chiếc iPhone Xr từng dành được sự chú ý của giới công nghệ. Lần này, Apple vẫn đi theo những tiêu chỉ của Xr khi tạo ra iPhone 11. Đầu tiên là thiết kế trẻ trung có thể thấy được ngay trên sự đa dạng màu sắc. Hơn nhữa, những màu của iPhone 11 đều mang xu hướng phá cách, tinh nghịch. Nhưng đồng thời, màu sắc này cũng mang trong nó một sự sang trọng nhất định.\r\nMặt trước vẫn là tai thỏ thời thượng như trên những thế hệ iPhone toàn màn hình trước. Tuy vậy, ở mặt sau đã có sự chuyển biến khi mà cụm camera kép mới được đặt trong một modul hình vuông. Thiết kế 2 mặt kính, kèm viền nhôm giúp iPhone 11 có trọng lượng nhẹ, nhưng đồng thời cũng cứng cáp. Phím tắt âm được thiết kế lại thành dạng tròn và có cơ cấu gạt xuống, phù hợp hơn trong quá trình sử dụng máy.\r\nMàn hình LCD của iPhone 11 có cái tên là Liquid Retina với độ phân giải HD+. Màn hình này cho phép iPhone 11 có độ sáng tốt hơn, kèm theo đó thì với chuẩn Retina của Apple thì máy có khả năng tái hiện màu thực sự tốt. Kể cả trong những điều kiện môi trường với độ sáng gắt. Thêm vào đó, màn hình rộng cũng cho phép iPhone 11 hiển thị nhiều thông tin hơn mà lại không bị quá to để gây khó chịu khi sử dụng.\r\n', 22000000, 9, 0, 13, 100, 5, 1),
(23, 2, 'Điện Thoại iPhone XS 64GB - Hàng Nhập Khẩu Chính Hãng\r\n', 'Điện Thoại iPhone XS cuối cùng cũng chính thức giới thiệu những chiếc iPhone X thế hệ mới với tên gọi XS. XS được đọc là \"ten ess\", từ s được đặt trong một ô vuông. iPhone XS cũng giống như truyền thống của Apple khi hầu như không thay đổi thiết kế bên ngoài và chỉ nâng cấp nhiều về phần cứng bên trong. iPhone XS được trang bị kính bảo vệ mới cho màn hình được Apple nói rằng đó là loại kính bền nhất trên smartphone hiện nay. Máy đạt chuẩn chống nước bụi IP68.\r\niPhone XS với thiết kế bên ngoài giống với iPhone X, không trang bị nút Home cứng, viền kim loại sang trọng và đặc biệt là cụm camera sau được trang bị theo chiều dọc tạo điểm nhấn cho chiếc điện thoại.\r\nSở hữu màn hình OLED 5.8 inch với độ phân giải (2436 x 1125) pixels với 3.3 triệu điểm ảnh, mật độ điểm ảnh 463ppi pixel mang đến khả năng hiển thị màu sắc ấn tượng, sắc nét cho bạn trải nghiệm ở mọi góc nhìn. Màn hình lược bỏ nút Home cứng truyền thống tạo cảm giác lạ mắt và tạo nhiều không gian hơn cho người dùng.\r\nFace ID là công nghệ được phát triển dựa trên Touch ID, sử dụng một loạt cảm biến phía trước, máy ảnh TrueDepth và máy chiếu chấm hồng ngoại để tạo ra bản đồ 3D cực kỳ chi tiết dành cho khuôn mặt của bạn. Máy chiếu chấm hồng ngoại tạo ra 30.000 điểm vô hình trên khuôn mặt mỗi khi bạn nhìn vào điện thoại để đảm bảo độ chính xác khi quét. Công nghệ này sẽ giúp bạn bảo mật thông tin một cách tốt hơn.\r\n', 25000000, 28, 0, 29, 100, 5, 1),
(26, 2, 'Apple iPhone X 64Gb CPO (Certified Pre-Owned) - Hàng Nhập Khẩu\r\n', 'iPhone Xs Max 64GB có màn hình vượt trội so với mọi thế hệ iPhone trước đây khi lớn tới 6,5 inch, được làm từ tấm nền OLED, hỗ trợ hiển thị HDR. HDR mang đến màu sắc chính xác, màu đen có chiều sâu, độ sáng và độ tương phản tuyệt vời. Bạn sẽ được tận hưởng một màn hình cực lớn, độ phân giải siêu cao 2688 x 1242 pixels cho trải nghiệm xem đáng kinh ngạc.\r\niPhone Xs Max 64GB được hoàn thiện từ những vật liệu đặc biệt, đó là viền thép không gỉ sáng bóng và mặt kính bền nhất trong thế giới smartphone. Kỹ thuật gia công chính xác hoàn hảo của Apple mang đến chiếc điện thoại cứng cáp, thời trang, vừa vặn trong lòng bàn tay bạn. Ba màu sắc thời thượng Xám không gian, Bạc và Vàng cho những lựa chọn cá tính. Đặc biệt, hai phiên bản màu Vàng và Xám được sơn bằng quá trình xử lý màu PVD, tạo hiệu ứng ánh sáng qua lớp kính rất đẹp mắt.\r\niPhone Xs Max 64GB mang trên mình con chip A12 Bionic có 6 nhân, trong đó 2 nhân hiệu năng cao nhanh hơn 15% và 4 nhân tiết kiệm điện tiết kiệm hơn 50% so với thế hệ trước A11 Bionic của iPhone X. Đồng thời GPU đồ họa của A12 Bionic mạnh hơn tới 50%, cho phép bạn chơi mọi tựa game ở cấu hình cao nhất một cách nhẹ nhàng và mượt mà.\r\n', 20500000, 40, 0, 8, 101, 0, 0),
(27, 2, 'Điện Thoại iPhone 8 Plus - Hàng Chính Hãng VN/A\r\n', 'Điện thoại iPhone 8 Plus 64GB nổi bật với thiết kế mặt lưng bằng kính trơn bóng kết hợp cạnh viền mang lại vẻ ngoài sang trọng cho người sở hữu. Mặt trước điện thoại vẫn giữ nguyên tỉ lệ màn hình, viền màn hình khá dày, nút Home cảm ứng lực tích hợp cảm biến vân tay như iPhone 7.\r\niPhone 8 Plus sở hữu kích thước màn hình lớn 5.5 inch với độ phân giải Full HD (1080 x 1920 Pixels), mật độ điểm ảnh 401 ppi pixel và được Apple nâng cấp lên màn hình Retina HD True Tone, mang đến khả năng hiển thị màu sắc ấn tượng, sắc nét cho bạn trải nghiệm ở mọi góc nhìn.\r\niPhone 8 Plus sử dụng chip A11 Bionic có sức mạnh cao cấp nhất tính đến thời điểm ra mắt. Theo Apple, con chip Apple A11 Bionic này gồm có 6 nhân với 4,3 tỷ bóng bán dẫn, tốc độ xử lý GPU cao hơn 30% so với thế hệ chip A10 và điện năng tiêu thụ giảm một nửa. Về hiệu năng, A11 mạnh hơn 70% ở 4 nhân tiết kiệm điện và 25% ở 2 nhân hiệu năng cao so với A10.\r\n', 19000000, 21, 0, 22, 97, 0, 0),
(28, 2, 'Điện Thoại iPhone 6s 32GB - Nhập Khẩu Chính Hãng\r\n', 'iPhone 6s 32GB được trang bị bộ đôi camera 12.0MP và 5.0MP để bạn thỏa thích chụp ảnh. Camera chính 12.0MP tích hợp đèn Retina Flash kép 2 tones với công nghệ điểm ảnh tiên tiến True Tones giúp bạn chụp ảnh chi tiết hơn. Camera trước 5.0 MP tích hợp đèn Retina Falsh giúp màn hình sáng lên gấp 3 lần giúp bạn chụp selfie tốt hơn. Đồng thơi, máy cũng sẽ cho phép bạn quay chuẩn 4K, có thể hiệu chỉnh trên iMovie.\r\nApple trang bị cho iPhone 6s 32GB bộ vi xử lý A9 chip 64bit mạnh mẽ ngang với một thiết bị PC. Với  bộ vi xử lý này cho khả năng xử lý cao hơn đến 90%. Bạn hoàn toàn có thể chơi những game 3D đồ họa phức tạp, những hiệu ứng bóng đổ, ánh sáng, hành động đều mượt mà mà không hề có độ trễ. Ngoài ra, máy sử dụng RAM 2 GB, bộ nhớ 32 GB bạn có thể thoải mái lưu trữ và hoạt động mà không lo đầy bộ nhớ.\r\niPhone 6s sở hữu cảm biến quét vân tay Touch ID thế hệ thứ 2 nhanh hơn gấp 2 lần so với thế hệ đầu tiên và bảo mật hơn, chắc chắn sẽ giữ an toàn cho dữ liệu và khiến bạn hài lòng khi sử dụng.\r\n', 7000000, 14, 0, 43, 101, 4, 1),
(29, 2, 'Điện Thoại iPhone 7 Plus 128GB - Hàng Nhập Khẩu Chính Hãng\r\n', 'iPhone 7 Plus 128GB với kích thước  158.2 x 77.9 x 7.3 mm mỏng nhẹ và thiết kế tương tự như bộ đôi iPhone 6s/6s Plus, tuy nhiên phần dải nhựa bắt sóng không cắt ngang mặt lưng như phiên bản cũ mà được chuyển sang phần cạnh trên của sản phẩm. Phím Home vật lý trên điện thoại cũng được thay thế bằng phím cảm ứng nhờ vào sự kết hợp Taptic Engine mới và liên kết với 3D Touch tiện lợi và đẹp mắt.\r\niPhone 7 Plus sở hữu màn hình Retina HD 5.5 inches có độ phân giải  1080 x 1920 pixels , mang đến khả năng cung cấp không gian màu sắc tương tự như các thiết bị kỹ thuật số, giúp màn hình hiển thị rực rỡ và sống động và mang lại cho bạn trải nghiệm hình ảnh ấn tượng.\r\nNgoài ra, màn hình được tích hợp tích hợp công nghệ 3D Touch, giúp máy vận hành nhanh chóng hơn khi bạn tương tác với màn hình để sử dụng các ứng dụng tin nhắn, mail, lịch,\r\n', 15000000, 27, 0, 22, 96, 5, 1),
(30, 2, 'Điện Thoại iPhone SE 128G ( 2020) - Hàng Nhập Khẩu\r\n', 'iPhone SE 2020 có ngôn ngữ thiết kế giống iPhone 8. Điều khác biệt chính là logo Apple trên mặt lưng này đã được dời sang chính giữa thay vì đặt lệch ở nửa trên như trên đàn anh.\r\niPhone SE 2020 được trang bị màn hình Retina LCD 4.7 inch với mật độ điểm ảnh 326 ppi. Tỉ lệ màn hình 16:9. Màn hình hỗ trợ đầy đủ các công nghệ True Tone, Haptic Touch, và HDR10…\r\nMàn hình máy không có notch tai thỏ như iPhone X hay iPhone 11. Viền cạnh trên và dưới dày, cạnh dưới của máy chứa nút Home đi kèm Touch ID để quét vân tay.\r\n', 15000000, 17, 0, 21, 96, 0, 0),
(31, 4, 'Điện Thoại Xiaomi Redmi 8A (2GB/32GB) - Hàng Chính Hãng\r\n', 'Điện Thoại Xiaomi Redmi 8A (2GB/32GB) - Hàng Chính Hãng được trang bị viên pin có dung lượng cực lớn, lên tới 5000 mAh, cho bạn thỏa sức trải nghiệm cả ngày, chẳng cần bận tâm quá nhiều đến thời lượng pin.\r\nCòn nếu lỡ bạn chủ quan dẫn đến hết pin, thì yên tâm, sẽ chỉ mất ít giờ để sạc đầy Redmi 8A, nhờ việc nó hỗ trợ sạc nhanh 18W thông qua USB Type-C đời mới.\r\nRedmi 8A sở hữu RAM 2GB, vi xử lý Qualcomm Snapdragon 439 tám nhân 64-bit chạy trên giao diện MIUI 10 nổi tiếng của Xiaomi (trên nền tảng Android 9 Pie).\r\n', 3500000, 43, 0, 0, 100, 0, 0),
(32, 4, 'Điện Thoại Xiaomi Redmi Note 8 - Hàng Chính Hãng\r\n', '\"Điện Thoại Xiaomi Redmi Note 8 - Hàng Chính Hãng Không chỉ có 2 hay 3 camera mà với chiếc smartphone mới Xiaomi Redmi Note 8 thì người dùng sẽ có tới 4 camera để thỏa mãn nhu cầu chụp ảnh của mình. Xiaomi Redmi Note 8 sở hữu cho mình camera chính với độ phân giải khủng \"\"khủng\"\" với \"\"số chấm\"\" lên tới 48 MP.\r\n Chiếc máy này sử dụng công nghệ pixel-binning để kết hợp dữ liệu ánh sáng từ 4 pixels liền kề nhằm tạo ra hình ảnh có độ chi tiết cao.\r\nCấu hình vốn là thế mạnh của các thiết bị nên sẽ không quá ngạc nhiên khi Xiaomi Redmi Note 8 được cung cấp thông số kỹ thuật mạnh mẽ.\r\n\r\n\"\r\n', 4000000, 13, 0, 102, 100, 0, 0),
(33, 4, 'ĐIỆN THOẠI XIAOMI REDMI NOTE 9S - HÀNG CHÍNH HÃNG\r\n', 'Bộ xử lý tám nhân hiệu suất cao, xung nhịp lên đến 2.3 GHz. Công cụ AI thế hệ thứ năm với khả năng tính toán vượt trội.\r\n36%: hiệu năng CPU mạnh hơn so với Snapdragon 712\r\n18%: hiệu năng GPU mạnh hơn so với Snapdragon 712\r\n', 5500000, 13, 0, 4, 99, 5, 1),
(34, 4, 'Điện thoại Xiaomi Redmi 8 64GB Ram 4GB - Hàng chính hãng\r\n	', 'Bên cạnh thiết kế, Xiaomi đã sử dụng tấm nền IPS LCD cho màn hình Xiaomi Redmi 8 để mang đến cho smartphone không gian hiển thị sống động với màu sắc chính xác. Độ phân giải HD+ (720 x 1520 pixels) cho hình ảnh sắc nét, chân thực. Bạn sẽ có những giây phút tận hưởng những bộ phim hay, chơi game, giải trí hay làm việc tuyệt vời với Xiaomi Redmi 8. Ngoài ra, màn hình Redmi 8 còn có khả năng lọc ánh sáng xanh giúp bảo vệ đôi mắt người dùng khi sử dụng smartphone trong thời gian dài.\r\nMặc dù là một smartphone giá rẻ nhưng Xiaomi Redmi 8 vẫn được trang bị hệ thống camera kép với camera chính cảm biến 12MP và camera phụ 2MP giúp xóa phông chuyên nghiệp. Camera chính còn có khẩu độ f/1.8 hỗ trợ lấy nét theo pha Dual Pixel nên sẽ giúp mang đến những tấm ảnh chụp với chất lượng tuyệt vời ngay cả trong điều kiện thiếu sáng, giúp bạn chụp ảnh ban đêm xinh đẹp, rõ nét. Hỗ trợ quay video với chất lượng Full HD 1080p nên bạn có thể ghi lại mọi khoảnh khắc đáng nhớ, sẵn sàng chia sẻ với mọi người.\r\nĐiểm cộng tuyệt vời nhất của Xiaomi Redmi 8 chính là viên pin với dung lượng cực “khủng” 5000mAh. Viên pin này của smartphone sẽ cung cấp 17 giờ phát video liên tục, 28 giờ đàm thoại liên tục hay nghe nhạc liên tục tới 180 giờ - những con số vô cùng ấn tượng. Đối với nhu cầu sử dụng thông thường thì chỉ cần một lần sạc đầy, bạn đã có thể sử dụng smartphone đến 3 ngày.\r\n', 3600000, 22, 0, 8, 83, 3.5, 2),
(35, 29, 'Laptop Lenovo Ideapad 330-14IGM 81D00060VN (Celeron N4100/ 4GB DDR4 2400MHz/ SSD 256GB/ 14HD/ Win10) - Hàng Chính Hãng', 'Thiết kế gọn nhẹ di động\r\n\r\nKhi bạn di chuyển cho công việc, Laptop Lenovo Ideapad 330-14IGM 81D00060VN rất lý tưởng để bạn có thể mang theo để học tập, làm việc cũng như giải trí với trọng lượng gọn nhẹ cho một chiếc laptop kích thước 14-inch. Thiết kế viền màn hình siêu mỏng cũng giúp giảm thiểu đáng kể trọng lượng và tăng diện tích hiển thị hình ảnh trên khung máy đem lại một trải nghiệm tốt hơn. Và với sự lựa chọn màu sắc trẻ trung kết thúc trong một thiết kế bóng bẩy, chiếc máy tính xách tay này chắc chắn sẽ giúp bạn gây ấn tượng.\r\n\r\nHiệu năng xử lý mức tạm được\r\n\r\nLaptop Lenovo Ideapad 330-14IGM 81D00060VN (Celeron N4100/ 4GB DDR4 2400Mhz/ 256GB SSD/ 14HD/ Win10) với bộ vi xử lý Intel Celeron N4100 1.10 GHz up to 240 GHz, 4MB, RAM 4GB giúp xử lý tốt các ứng dụng văn phòng, bên cạnh đó máy cũng đáp ứng nhu cầu học tập giải trí cơ bản của người dùng.\r\n\r\nThời lượng pin lớn, sử dụng thoải mái Lenovo Ideapad 330-14IGM có thời lượng pin lên đến 8 tiếng, con số rất ấn tượng cho một chiếc laptop thiết kế theo phong cách mỏng nhẹ. Chiếc máy đủ để bạn sử dụng trọn một ngày làm việc văn phòng mà không cần phải sạc điện. Tha hồ học tập, nghiên cứu hay thậm chí là giải trí với những bộ phim dài tập bất cứ đâu mà không phải lo hết pin.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh,\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 7000000, 15, 0, 0, 100, 0, 0),
(36, 29, 'Laptop Dell Inspiron 3583 . Intel Core i3 8145U- TOUCH (15.6 inch) - Hàng Nhập Khẩu', 'Hệ điều hành : Windows 10 Home SL\r\nBộ vi xử lý : Intel Core i5-8265U (1.60GHz Up to 3.90 GHz, 4Cores, 8Threads, 6MB Cache, FSB 4GT/s)\r\nMàn hình : 15.6 inch HD (1366 x 768) Anti-Glare LED, Touch Screen\r\nĐồ họa ; Intel UHD Graphics 620\r\nBộ nhớ Ram : 1 x 8GB DDR4 2666MHz,\r\nỔ đĩa cứng ; 128GB Solid State Drive - Siêu NhanhDell Inspiron 3583 sẽ là 1 sự lựa chọn tốt cho bạn với 1 laptop 15 inchs ở tầm giá này. Nó được thiết kế đơn giản và có giá không quá cao và nhiều tính năng rất đa dạng cho tầm giá này. Nó rất phù hợp cho những người làm việc văn phòng và có thể sử dụng các phần mềm đồ họa ở mức cơ bản.     NGOẠI HÌNH, KÍCH THƯỚC VÀ TRỌNG LƯỢNG  Chiếc laptop Inspiron 3583 được thiết kế với ngoại hình rất đơn sơ có 4 màu(đen, bạc, trắng, xanh). Tất cả các bộ phận của chiếc Laptop này được làm hoàn toàn từ nhựa rất đảm bảo cho việc cầm nấm nó. Inspiron có kích thước: Chiều cao: 22,7 mm (0,89 “), Chiều rộng: 380,0 mm (14,96),Độ sâu: 258,0 mm (10,16) và trọng lượng của nó chỉ 2,20 kg (4,83 lbs). Với chiếc Laptop 15inchs thì dell Inspiron 15 nhỏ gọn và nhẹ hơn rất nhiều so với HP Notebook 15 và Acer Aspire E 15. Vì thế Dell Inspiron 15 sẽ dễ dàng cho bạn xách đi bất cứ đâu.  ', 10500000, 0, 0, 0, 98, 4, 1),
(37, 29, 'Laptop Asus VivoBook S14 S433EA-EB100T (Core i5-1135G7/ 8GB DDR4 3200MHz/ 512GB SSD M.2 PCIE G3X2/ 14 FHD IPS/ Win10) - Hàng Chính Hãng', 'ASUS VivoBook S433EA-EB100T, sự lựa chọn hàng đầu của giới trẻ, giúp mang đến một vẻ ngoài siêu nổi bật và tràn đầy cá tính. ASUS VivoBook S14 mỏng nhẹ có điểm nhấn thiết kế là viền cắt kim cương và có bốn màu sắc khác biệt, cho phép bạn thoải mái lựa chọn để thể hiện cá tính của mình. Cá tính của bạn còn được thể hiện rõ nét hơn khi mở máy vì phím Enter vàng nổi bật sẽ xuất hiện tạo điểm nhấn so với bàn phím truyền thống. VivoBook S14 sẽ giúp thể hiện cá tính của bạn, cả bên trong và bên ngoài.', 17800000, 0, 0, 0, 100, 0, 0),
(38, 29, 'Laptop MSI Modern 14 A10M-1071VN (Core i7-10510U/ 8GB DDR4 2666MHz/ 256GB PCIe NVMe/ 14 FHD IPS/ Win10) - Hàng Chính Hãng', 'CPU: Intel Core i7-10510U 1.8GHz up to 4.9GHz 8MB\r\nRAM: 8GB DDR4 2666MHz\r\nỔ cứng: 256GB PCIe NVMe M.2 SSD\r\nCard đồ họa: Intel UHD Graphics\r\nMàn hình: 14\" FHD (1920 x 1080) IPS-Level, 60Hz, 72% NTSC, Thin Bezel, 100% sRGB\r\nHệ điều hành: Windows 10 Home\r\nPin: 4 Cell 50WHr', 20000000, 0, 0, 0, 100, 0, 0),
(39, 30, 'MXK32 / MXK62 - Macbook Pro 13 inch 2020 - i5 1.4/8GB/256Gb - 2 thunderbolt - 99%', 'Bên cạnh đó, phím ESC đã được tách riêng ra khỏi dải Touchbar so với những thế hệ tiền nhiệm. Rất nhiều người dùng đã phản ánh rằng, phím ESC trên dải Touchbar hoạt động không ổn định. Nay trên chiếc Macbook Pro 13 inch 2020, Apple đã lắng nghe người dùng hơn và quyết định chuyển vị trí ESC ra bên cạnh dải Touch Bar. Một cải tiến nho nhỏ nữa trên bàn phím của Macbook Pro 13 inch 2020 năm nay đến từ cụm phím điều hướng. Trên những phiên bản tiền nhiệm, cụm phím điều hướng được xếp quá sát nhau, khiến người dùng cảm thấy khó khăn khi muốn sử dụng. Nay trên phiên bản Macbook Pro 13 inch 2020, cụm phím điều hướng này đã được thiết kế lại với hình dáng chữ T đảo ngược, đem lại trải nghiệm nhập liệu tốt hơn đáng kể cho người dùng.', 30500000, 0, 0, 0, 100, 0, 0),
(40, 30, 'MR972 - Macbook Pro 15 inch Touch Bar 2018 - i7 2.6/16GB/512GB - 99%\r\n', 'Hành trình phím bấm trên MacBook Pro là 0.7mm, so với Dell XPS 15 là 0.8mm, Surface Book 2 (1.2mm), Dell Precision 3530 (2mm) và HP Spectre x360 (1.4mm)\r\nLực ấn phím trên MacBook Pro là 60 gram, ít hơn các đối thủ như Dell XPS 15 (70 gram), Surface Book 2 (65 gram) và Precision 3530 (69 gram)', 39000000, 0, 0, 0, 100, 0, 0),
(41, 30, 'MPXU2 - MacBook Pro 13 inch 2017 - i5 2.3/8GB/256GB - 99%', 'Giữ nguyên thiết kế  của Macbook Pro 2016 là những từ để nói đến thiết kế Macbook Pro 2017. Kích thước và ngoại hình của MacBook Pro 2016 và 2017 đều tương tự nhau.\r\nCó thể thấy Apple chưa bao giờ làm người dùng thất vọng về các sản phẩm của mình. Chất liệu vỏ nhôm truyền thống sang trọng vì vậy chúng ta có thể nhận ra đó là Macbook từ ánh nhìn đầu tiên. Macbook Pro 2017 13inch có độ dày 14,9 mm và nặng 1,37 kg.', 24000000, 0, 0, 0, 100, 0, 0),
(42, 30, 'MLW82 - MacBook Pro 15 inch Touch Bar 2016 - i7 2.7/16GB/512GB - 99%', 'Đây là bản nâng cấp nhiều nhất của nhà Táo kể từ năm 2008, năm đầu tiên Apple mang thiết kế Unibody lên dòng MacBook Pro. Chúng ta có một chiếc máy tính xách tay mỏng hơn, nhẹ hơn đáng kể và đây là một trong những thay đổi ảnh hưởng rất nhiều đến người dùng. Tiếp theo là bàn phím với hệ cơ mới làm cho nó mỏng hơn nên người dùng sẽ bỏ ra ít lực để nhấn hơn và nhấn nhanh hơn.', 31500000, 0, 0, 0, 100, 0, 0),
(43, 31, 'Laptop ASUS TUF Gaming FX505DT-HN488T', 'Năm 2020 chứng kiến sự bùng nổ các mẫu laptop gaming tầm trung có cấu hình mạnh mẽ và hiệu năng tốt. Mẫu laptop ASUS Gaming FX505DT là câu trả lời của ASUS để đáp lại những mong muốn của người tiêu dùng về một chiếc laptop Asus gaming tầm trung với hiệu năng trên giá thành vô cùng tuyệt vời. Hãy cùng điểm qua những điểm đặc biệt trên mẫu laptop gaming tầm trung đang được nhiều người dùng săn đón này.', 17000000, 0, 0, 0, 100, 0, 0),
(44, 31, 'Laptop ASUS Gaming ROG Zephyrus G14 GA401I', 'Laptop ASUS Gaming ROG Zephyrus GA401I không giống với thiết kế của những loại laptop gaming khác với vẻ ngoài hầm hố và đường net cứng cáp, mạnh mẽ, và màu sắc chủ đạo thường là đen. Chiếc laptop này thì lại mang sắc trắng rất trang nhã và thanh lịch, giúp bạn có thể sử dụng với nhiều mục đích khác nhau mà không cần lo lắng vẻ ngoài chiếc laptop của mình không phù hợp với hoàn cảnh sử dụng.', 25000000, 0, 0, 0, 100, 0, 0),
(45, 31, 'Laptop ASUS Gaming ROG Strix G531GT-HN554T', 'Chiếc laptop ASUS ROG Strix G G531GT mang hình dáng hầm hố, mạnh mẽ và ấn tượng ở mọi góc cạnh. Toàn thân chiếc máy được phủ lớp vỏ nguyên khối màu đen cứng cáp và bền bỉ. Mặt lưng máy khắc rõ nét logo Republic of Gamers trứ danh, khẳng định thương hiệu laptop gaming thực thụ. Đặc biệt, hệ thống đèn Aura Sync trải quanh viền máy sẽ góp phần tăng thêm độ ấn tượng của chiếc laptop đối với game thủ.', 23000000, 0, 0, 0, 100, 0, 0),
(46, 31, 'Laptop ASUS Gaming ROG Zephyrus GA502IU-AL007T', 'Asus là một trong những thương hiệu đang dẫn đầu phân khúc laptop gaming đang bán trên thị trường. Các dòng laptop gaming của Asus có hiệu năng cực cao tạo sự vượt trội và đột phá khi chơi game. Một trong số những sản phẩm nổi bật của hãng đó là laptop ASUS Gaming ROG Zephyrus G15 GA502IU-AL007T là sản phẩm mang đến hiệu năng cực kỳ mượt mà và mạnh mẽ dành cho bạn.', 27500000, 0, 0, 0, 100, 0, 0),
(47, 32, 'Laptop ASUS ZenBook Duo UX481FL-BM049T (i7-10510U) - 14inch, bảo mật IR camera đăng nhập bằng khuôn mặt với hệ thống camera 3D hồng ngoại', 'br {mso-data-placement: same-cell;}• ScreenPad Plus màn hình thứ hai kích thước 12.6” hỗ trợ cảm ứng kết hợp với bàn phím có đèn Led\r\n• Màn hình chính kích thước 14 inch FHD viền với 4 viền siêu mỏng NanoEdge\r\n• Vi xử lý: Cấu hình mạnh mẽ với vi xử lí Intel Core i7-10510U thế hệ thứ 10\r\n• Đồ họa: NVIDIA GeForce MX250 hiệu năng đồ họa mượt mà\r\n• Ổ lưu trữ : 1TB SSD PCI-Express 3.0 x2 khả năng lưu trữ mạnh mẽ và tốc độ\r\n• Ram: dung lượng 16GB DDR3\r\n• Kết nối: WI-FI 6 tốc độ cao, Bluetooth 5.0 cho trải nghiệm không dây tốt\r\n• Bảo mật: IR camera đăng nhập bằng khuôn mặt với hệ thống camera 3D hồng ngoại', 38000000, 0, 0, 0, 99, 1, 1),
(48, 32, 'Laptop HP Pavilion x360 14-dw0061TU 19D52PA (Gold) i3-1005G1| 4GB| 512GB| OB| 14\"FHD Touch| Win 10 - Hàng chính hãng new 100%', '1x USB 3.1 Gen 1 Type-C (USB Type-C port with HP Sleep and Charge)\r\n1x HDMI\r\nFinger PrintỔ quangNoneAudioAudio by B&O, Dual Speakers, HP Audio Boost 1.0Đọc thẻ nhớ1 multi-format SD media card readerChuẩn LANNoneChuẩn WIFI802.11 axBluetoothv5.0WebcamHP Wide Vision HD CameraHệ điều hànhWindows 10 Home + Office Home & StudentPin3 Cell 43WHrTrọng lượng1.61 kgMàu sắcVàngKích thước32.4 x 22.1 x 1.87 cm', 14000000, 0, 0, 0, 100, 0, 0),
(49, 32, 'Laptop 2 in 1 Asus TF100 màn cảm ứng tháo rời được', 'Độ phân giải: Full HD\r\n\r\nKích thước: 10\" (16:9)\r\n\r\nHệ điều hành: Win 8/10\r\n\r\nRAM: 2GB\r\n\r\nCPU: Intel\r\n\r\nBộ nhớ trong: 64GB\r\n\r\nKết nối mạng: Wifi', 2500000, 0, 0, 0, 100, 0, 0),
(50, 32, 'Laptop 2 trong 1 kiêm máy tính bảng Dell Venue 11pro 7140, Core M-5Y71, 4gb Ram, 128gb SSD, 11inch Full HD', 'Thiết kế tinh tế, gon nhẹ\r\nTính năng vượt trội linh hoạt di chuyển\r\ncấu hình mạnh mẽ với cpu thế hệ 5\r\nCPU core iM-5Y71 1.20GHz turbo lên tới 2.90GHz 4M Cache 2 nhân 4 luồng\r\nBộ nhớ ram 4gb DDR3 buss 1600GHz\r\nỔ cứng SSD 128GB sata 3 6gb/s\r\nMàn hình cảm ứng đa điểm Full HD kích thước 11 inch\r\nkết nối không dây WIFI 802.11a/b/g/n, Bluetooth 4.0, NFC\r\nCamera kép trước phân giải 2.0MP và sau độ phân giải lên dến 8.0MP\r\nPin dung lượng cao cho thời gian hoạt động dài\r\nBàn phím tích hợp pin cho thời lượng hoạt động lên tới hơn 6 giờ( lựa chọn gói cấu hình khi mua)\r\nBàn phím dạng module dễ dàng tháo rời trở thành máy tính hảng\r\nTích hợp khe cắm thẻ nhớ micro SD\r\nbộ sạc tiêu chuẩn kèm theo', 5000000, 0, 0, 0, 100, 0, 0),
(51, 5, 'LG V50 ThinQ 5G (6GB|128GB) Hàn Quốc (Likenew)', 'LG V50 ThinQ là điện thoại cao cấp vừa được ra mắt trong năm 2019. Đây là điện thoại 5G đầu tiên của LG, sở hữu nhiều công nghệ đột phá, nổi bật nhất hiện nay. Với nhiều tính năng ưu việt, LG V50 ThinQ 5G đã nhanh chóng có được lượng fan nhất định.', 7000000, 0, 0, 0, 100, 0, 0),
(52, 5, 'LG G8X ThinQ (6GB|128GB) (Like New)', 'LG G8x ThinQ là một phiên bản lớn hơn của chiếc LG G8 thông thường. Mặc dù vẫn nằm trong gia đình G8, nhưng máy lại mang đến khá nhiều điểm khác biệt đáng kể về ngoại hình. Tuy vậy chất flagship vẫn được giữ lại với vật liệu nhôm nguyên khối làm khung máy và 2 mặt kính cường lưc trước và sau.\r\n\r\nỞ mặt lưng chúng ta vẫn thấy được một số nét rất riêng của dòng G8 đó là cụm camera kép đặt ngang, tiếp tới là đèn flash kép 2 tông màu. Phía dưới sẽ in tên máy là LG G8x ThinQ. LG sử dụng kính bóng cho máy tạo nên một vẻ sang trọng, hiện đại, tuy nhiên kính bóng vẫn sẽ gặp phải 1 điểm yếu là khá dễ bám bụi bẩn, vân tay.', 6000000, 0, 0, 0, 100, 0, 0),
(53, 5, 'LG V40 ThinQ 128GB Hàn Quốc (Like New)', 'LG tiếp tục ra mắt LG V40 ThinQ với thiết kế đẹp, phần cứng ấn tượng. Đồng thời đây cũng là chiếc smartphone 5 camera đầu tiên trên thế giới và hứa hẹn sẽ cứu vãn \'triều đại LG\'.', 5000000, 0, 0, 0, 100, 0, 0),
(54, 5, 'LG V40 ThinQ 64GB Mỹ (Like new)', 'Chiến binh mới của nhà LG có thiết kế khá ấn tượng, mới mẻ, quyến rũ và hiện đại. Phần khung của máy được làm bằng kim loại chắc chắn kết hợp cùng 2 mặt kính cường lực cao cấp. Không chỉ vậy, LG V40 ThinQ cũ còn đạt những tiêu chuẩn chất lượng về độ bền quân đội MIL-STD-810G và khả năng kháng nước, kháng bụi IP68.', 5000000, 0, 0, 0, 100, 0, 0),
(55, 6, 'Điện thoại OPPO A92', 'OPPO A92 được trang bị cho mình con chip Snapdragon 665 mạnh mẽ cho hiệu năng cao, điện thoại chơi game tốt các tựa game mobile hiện hành cũng như xử lý đa nhiệm mượt mà.', 6500000, 0, 0, 0, 100, 0, 0),
(56, 6, 'Điện thoại OPPO Reno4', 'Đầu tiên, OPPO Reno 4 có sự nâng cấp toàn diện so với người anh em Reno3, khi sử dụng chất liệu nhôm nguyên khối và được bọc kính cường lực Gorilla Glass 3 ở phần mặt trước và vỏ nhựa giả kính mặt lưng góp phần tăng độ cứng cáp lẫn nét sang trọng cho máy. \r\n\r\nTiếp đến là màn hình hyperbol kích thước 6.4 inch có phần viền benzel được làm siêu mỏng, độ phân giải Full HD+ (1080 x 2400 Pixels) trên nền màu AMOLED mang đến chất lượng hình ảnh rõ nét, sống động, trải nghiệm giải trí chơi game trên thiết bị này sẽ cực lỳ thích.', 8500000, 0, 0, 0, 100, 0, 0),
(57, 6, 'Điện thoại OPPO Find X2', 'Find X2 sở hữu màn hình AMOLED Ultra Vision cao cấp với kích thước lên đến 6.78 inch cùng độ phân giải 2K+ cực nét được bảo vệ bằng kính cường lực Corning Gorilla Glass 6 cao cấp.', 20000000, 0, 0, 0, 100, 0, 0),
(58, 6, 'Điện thoại OPPO Reno3 Pro', 'Ưu điểm của kiểu thiết kế này chính là camera trước của máy sẽ hoạt động ổn định và bền hơn so với cơ chế cũ. Không gian hiển thị hầu như không bị ảnh hưởng, vẫn rất thoải mái khi chơi game hay làm việc trên chiếc smartphone này.', 9000000, 0, 0, 0, 100, 0, 0),
(59, 7, 'Vivo Y19 6GB\r\n', 'VIVO Y19 sở hữu thiết kế được làm từ chất liệu Polime cao cấp nguyên khối cứng cáp và bền bỉ. Máy có kích thước nhỏ gọn là 162.15*76.47*8.89mm nặng chỉ 193.0g, với kích thước nhỏ gọn như vậy người dùng có thể dễ dàng mang theo sử dụng ở bất cứ nơi nào. Các chi tiết và đường nét, cổng sạc phím bấm được nhà sản xuất hoàn thiện một cách chính xác và tỉ mỉ cho cảm giác cầm nắm rất thoải mái. Ngoài ra nhà sản xuất cho ra mắt chiếc smartphone này với 2 phiên bản màu sắc là đen và trắng cho người dùng nhiều sự lựa chọn.', 4500000, 0, 0, 0, 100, 0, 0),
(60, 7, 'Điện thoại Vivo X50 Pro\r\n', 'Vivo X50 Pro mang trên mình cụm 4 camera với camera chính 48 MP kết hợp với ống kính góc cực rộng 8 MP, camera độ sâu 13 MP và camera tele 8 MP được thiết kế thành cụm hình chữ nhật to bản nằm ở góc trái mặt lưng của máy.', 20000000, 0, 0, 0, 100, 0, 0),
(61, 7, 'Điện thoại Vivo X50\r\n', 'Thiết kế bắt xu thế với màn hình Infinity-O, nâng cao khả năng hiển thị với độ phân giải Full HD+, cho không gian sử dụng thoải mái, trải nghiệm hình ảnh sống động với các bộ phim, video ca nhạc, dễ dàng đọc sách báo hằng ngày.', 12000000, 0, 0, 0, 100, 0, 0),
(62, 7, 'Điện thoại Vivo V19', 'Vivo V19 sở hữu một thiết kế hiện đại bắt kịp xu hướng smartphone mới hiện nay. Mặt trước là một màn hình tràn viền chuẩn mực với bảo mật vân tay đặt dưới màn hình.', 8500000, 0, 0, 0, 100, 0, 0),
(63, 8, 'Điện thoại Realme 7 Pro', 'Realme 7 Pro sở hữu cụm 4 camera được thiết kế nằm dọc ở sau mặt lưng với cảm biến chính 64 MP được tích hợp các tính năng đa dụng như camera xóa phông, chụp toàn cảnh (Panorama), HDR,... mang đến độ sắc nét, chất lượng cho mỗi bức ảnh.', 9000000, 0, 0, 0, 98, 4, 1),
(64, 8, 'Điện thoại Realme 6 Pro', 'Ấn tượng đầu tiên của Realme 6 Pro chính là hệ thống 6 camera, gồm cụm 4 camera sau và 2 camera trước đục lỗ hình viên thuốc, tương tự như trên các mẫu flagship cao cấp hiện nay.', 8000000, 0, 0, 0, 100, 0, 0),
(65, 8, 'Điện thoại Realme 7', 'Mặt sau của máy lấy cảm hứng từ không gian gương trong tự nhiên, Realme 7 có thiết kế gương rực rỡ. Sự chia cắt táo bạo mang đến một tác động thị giác mới với hiệu ứng ánh sáng tuyệt đẹp, vẻ đẹp tự nhiên cân bằng được bộc lộ.\r\n\r\n', 8000000, 0, 0, 0, 98, 2, 1),
(66, 8, 'Điện thoại Realme 7i\r\n', 'Realme 7i cho cảm giác cầm khá thoải mái, nhẹ tênh với 4 cạnh viền bo cong, mặt lưng làm từ nhựa cho trọng lượng máy nhẹ hơn, trong khi mặt trước được bảo vệ bằng kính cường lực Gorilla Glass 3 ngăn ngừa tối đa các tổn hại ở màn hình khi làm rơi rớt, va chạm.\r\n\r\n', 7500000, 0, 0, 0, 97, 3, 1),
(67, 9, 'Điện thoại Huawei Nova 7i (Nền tảng Huawei Mobile Service)', 'Điện thoại tầm trung Huawei Nova 7i được trang bị màn hình kích thước 6.4 inch độ phân giải Full HD+ với điểm nhấn chính là màn hình khoét lỗ nằm bên trái để đặt camera trước.\r\n\r\n', 6000000, 0, 0, 0, 98, 5, 1),
(68, 9, 'Điện thoại Huawei Y6p (Nền tảng Huawei Mobile Service)\r\n', 'Mặt lưng của Huawei Y6p được thiết kế ấn tượng bằng chất liệu nhựa giả kính cao cấp với họa tiết các đường ánh sáng cong mượt mà thay đổi dưới nhiều góc độ khác nhau.\r\n\r\n', 3500000, 0, 0, 0, 98, 5, 1),
(69, 9, 'Huawei P30 Pro', 'P30 Pro sở hữu bộ khung vỏ kim loại có độ hoàn thiện tốt, được tô điểm bằng hai mặt kính trước - sau làm nên diện mạo bóng bẩy nịnh mắt. Thay vì sử dụng “tai thỏ” như năm ngoái, Huawei đem tới cho P30 Pro thiết kế màn hình giọt nước toát nên vẻ trẻ trung và thời trang.\r\n\r\n', 13000000, 0, 0, 0, 100, 0, 0),
(70, 9, 'Huawei Nova 5T 8GB-128GB', 'Thiết kế Huawei nova 5T là sự kết hợp hoàn hảo giữa kiểu dáng hiện đại và màu sắc độc đáo, tạo nên nét cá tính nổi bật của riêng bạn. Phiên bản màu xanh Crush Blue với hiệu ứng phản chiếu đổi màu lấp lánh, tuyệt đẹp và tạo nên nguồn cảm hứng cho người dùng. Kỹ thuật hoàn thiện tinh tế, kết cấu độc đáo cùng sự tương phản ánh sáng trên một mặt lưng phẳng thời thượng, mang đến vẻ đẹp kỳ ảo và khác biệt của Huawei nova 5T.\r\n\r\n', 9000000, 0, 0, 0, 100, 0, 0),
(71, 10, 'Điện thoại Vsmart Joy 3 (4GB/64GB)', 'Không vì mức giá rẻ mà cấu hình bị thua thiệt, Joy 3 bản 4 GB vẫn được hãng Vsmart tích hợp vi xử lý tầm trung Snapdragon 632 cho hiệu năng xử lý mượt các tác vụ hàng ngày cũng như giúp điện thoại chơi game tốt, ổn định trên các tựa game hot nhất hiện nay như Liên Quân hay PUBG Mobile ở mức đồ họa trung bình. \r\n\r\n', 3000000, 0, 0, 0, 100, 0, 0),
(72, 10, 'Điện thoại Vsmart Aris Pro\r\n', 'Aris Pro là một trong những dòng điện thoại đầu tiên được trang bị camera selfie với công nghệ ẩn sau màn hình độc đáo, tạo nên một màn hình liền mạch, không còn khiếm khuyết “đục lỗ” hay “giọt nước”.\r\n\r\n', 10000000, 0, 0, 0, 100, 0, 0),
(73, 10, 'Điện thoại Vsmart Aris (6GB/64GB)', 'Điểm nổi bật khi nhìn trên Vsmart Aris đầu tiên phải kể đến là bộ 4 camera chất lượng thiết kế dạng hình vuông ở giữa mặt lưng trông rất bắt mắt có phần khác biệt so với các thế hệ trước.\r\n\r\n', 6000000, 0, 0, 0, 100, 0, 0),
(74, 10, 'Điện thoại Vsmart Live 4 6GB', 'Vsmart vẫn giữ lại kiểu dáng như các sản phẩm trước, mặt lưng của máy được hoàn thiện bằng chất liệu nhựa nhám mờ, ở giữa nổi bật là logo màu xám trắng dễ dàng nhận biết, thiết kế này thì phù hợp với mọi lứa tuổi.\r\n\r\nMặt trước của máy được bảo vệ lớp kính cường lực Corning Gorilla Glass 3 có độ bền nhất định, ít trầy xước và chịu được lực ấn mạnh tay hay va chạm nhẹ. Smartphone này còn được trang bị cảm biến vân tay ở mặt lưng giúp bạn mở khóa một cách nhanh chóng chỉ với một chạm duy nhất.', 50000000, 0, 0, 0, 100, 0, 0),
(75, 11, 'Bphone B86S\r\n', 'Tối ngày 10/05, sau nhiều lần dời lịch, Bphone B86 cũng được CEO Nguyễn Tử Quảng ra mắt người dùng cùng với 3 phiên bản khác là B40, B60 và B86s. Có mức giá từ 5.490.000đ\r\n\r\n', 10000000, 0, 0, 0, 100, 0, 0),
(76, 11, 'Bphone B86\r\n', 'Tối ngày 10/05, sau nhiều lần dời lịch, Bphone B86 cũng được CEO Nguyễn Tử Quảng ra mắt người dùng cùng với 3 phiên bản khác là B40, B60 và B86s. Có mức giá từ 5.490.000đ\r\n\r\n', 9000000, 0, 0, 0, 90, 0, 0),
(77, 11, 'Điện thoại Bkav C85', 'Theo đại diện của Bkav, C85 sẽ tận dụng những ưu điểm của điện thoại phổ thông, như kiểu dáng nhỏ gọn, dễ sử dụng, pin trâu, có thể dùng cả tuần không cần sạc. Máy truy cập được những ứng dụng phổ biến như Facebook, YouTube, Google... Bên cạnh đó, sản phẩm còn tích hợp công nghệ ra lệnh bằng giọng nói.\r\n\r\n', 500000, 0, 0, 0, 100, 0, 0),
(78, 11, 'Điện thoại Bphone 3\r\n', 'Nếu như với 2 chiếc Bphone đời đầu nhiều người còn đánh giá đây chỉ là những chiếc máy để Bkav để \"quảng bá thương hiệu\" chứ chưa thực sự đáng sở hữu thì với Bphone 3 Bkav đã khiến nhiều người Việt thực sự \"tự hào\".\r\n', 7000000, 0, 0, 0, 100, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(20) NOT NULL,
  `idUser` int(20) NOT NULL,
  `idProduct` int(20) NOT NULL,
  `ratePoint` tinyint(4) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime(6) DEFAULT NULL,
  `modifiedAt` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `idUser`, `idProduct`, `ratePoint`, `comment`, `createdAt`, `modifiedAt`) VALUES
(27, 41, 2, 3, 'cung dc', '2020-11-24 17:03:02.000000', '2020-11-26 08:13:48.000000'),
(28, 41, 7, 2, 'dien thoai dep', '2020-11-25 16:01:57.000000', NULL),
(29, 41, 1, 5, 'dien thoai dep', '2020-11-25 16:04:49.000000', NULL),
(30, 41, 20, 5, 'yiutt', '2020-11-25 16:13:47.000000', NULL),
(31, 41, 12, 5, 'dùng tốt', '2020-11-25 16:30:01.000000', NULL),
(32, 41, 3, 5, 'xấu', '2020-11-25 16:30:14.000000', NULL),
(33, 41, 17, 2, 'ho', '2020-11-25 16:40:59.000000', NULL),
(35, 41, 15, 2, '', '2020-11-26 09:49:27.000000', NULL),
(36, 41, 28, 4, '', '2020-11-26 10:17:19.000000', NULL),
(37, 41, 18, 3, '', '2020-11-26 10:54:54.000000', NULL),
(38, 49, 13, 4, 'Siêu phẩm cmnl', '2020-11-26 11:42:30.000000', NULL),
(39, 49, 33, 5, '', '2020-11-26 11:47:37.000000', NULL),
(40, 49, 34, 2, '', '2020-11-26 11:48:23.000000', NULL),
(41, 49, 14, 5, '', '2020-11-26 11:55:08.000000', NULL),
(42, 49, 1, 3, '', '2020-11-26 12:27:29.000000', NULL),
(43, 49, 18, 4, 'siêu phẩm đây zồi', '2020-11-26 12:28:33.000000', NULL),
(44, 49, 15, 4, 'Rất hữu ích', '2020-11-26 14:27:01.000000', NULL),
(45, 41, 9, 5, '', '2020-11-26 16:12:00.000000', NULL),
(46, 41, 22, 5, '', '2020-11-26 16:12:01.000000', NULL),
(47, 41, 23, 5, '', '2020-11-26 16:12:03.000000', NULL),
(48, 41, 29, 5, '', '2020-11-26 16:12:04.000000', NULL),
(49, 41, 34, 5, '', '2020-11-26 16:12:06.000000', NULL),
(50, 41, 67, 5, '', '2020-11-26 16:12:08.000000', NULL),
(51, 41, 68, 5, '', '2020-11-26 16:12:09.000000', NULL),
(52, 41, 36, 4, '', '2020-12-01 21:21:58.000000', NULL),
(53, 41, 47, 1, 'Sản phẩm quá tệ', '2020-12-01 21:43:22.000000', NULL),
(54, 41, 14, 3, 'Cũng tàm tạm', '2020-12-01 22:07:37.000000', '2020-12-01 22:09:41.000000'),
(57, 41, 66, 3, '', '2020-12-01 22:32:54.492000', NULL),
(58, 41, 63, 4, 'Tuyệt vời. Nhưng còn nhiều lỗi. Khi nào fix xong thig t sửa lại. Oke?', '2020-12-01 22:40:57.703000', NULL),
(59, 41, 65, 2, 'Máy giật lag', '2020-12-01 22:41:09.839000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `searchKey` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `idUser`, `searchKey`) VALUES
(4, 41, 'bàn may'),
(5, 41, 'dien thoai'),
(6, 41, 'h'),
(7, 41, 'ak'),
(8, 41, 'ihdih'),
(9, 41, 'hibs'),
(10, 41, 'vhvshvs'),
(11, 41, 'vudvuvd'),
(13, 41, 'hhhhhhh'),
(14, 41, 'ùgggb'),
(15, 41, 'vbnm'),
(16, 41, 'dyyd'),
(17, 41, 'muốmngif'),
(22, 41, 'sao'),
(23, 41, 'Hí hí'),
(24, 41, 'hihi'),
(29, 41, 'hả'),
(30, 41, 'nll'),
(31, 41, 'nlldgh'),
(33, 41, 'sam sung'),
(34, 41, 'a'),
(35, 41, 'jvvigx'),
(36, 41, 'rcecev'),
(37, 41, 'helli'),
(38, 41, 'hhb'),
(39, 41, 'hello'),
(40, 41, 'điện thoại'),
(42, 41, 'samsung'),
(43, 41, 'Iphone'),
(47, 48, 'iphone'),
(48, 48, 'samsum'),
(49, 48, 'samsung'),
(50, 49, 'iphone'),
(51, 49, 'hihi'),
(52, 41, 'iphone X'),
(53, 41, 'laptop'),
(54, 41, 'máy tính'),
(56, 41, 'bảng'),
(57, 41, 'venue'),
(58, 41, 'asus'),
(59, 41, 'a1,'),
(60, 41, 'a10s'),
(61, 49, 'sam');

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
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transact`
--

INSERT INTO `transact` (`id`, `status`, `id_user`, `user_name`, `user_phone`, `province`, `district`, `ward`, `address`, `qty`, `amount`, `message`, `created`, `modified`) VALUES
(87, 4, 41, 'Văn Thắng', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 2, 7380000, NULL, '2020-12-02 13:29:31', NULL),
(88, 4, 41, 'Văn Thắng', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 3, 11070000, NULL, '2020-12-02 13:29:31', NULL),
(89, -1, 41, 'Văn Thắng', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 1, 2790000, NULL, '2020-12-02 13:29:31', NULL),
(90, 4, 42, 'Thắng Nguyễn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 2, 12040000, NULL, '2020-12-02 13:29:31', NULL),
(92, -1, 42, 'Thắng Nguyễn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 3, 63190000, NULL, '2020-12-02 13:29:31', NULL),
(93, 4, 42, 'Thắng Nguyễn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 8, 38340000, NULL, '2020-12-02 13:29:31', NULL),
(94, 4, 42, 'Thắng Nguyễn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 2, 43390000, NULL, '2020-12-02 13:29:31', NULL),
(95, 1, 42, 'Thắng Nguyễn Văn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 1, 15010000, NULL, '2020-12-02 13:29:31', NULL),
(96, 1, 42, 'Thắng Nguyễn Văn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 5, 144500000, NULL, '2020-12-02 13:29:31', NULL),
(97, 4, 42, 'Thắng Nguyễn Văn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 32, 105732000, NULL, '2020-12-02 13:29:31', NULL),
(98, 2, 42, 'Thắng Nguyễn Văn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 3, 14580000, NULL, '2020-12-02 13:29:31', NULL),
(99, 3, 42, 'Thắng Nguyễn Văn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 13, 199133000, NULL, '2020-12-02 13:29:31', NULL),
(100, 1, 42, 'Thắng Nguyễn Văn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 1, 9990000, NULL, '2020-12-02 13:29:31', NULL),
(101, 4, 42, 'Thắng Nguyễn Văn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 3, 30000000, NULL, '2020-12-02 13:29:31', NULL),
(102, 1, 43, 'Thắng pro', '0967244081', 'Tỉnh Bình Định', 'Huyện Tuy Phước', 'Xã Phước Nghĩa', 'cung nam', 10, 123580000, NULL, '2020-12-02 13:29:31', NULL),
(103, 1, 43, 'Thắng pro', '0967244081', 'Tỉnh Bình Định', 'Huyện Tuy Phước', 'Xã Phước Nghĩa', 'cung nam', 1, 28900000, NULL, '2020-12-02 13:29:31', NULL),
(104, 0, 43, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(105, -1, 44, 'Hồ Phạm Ngọc Thạch', '0778889076', 'Tỉnh Tây Ninh', 'Huyện Hòa Thành', 'Xã Long Thành Nam', 'Chờ người nơi ấy', 2, 25960000, NULL, '2020-12-02 13:29:31', NULL),
(106, 1, 44, 'Hồ Phạm Ngọc Thạch', '0778889076', 'Tỉnh Tây Ninh', 'Huyện Hòa Thành', 'Xã Long Thành Nam', 'Chờ người nơi ấy', 1, 47500000, NULL, '2020-12-02 13:29:31', NULL),
(107, 0, 42, 'Thắng Nguyễn Văn', '0321234567', 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', 2, 27010000, NULL, NULL, NULL),
(108, 4, 45, 'thùy trang', '0967123456', 'Thành phố Hồ Chí Minh', 'Quận 7', 'Phường Tân Thuận Đông', 'mèo méo meo', 2, 11790000, NULL, '2020-12-02 13:29:31', NULL),
(109, 4, 41, 'Nguyễn Văn Thắng', '0326566821', 'Thành phố Hồ Chí Minh', 'Quận 8', 'Phường 06', '252 Bùi Minh Trực', 3, 44040000, NULL, '2020-12-02 13:29:31', NULL),
(110, 1, 41, 'Nguyễn Văn Thắng', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắngcufctc', 2, 36000000, NULL, '2020-12-02 13:29:31', NULL),
(111, 4, 41, 'Nguyễn Văn Thắngggg', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 3, 17580000, NULL, '2020-12-02 13:29:31', NULL),
(112, 4, 41, 'Nguyễn Văn Thắngggg', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 3, 142500000, NULL, '2020-12-02 13:29:31', NULL),
(113, 4, 41, 'Nguyễn Văn Thắngggg', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 11, 188506000, NULL, '2020-12-02 13:29:31', NULL),
(114, -1, 41, 'Nguyễn Văn Thắngggg', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 5, 6950000, NULL, '2020-12-02 13:29:31', NULL),
(115, -1, 41, 'Nguyễn Văn Thắngggg', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 5, 6950000, NULL, '2020-12-02 13:29:31', NULL),
(116, -1, 41, 'Nguyễn Văn Thắngggg', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 7, 9730000, NULL, '2020-12-02 13:29:31', NULL),
(117, -1, 41, 'Nguyễn Văn Thắngggg', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 5, 6950000, NULL, '2020-12-02 13:29:31', NULL),
(118, 4, 41, 'Nguyễn Văn Thắngggg', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 3, 5201000, NULL, '2020-12-02 13:29:31', NULL),
(119, 0, 47, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5841000, NULL, NULL, NULL),
(120, 4, 49, 'thang', '1', 'Thành phố Hà Nội', 'Huyện Gia Lâm', 'Thị trấn Trâu Quỳ', '1234 bnd', 2, 7593000, NULL, '2020-12-02 13:29:31', NULL),
(121, -1, 41, 'Nguyễn Văn Thắng', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 6, 75750000, NULL, '2020-12-02 13:29:31', NULL),
(122, 4, 41, 'Nguyễn Văn Thắng', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 9, 70430000, NULL, '2020-12-02 13:29:31', NULL),
(128, 1, 41, 'Nguyễn Văn Thắng', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 2, 19950000, NULL, '2020-12-02 13:29:31', NULL),
(129, 4, 49, 'Thắng xinh zai', '0326566821', 'Thành phố Hà Nội', 'Huyện Gia Lâm', 'Thị trấn Trâu Quỳ', '1234 bnd', 7, 71113000, NULL, '2020-12-02 13:29:31', NULL),
(130, 4, 49, 'thangbnm hkkk', '0321526586', 'Thành phố Hà Nội', 'Huyện Gia Lâm', 'Thị trấn Trâu Quỳ', '1234 bnd', 2, 21000000, NULL, '2020-12-02 13:29:31', NULL),
(131, 0, 44, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(132, 4, 41, 'Nguyễn Văn Thắng', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 3, 58500000, NULL, '2020-12-02 13:29:31', NULL),
(133, 4, 41, 'Nguyễn Văn Thắng', '0326566821', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', 6, 48500000, NULL, '2020-12-02 13:29:31', NULL),
(134, 1, 49, 'thang', '1', 'Thành phố Hà Nội', 'Huyện Gia Lâm', 'Thị trấn Trâu Quỳ', '1234 bnd', 1, 47500000, NULL, '2020-12-02 13:29:31', NULL),
(135, -1, 41, 'Nguyễn Văn Thắngggg', '0326566822', 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Tân', '30 thắng', 1, 9000000, NULL, '2020-12-02 14:07:25', '2020-12-02 14:08:38'),
(136, 0, 41, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL);

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
  `birthdate` varchar(15) DEFAULT NULL,
  `rule` tinyint(4) NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phoneNumber`, `email`, `password`, `sex`, `province`, `district`, `ward`, `address`, `imageUrl`, `created`, `birthdate`, `rule`, `amount`) VALUES
(41, 'Nguyễn Văn Thắng', '0326566821', 'cungtrang@gmail.com', '1234567', 1, 'Tỉnh Bình Dương', 'Huyện Dầu Tiếng', 'Xã Minh Hoà', '30 thắng', NULL, 1599580329286, '30-4-2000', 0, 0),
(42, 'Thắng Nguyễn Văn', '0321234567', 'cungtrang0978@gmail.com', '123456', 1, 'Thành phố Đà Nẵng', 'Huyện Hòa Vang', 'Xã Hòa Nhơn', 'q q', NULL, 1599961403423, '11-8-2018', 0, 0),
(43, 'Thắng pro', '0967244081', NULL, '123456', 2, 'Tỉnh Bình Định', 'Huyện Tuy Phước', 'Xã Phước Nghĩa', 'cung nam', NULL, 1600166801349, '3-2-2000', 0, 0),
(44, 'Hồ Phạm Ngọc Thạch', '0778889076', 'ngocthach26112000@gmail.com', 'ngocthach2611', 1, 'Tỉnh Tây Ninh', 'Huyện Hòa Thành', 'Xã Long Thành Nam', 'Chờ người nơi ấy', NULL, 1600314202403, '17-9-2000', 0, 0),
(45, 'thùy trang', '0967123456', 'trangtruong.160800@gmail.com', '123456', 2, 'Thành phố Hồ Chí Minh', 'Quận 7', 'Phường Tân Thuận Đông', 'mèo méo meo', NULL, 1600781540441, '22-9-2020', 0, 0),
(46, 'vinh mai', '0778889075', 'vinh@gmail.com', '123456789', 1, NULL, NULL, NULL, NULL, NULL, 1600782604881, '22-9-2020', 0, 0),
(47, 'Quang Trường', '0392518802', 'quangtruong@gmail.com', 'Truong1**', 1, 'Thành phố Hải Phòng', 'Huyện Cát Hải', 'Xã Gia Luận', 'thichd ko', NULL, 1602744191212, '15-10-1999', 0, 0),
(48, 'Ngoc thach', '0778889074', 'ngocthach@gmail.com', 'Thach26112000@', 1, 'Tỉnh Đắk Lắk', 'Huyện Krông Năng', 'Xã Phú Xuân', 'bình đjjhj', NULL, 1603336157951, '22-10-2000', 0, 0),
(49, 'thang', '1', NULL, '1', NULL, 'Thành phố Hà Nội', 'Huyện Gia Lâm', 'Thị trấn Trâu Quỳ', '1234 bnd', NULL, 1603336157951, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `viewed_product`
--

CREATE TABLE `viewed_product` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `viewed_product`
--

INSERT INTO `viewed_product` (`id`, `idProduct`, `idUser`) VALUES
(1, 20, 41),
(2, 15, 41),
(3, 5, 41),
(4, 6, 41),
(5, 21, 41),
(6, 28, 41),
(7, 14, 41),
(8, 26, 41),
(9, 13, 41),
(10, 27, 41),
(11, 29, 41),
(12, 11, 41),
(13, 10, 41),
(14, 8, 41),
(15, 3, 41),
(16, 33, 41),
(17, 32, 41),
(18, 34, 41),
(19, 30, 41),
(20, 19, 41),
(21, 2, 41),
(22, 1, 41),
(23, 4, 41),
(24, 18, 41),
(25, 17, 41),
(26, 16, 41),
(27, 23, 41),
(28, 7, 41),
(29, 9, 41),
(34, 12, 41),
(35, 9, 47),
(36, 7, 47),
(37, 30, 47),
(38, 21, 47),
(39, 28, 47),
(40, 6, 47),
(41, 22, 47),
(42, 20, 47),
(43, 19, 47),
(44, 17, 47),
(45, 13, 47),
(46, 2, 48),
(47, 18, 48),
(48, 20, 48),
(49, 17, 48),
(50, 13, 48),
(51, 34, 49),
(52, 2, 49),
(53, 12, 49),
(54, 17, 49),
(55, 18, 49),
(56, 14, 49),
(57, 20, 49),
(58, 30, 49),
(59, 21, 49),
(60, 1, 49),
(61, 22, 49),
(62, 23, 49),
(63, 6, 49),
(64, 3, 49),
(65, 33, 49),
(66, 22, 41),
(67, 35, 41),
(68, 36, 41),
(69, 78, 41),
(70, 76, 41),
(71, 44, 41),
(72, 45, 41),
(73, 46, 41),
(74, 43, 41),
(75, 38, 41),
(76, 37, 41),
(77, 49, 41),
(78, 77, 41),
(79, 75, 41),
(80, 50, 41),
(81, 31, 41),
(82, 70, 41),
(83, 69, 41),
(84, 68, 41),
(85, 67, 41),
(86, 2, 42),
(87, 18, 42),
(88, 1, 42),
(89, 3, 42),
(90, 13, 42),
(91, 17, 42),
(92, 37, 42),
(93, 76, 42),
(94, 75, 42),
(95, 77, 42),
(96, 78, 42),
(97, 14, 42),
(98, 6, 42),
(99, 13, 49),
(100, 73, 49),
(101, 15, 49),
(102, 9, 44),
(103, 29, 44),
(104, 55, 44),
(105, 22, 44),
(106, 19, 44),
(107, 16, 44),
(108, 20, 44),
(109, 23, 44),
(110, 3, 44),
(111, 47, 41),
(112, 63, 41),
(113, 65, 41),
(114, 66, 41),
(115, 64, 41),
(116, 27, 49),
(117, 16, 49),
(118, 19, 49),
(119, 28, 49),
(120, 4, 49);

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
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

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
-- Indexes for table `viewed_product`
--
ALTER TABLE `viewed_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_1` (`idProduct`),
  ADD KEY `fk_2` (`idUser`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `transact`
--
ALTER TABLE `transact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `viewed_product`
--
ALTER TABLE `viewed_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

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
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Constraints for table `searches`
--
ALTER TABLE `searches`
  ADD CONSTRAINT `searches_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Constraints for table `transact`
--
ALTER TABLE `transact`
  ADD CONSTRAINT `transact_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `viewed_product`
--
ALTER TABLE `viewed_product`
  ADD CONSTRAINT `fk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_2` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
