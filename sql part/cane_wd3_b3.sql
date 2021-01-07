SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `tbl_category` (
  `fld_category` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_aisle_no` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_person_in_charge` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tbl_category` (`fld_category`, `fld_aisle_no`, `fld_person_in_charge`) VALUES
('Canned Goods', 'C', 'Peter'),
('Detergent', 'E', 'Kevin'),
('Drinks', 'A', 'Peter'),
('Hygiene', 'D', 'Kevin'),
('Snacks', 'A', 'Peter'),
('Spreads', 'B', 'Peter');

CREATE TABLE `tbl_pic_upload` (
  `fld_pic_id` int(11) NOT NULL,
  `fld_pic_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_pic_notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tbl_pic_upload` (`fld_pic_id`, `fld_pic_name`, `fld_pic_notes`) VALUES
(1, '1609922904Screenshot (708).png', 'sample'),
(2, '1609923445Screenshot (707).png', 'The second season of Homicide: Life on the Street, a US police drama TV series, originally aired in the US in January 1994. Low ratings during the first season meant NBC ordered only four episodes before deciding whether to renew the show. The original ca'),
(3, '1609923583Screenshot (183).png', 'u̠t-Ma’in or Fakai is a Northwest Kainji dialect continuum spoken by 36,000 people in the Fakai district of Nigeria. (The letter ⟨u̠⟩ is /ə/.) There are numerous rather divergent dialects: '),
(4, '1609923700Screenshot (684).png', 'Nouvelles Extraordinaires de Divers Endroits (English: \"Extraordinary News from Various Places\") or Gazette de Leyde (Gazette of Leiden) was the most important newspaper of record of the international European newspapers of the late 17th to the late 18th ');

CREATE TABLE `tbl_pricelist` (
  `fld_pid` int(11) NOT NULL,
  `fld_product_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_category` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_price` float(20,4) NOT NULL,
  `fld_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tbl_pricelist` (`fld_pid`, `fld_product_name`, `fld_category`, `fld_price`, `fld_quantity`) VALUES
(1, 'Tang Orange 100 grams', 'Drinks', 130.0000, 5),
(2, 'Tang Mango 100 grams', 'Drinks', 137.0000, 5),
(3, 'Safeguard Pure White Body Wash 1 L', 'Hygiene', 372.0000, 3),
(4, 'Pantene Pro-V Shampoo Total Damage Care 900 mL', 'Hygiene', 431.0000, 4),
(5, 'Century tuna Flakes in Vegetable Oil 6 x 180 g', 'Canned Goods', 298.0000, 10),
(6, 'Century Tuna Chunks in Water 6 x 184 g', 'Canned Goods', 481.0000, 6),
(8, 'Skippy Creamy Peanut Butter 1.36 Kg', 'Spreads', 513.0000, 3),
(9, 'Member\'s Value Fabric Softener 1 gal', 'Detergent', 379.0000, 5),
(10, 'Jaf Tea Green Tea Jasmine 20 pcs', 'Drinks', 124.0000, 7),
(11, 'Sensodyne Fresh Mint Toothpaste for Sensitive Teeth Triple Pack 3 x 100 g', 'Hygiene', 374.0000, 4),
(12, 'Oreo Red Velvet Cookies Limited Edition 9 pcs', 'Snacks', 196.0000, 5),
(13, 'Bergen Chocolate Chips Teddy Bear Cookies 500 g', 'Snacks', 130.0000, 4),
(14, 'Tisyu 6 pack Coreless 3 ply Tissue', 'Hygiene', 40.0000, 10),
(16, 'Lily\'s Peanut Butter 265 grams', 'Spreads', 130.0000, 6),
(17, 'Century Tuna Flakes in oil flat can', 'Canned Goods', 34.0000, 22),
(18, 'Lily\'s Peanut Butter 510 grams', 'Spreads', 265.0000, 3);

CREATE TABLE `tbl_sample1` (
  `fld_sid` int(11) NOT NULL,
  `fld_full_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_age` int(11) NOT NULL,
  `fld_salary` float(20,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tbl_sample1` (`fld_sid`, `fld_full_name`, `fld_age`, `fld_salary`) VALUES
(1, 'Martin Pool', 40, 12.0000),
(2, 'Reed Richards', 33, 12422.2197),
(3, 'Ecco', 0, 0.0000),
(4, 'Carter Hall', 46, 200010.1250),
(5, 'Michael', 27, 121212.1172),
(6, 'kha\'alil', 20, 47683.9883);

CREATE TABLE `test` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `test` (`id`) VALUES
(255);


ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`fld_category`);

ALTER TABLE `tbl_pic_upload`
  ADD PRIMARY KEY (`fld_pic_id`);

ALTER TABLE `tbl_pricelist`
  ADD PRIMARY KEY (`fld_pid`);

ALTER TABLE `tbl_sample1`
  ADD PRIMARY KEY (`fld_sid`);


ALTER TABLE `tbl_pic_upload`
  MODIFY `fld_pic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `tbl_pricelist`
  MODIFY `fld_pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `tbl_sample1`
  MODIFY `fld_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
