-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 22, 2023 lúc 03:38 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `id_bl` int(10) NOT NULL,
  `noi_dung` varchar(255) NOT NULL,
  `id_hh` int(10) NOT NULL,
  `id_kh` int(10) NOT NULL,
  `ngay_bl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_hoa`
--

CREATE TABLE `hang_hoa` (
  `id_hh` int(10) NOT NULL COMMENT 'mã hàng hóa',
  `ten_hh` varchar(50) NOT NULL COMMENT 'tên hàng hóa',
  `don_gia` double(10,2) NOT NULL,
  `giam_gia` double(10,2) DEFAULT 0.00,
  `hinh` varchar(50) NOT NULL,
  `ngay_nhap` date DEFAULT NULL,
  `mo_ta` text NOT NULL,
  `dac_biet` tinyint(1) NOT NULL,
  `so_luot_xem` int(11) NOT NULL DEFAULT 0,
  `id_ma_loai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hang_hoa`
--

INSERT INTO `hang_hoa` (`id_hh`, `ten_hh`, `don_gia`, `giam_gia`, `hinh`, `ngay_nhap`, `mo_ta`, `dac_biet`, `so_luot_xem`, `id_ma_loai`) VALUES
(6, 'NEW ARRIVAL', 85.00, 80.00, 'VN000CP6_6BT_HERO.webp', '2023-06-15', 'A Puffy 90s Style with a Chunky Platform Outsole\r\n\r\nThe Knu Stack starts with our modern interpretation of a classic 90s silhouette—and then cranks it up a notch. With double the height, a puffed up tongue, and a 3D-molded Sidestripe, this in-your-face shoe boasts dramatic style details that blend an icon of the past with today’s bold trends.\r\n\r\nReissued 90s low top shoe\r\n34 mm platform height\r\nSturdy suede uppers\r\nPuffy tongue and ankle collar\r\nPuffy 3D molded Sidestripe™\r\nOversized chunky laces\r\nHeel pulls for ease of entry\r\nSignature rubber waffle outsole', 1, 0, 6),
(7, 'NEW ARRIVAL', 86.00, 80.00, 'VN000BCE_0HS_HERO.webp', '2023-06-22', 'A Sustainability-Conscious Way to Prepare for the Unexpected\r\n\r\nHere, there, anywhere. Combining the UltraRange’s comfort and versatility features with Vans’ VR3 design guidelines, the UltraRange Neo VR3 lets you take on the unexpected moments of your day while making a sustainability-conscious choice along your journey.\r\n\r\nOur team has set ambitious sustainability goals. Big or small, all of our efforts add up to positive change. To earn the VR3 Checkerboard globe logo, at least 30% of the product must be made up of one or a combination of recycled, renewable, and/or regenerative materials.\r\n\r\nPRODUCT FEATURES:\r\n\r\nUPPER MATERIAL: Made with regenerative leather, sourced from farms implementing regenerative land management intended to promote biodiversity, enhance water cycles, improve soil health and sequester carbon, and 100% recycled PET textiles. Vans leather products support responsible manufacturing via the Leather Working Group.\r\nFOOTBED: The new VR3Cush™ midsole is made using at least 50% biobased EVA foam partially derived from plant-based sources per the ASTM D6866-16 testing standard.\r\nOUTSOLE: All of the rubber used to make this VR3Waffle™ outsole (60% of the compound) is regeneratively grown natural rubber sourced from farms utilizing agricultural practices that are intended to promote biodiversity, enhance water cycles, improve soil health and/or sequester carbon. This natural rubber compound was developed and engineered to maintain the grip and durability Vans is known for (since 66).\r\nTo learn more about Vans and their journey to sustainable materials, please go to vans.com/sustainability.', 1, 0, 6),
(8, 'KNU SKOOL SHOE', 67.00, 60.00, 'VN0009QC_6BT_HERO.webp', '2023-06-22', 'A Puffy 90s Style Inspired by the Past, But Built for Today\r\n\r\nThe Knu Skool is a modern interpretation of a classic 90s style, defined by its puffed up tongue and 3D-molded Sidestripe™, and tied off with oversized, chunky laces. With its in-your-face profile and dramatic style details, the Knu Skool plays off of the original Old Skool™ while blending an icon of the past with today’s trends.\r\n\r\nReissued 90s low top shoe\r\nSturdy suede uppers\r\nPuffy tongue and ankle collar\r\nPuffy 3D molded Sidestripe™\r\nHeel pulls for ease of entry\r\nSignature rubber waffle outsoles', 1, 0, 2),
(9, 'CLASSIC SLIP-ON', 70.00, 65.00, 'VN0009Q7_YQW_HERO.webp', '2023-06-22', 'The Slip-On that’s been Setting Trends Since 1979\r\n\r\nThe Classic Slip-On, with its “No Laces, No Problems” approach, was first introduced to the world in 1979. Since then, it’s become a pop culture icon, known for its ability to dress up or down, its reliable comfort, and the flexibility to adapt to everyone’s style. Part of a series that celebrates the majestic, varied wildlife in California, the Cali Tapestry Classic Slip-On is a timeless silhouette that’s right for any occasion.\r\n\r\nIconic Slip-On shoe\r\nLow profile textile uppers\r\nCalifornia lake tapestry artwork\r\nSupportive padded collars\r\nElastic side accents\r\nSignature rubber waffle outsoles', 1, 0, 6),
(10, 'CHECKERBOARD CLASSIC SLIP-ON', 65.00, 60.00, 'VN000BVZ_BYM_HERO.webp', '2023-06-22', 'The Slip-On that’s been Setting Trends Since 1979\r\n\r\nThe Color Theory Collection allows you to create a unique color story by pairing vibrant, unexpected hues with our iconic footwear styles. Made with an old school canvas upper, the Color Theory Checkerboard Classic Slip-On honors our legendary laceless silhouette while offering a fresh look that boosts the appeal of this easy-to-wear shoe.\r\n\r\nIconic Slip-On shoe\r\nLow profile canvas uppers\r\nClassic checkerboard print\r\nColor Theory seasonal colorway\r\nSupportive padded collars\r\nElastic side accents\r\nSignature rubber waffle outsoles', 0, 0, 7),
(11, 'SLIP-ON CHECKERBOARD SHOE', 89.00, 85.00, 'VN000EYE_276_HERO.webp', '2023-06-22', 'The Slip-On that’s been Setting Trends Since 1979\r\n\r\nThe Classic Slip-On, with its “No Laces, No Problems” approach, was first introduced to the world in 1979. Since then, it’s become a pop culture icon, known for its ability to dress up or down, its reliable comfort, and the flexibility to adapt to everyone’s style. With its unmistakable red heel tab, signature checkerboard print, and rubber waffle outsole, the Classic Slip-On Checkerboard is a timeless shoe that’s right for any occasion.\r\n\r\nIconic Slip-On shoe\r\nLow profile canvas uppers\r\nClassic checkerboard print\r\nSupportive padded collars\r\nElastic side accents\r\nSignature rubber waffle outsoles', 1, 0, 7),
(12, 'AUTHENTIC SHOE', 60.00, 55.00, 'VN000EE3_WHT_ALT1.webp', '2023-06-22', 'The Heritage Shoe that Started It All. This is the Authentic—Since 1966.\r\n\r\nThe Authentic is the original Vans silhouette. First introduced in 1966 and driven forward by creative culture ever since, this time-honored shoe keeps the old school vibe alive with sturdy canvas uppers in seasonal colorways. With its classic low-top design and iconic rubber waffle outsole, the Authentic is a blank canvas for creativity that allows you to do your thing in your own unique way.\r\n\r\nHeritage low-top shoe\r\nLace-up closure\r\nSturdy canvas uppers\r\nSignature rubber waffle outsoles\r\n4 metal eyelet lace rows for sizes 3.5-6\r\n5 metal eyelet lace rows for sizes 6.5 and up', 0, 0, 7),
(13, 'COMFYCUSH SK8-HI', 95.00, 85.00, 'VN0007NF_BLK_HERO.webp', '2023-06-22', 'Where Classics Meet Comfort\r\n\r\nVans has reinvigorated the iconic Sk8-Hi silhouette by introducing ComfyCush technology: a softer, cushiony outsole that gives the floral ComfyCush Sk8-Hi a first-class fit that feels like walking on a cloud. Newly constructed suede and canvas uppers house simplified one-piece interiors with added arch support and moisture-wicking lining throughout, resulting in a lightweight experience that ensures you’ll Keep It Comfy at all times.\r\n\r\nLegendary high top, Sidestripe™ shoe updated with ComfyCush™\r\nSimplified one-piece interior\r\nAdded arch support\r\nRubber outsole for durability and traction\r\nSuede and canvas upper that focuses on tongue stabilization\r\nMoisture-wicking lining materials\r\nPartial floral print', 0, 0, 7),
(14, 'SK8-HI', 85.00, 80.00, 'VN0007NS_BGK_HERO.webp', '2023-06-22', 'The Legendary High-Top that’s been Changing the Game Since 1978\r\n\r\nThe Sk8-Hi was a game changer as the first high-top skate shoe to break onto the scene. With a padded collar for ankle support and reinforced toe caps, it remains a style like no other. The Sk8-Hi was our second model to showcase the Vans Sidestripe, and its bold design has remained iconic ever since. The innovation of a high-top skate shoe was, and still is, an emblem of Off The Wall culture, and the drippy camouflage print ensures that this Sk8-Hi keeps this style fresh.\r\n\r\nLegendary high top, Sidestripe™ shoe\r\nDurable suede and canvas uppers\r\nDrippy camouflage print\r\nLace-up closure\r\nReinforced toe caps\r\nSupportive padded collars\r\nSignature rubber waffle outsoles\r\nClassic Sk8-Hi®', 0, 0, 7),
(15, 'SK8-HI COLOR BLOCK SHOE', 86.00, 83.00, 'VN0A7Q5N_BIY_HERO (1).webp', '2023-06-22', 'The Sk8-Hi, originally called Style 38, was introduced in 1978 as the premiere high top skate shoe. Introducing an innovative high padded collar for ankle support and a reinforced toe box, it was the second shoe to feature the iconic Vans Sidestripe™ while simultaneously bringing a whole new look to the Vans family. It was and still is an emblem of “Off The Wall” culture. Honoring that first legendary high top, the Color Block Sk8-Hi is made with color blocked suede and canvas uppers. This lace-up shoe also comes equipped with signature rubber waffle outsoles for reliable, everyday grip. • Vans’ legendary high top, Sidestripe™ shoe • Durable suede and canvas uppers • Lace-up closure • Reinforced toe caps • Supportive padded collars • Signature rubber waffle outsoles', 0, 0, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `id_kh` int(10) NOT NULL,
  `mat_khau` varchar(50) NOT NULL,
  `ho_ten` varchar(50) NOT NULL,
  `kich_hoat` tinyint(1) NOT NULL,
  `hinh` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `vai_tro` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`id_kh`, `mat_khau`, `ho_ten`, `kich_hoat`, `hinh`, `email`, `vai_tro`) VALUES
(1, '123', 'thach', 1, '', 'thachnatty2003@gmail.com', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `id_ma_loai` int(10) NOT NULL COMMENT 'mã loại hàng',
  `ten_loai` varchar(50) NOT NULL COMMENT 'tên loại hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`id_ma_loai`, `ten_loai`) VALUES
(1, 'Quần'),
(2, 'Áo'),
(3, 'Mũ'),
(6, '456'),
(7, 'giày');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`id_bl`),
  ADD KEY `ma_hh` (`id_hh`),
  ADD KEY `ma_kh` (`id_kh`);

--
-- Chỉ mục cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD PRIMARY KEY (`id_hh`),
  ADD KEY `fk_loai_hanghoa` (`id_ma_loai`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id_kh`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`id_ma_loai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `id_bl` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  MODIFY `id_hh` int(10) NOT NULL AUTO_INCREMENT COMMENT 'mã hàng hóa', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `id_kh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `id_ma_loai` int(10) NOT NULL AUTO_INCREMENT COMMENT 'mã loại hàng', AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`id_hh`) REFERENCES `hang_hoa` (`id_hh`),
  ADD CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`id_kh`) REFERENCES `khach_hang` (`id_kh`);

--
-- Các ràng buộc cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `fk_loai_hanghoa` FOREIGN KEY (`id_ma_loai`) REFERENCES `loai` (`id_ma_loai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
