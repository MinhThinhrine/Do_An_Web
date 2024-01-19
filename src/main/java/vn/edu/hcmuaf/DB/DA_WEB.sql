DROP DATABASE DA_WEB;
CREATE DATABASE DA_WEB;
USE DA_WEB;

-- Premiumsoft Navicat for MYSQL
-- version 16.3
-- https://www.navicat.com/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 01, 2023 lúc 03:37 AM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARAda_webda_webCTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- cơ sở dữ liệu cho tournerst
--

-- Tạo bảng`News`
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `date` date NOT NULL,
    `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `newsLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*--------------------------------------------------------*/
-- Tạo bảng`roles`
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `right` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*--------------------------------------------------------*/
-- Tạo bảng`categories`
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
     `id` INT NOT NULL AUTO_INCREMENT,
     `region` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
     `session` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
     `note` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
     PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*--------------------------------------------------------*/
-- Tạo bảng`Feedbacks`
DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE `feedbacks` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `userId` int(11) NOT NULL,
    `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
    `date` date NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*--------------------------------------------------------*/
-- Tạo bảng`Discounts`
DROP TABLE IF EXISTS `discounts`;
CREATE TABLE `discounts` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` int(11) NOT NULL,
    `endDate` date NOT NULL,
    `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*--------------------------------------------------------*/
-- Tạo bảng`Tours`
DROP TABLE IF EXISTS `tours`;
CREATE TABLE `tours` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `cateId` int(11) NOT NULL,
    `discountId` int(11) DEFAULT NULL,
    `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `price` int(11) NOT NULL,
    `startTime` date NOT NULL,
    `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `schedule` text COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
    KEY `fk_cate_id` (`cateId`),
    KEY `fk_discount_id` (`discountId`),
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*-------------------------------------------------------------------*/
-- Tạo bảng`Users`
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `userName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `roleId` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_role_id` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*------------------------------------------------------------------*/
-- Tạo bảng`service_tours`
DROP TABLE IF EXISTS `service_tours`;
CREATE TABLE `service_tours` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `price` FLOAT NOT NULL,
    `description` TEXT COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*------------------------------------------------------------------*/
-- Tạo bảng`Valies`
DROP TABLE IF EXISTS `valies`;
CREATE TABLE `valies` (
     `id` int(11) NOT NULL AUTO_INCREMENT,
     `userId` int(11) NOT NULL,
     `tourId` int(11) NOT NULL,
     `numChildren` int(11) NOT NULL,
     `numAdult` int(11) NOT NULL,
     PRIMARY KEY (`id`),
     KEY `fk_user_id` (`userId`),
     KEY `fk_tour_id` (`tourId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*------------------------------------------------------------------*/
-- Tạo bảng`Options`
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `departDate` date NOT NULL,
      `serviceId` int(11) NOT NULL,
      `valiId` int(11) NOT NULL,
      PRIMARY KEY (`id`),
      KEY `fk_serviceId` (`serviceId`),
      KEY `fk_valiId` (`valiId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*------------------------------------------------------------------*/
-- Tạo bảng`Bills`
DROP TABLE IF EXISTS `bills`;
CREATE TABLE `bills` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `valiId` int(11) NOT NULL,
    `paymentMethod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `totalPrice` int(11) NOT NULL,
    `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_valiId` (`valiId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*------------------------------------------------------------------*/

-- -
/*-- Các ràng buộc cho bảng `feedbacks`
ALTER TABLE `feedbacks`
ADD CONSTRAINT `fk_user_email` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
*/
-- Các ràng buộc cho bảng `users`
ALTER TABLE `users`
    ADD CONSTRAINT `fk_role_id` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`);

-- Các ràng buộc cho bảng `valies`
ALTER TABLE `valies`
    ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
ADD CONSTRAINT `fk_tour_id` FOREIGN KEY (`tourId`) REFERENCES `tours` (`id`);

-- Các ràng buộc cho bảng `options`
ALTER TABLE `options`
    ADD CONSTRAINT `fk_serviceId` FOREIGN KEY (`serviceId`) REFERENCES `service_tours` (`id`),
ADD CONSTRAINT `fk_valiId` FOREIGN KEY (`valiId`) REFERENCES `valies` (`id`);

-- Các ràng buộc cho bảng `bills`
ALTER TABLE `bills`
    ADD CONSTRAINT `fk_valiId_bills` FOREIGN KEY (`valiId`) REFERENCES `valies` (`id`);

-- Các ràng buộc cho bảng `tours`
ALTER TABLE `tours`
    ADD CONSTRAINT `fk_cate_id` FOREIGN KEY (`cateId`) REFERENCES `categories` (`id`),
ADD CONSTRAINT `fk_discount_id` FOREIGN KEY (`discountId`) REFERENCES `discounts` (`id`);

-- -------------------------------------------------------------------------------------------------------
-- Tạo dữ liệu cho bảng news
INSERT INTO `news` (`title`, `date`, `content`, `image`, `newsLink`)
VALUES
    ('News Title 1', '2023-01-01', 'Content of news 1', 'image1.jpg', 'link1'),
    ('News Title 2', '2023-02-01', 'Content of news 2', 'image2.jpg', 'link2');

-- Tạo dữ liệu cho bảng roles
INSERT INTO `roles` (`right`, `description`)
VALUES
    ('Admin', 'Administrator role'),
    ('User', 'Regular user role');

-- Tạo dữ liệu cho bảng users
INSERT INTO `users` (`userName`, `email`, `password`, `phoneNumber`, `address`, `roleId`)
VALUES
    ('thinh', '21130549@st.hcmuaf.edu.vn', '123456', '987654321', 'Address 2', 1),
    ('vu', '21130615@st.hcmuaf.edu.vn', '123456', '98765431', 'Address 2', 1),
    ('thuc', '21130558@st.hcmuaf.edu.vn', '123456', '98765431', 'Address 2', 1);

-- Tạo dữ liệu cho bảng categories
INSERT INTO `categories` (`region`, `session`, `note`)
VALUES
    ('Region 1', 'Session 1', 'Note 1'),
    ('Region 2', 'Session 2', 'Note 2');


-- Tạo dữ liệu cho bảng feedbacks
INSERT INTO `feedbacks` (`userId`, `text`, `date`)
VALUES
    (1, 'Feedback text 1', '2023-01-05'),
    (2, 'Feedback text 2', '2023-01-10');


-- Tạo dữ liệu cho bảng discounts
INSERT INTO `discounts` (`type`, `value`, `endDate`, `description`)
VALUES
    ('Percentage', 10, '2023-12-31', '10% discount on all tours'),
    ('Fixed Amount', 50, '2023-12-31', '$50 discount on selected tours');


-- Tạo dữ liệu cho bảng tours
INSERT INTO `tours` (`cateId`, `discountId`, `name`, `image`, `price`, `startTime`, `duration`, `schedule`, `description`)
VALUES
    (1, 1, 'Tour 1', '1.jpg', 100, '2023-03-01', '3 days', 'Tour schedule 1', 'Description of Tour 1'),
    (2, 1, 'Tour 2', '2.jpg', 150, '2023-04-01', '5 days', 'Tour schedule 2', 'Description of Tour 2'),
    (1, 2, 'Cần Thơ - Châu Đốc', '3.jpg', 150, '2023-04-01', '5 days', 'Tour schedule 2', 'Description of Tour 2'),
    (2, 2, 'Phú Quốc', '4.jpg', 150, '2023-04-01', '5 days', 'Tour schedule 2', 'Description of Tour 2'),
    (1, 2, 'Cần Thơ - Cồn Sơn-Cồn Ấu', '5.jpg', 150, '2023-04-01', '5 days', 'Tour schedule 2', 'Description of Tour 2'),
    (2, 2, 'Mỹ Tho - Bến Tre', '6.jpg', 150, '2023-04-01', '5 days', 'Tour schedule 2', 'Description of Tour 2'),
    (1, 2, 'Củ Chi - Địa Đạo', '7.jpg', 150, '2023-04-01', '5 days', 'Tour schedule 2', 'Description of Tour 2'),
    (2, 1, 'Cần Thơ  - Núi Bà Đen','8.jpg', 150, '2023-04-01', '6 days', 'Tour schedule 2', 'Description of Tour 2'),
    (2, 1, 'Cần Thơ  - Núi Bà Đen','9.jpg', 150, '2023-04-01', '7 days', 'Tour schedule 2', 'Description of Tour 2'),
    (2, 1, 'Cần Thơ  - Núi Bà Đen','10.jpg', 150, '2023-04-01', '8 days', 'Tour schedule 2', 'Description of Tour 2'),
    (2, 1, 'Cần Thơ  - Núi Bà Đen','11.jpg', 150, '2023-04-01', '9 days', 'Tour schedule 2', 'Description of Tour 2'),
    (2, 1, 'Cần Thơ  - Núi Bà Đen','12.jpg', 150, '2023-04-01', '10 days', 'Tour schedule 2', 'Description of Tour 2'),
    (2, 1, 'Cần Thơ  - Núi Bà Đen','13.jpg', 150, '2023-04-01', '11 days', 'Tour schedule 2', 'Description of Tour 2'),
    (2, 1, 'Cần Thơ  - Núi Bà Đen','14.jpg', 150, '2023-04-01', '12 days', 'Tour schedule 2', 'Description of Tour 2');
-- 71-140





-- 141 -->210----------------------------------->



-- Tạo dữ liệu cho bảng service_tours
INSERT INTO `service_tours` (`name`, `price`, `description`)
VALUES
    ('Service 1', 20.0, 'Description of Service 1'),
    ('Service 2', 30.0, 'Description of Service 2');


-- Tạo dữ liệu cho bảng valies
INSERT INTO `valies` (`userId`, `tourId`, `numChildren`, `numAdult`)
VALUES
    (1, 1, 2, 3),
    (2, 2, 1, 4);


-- Tạo dữ liệu cho bảng
INSERT INTO `options` (`departDate`, `serviceId`, `valiId`)
VALUES
    ('2023-03-01', 1, 1),
    ('2023-04-01', 2, 2);


-- Tạo dữ liệu cho bảng
INSERT INTO `bills` (`valiId`, `paymentMethod`, `totalPrice`, `status`)
VALUES
    (1, 'Credit Card', 150, 'Paid'),
    (2, 'PayPal', 200, 'Pending');
CREATE TABLE `tours` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `cateId` int(11) NOT NULL,
                         `discountId` int(11) DEFAULT NULL,
                         `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `price` int(11) NOT NULL,
                         `startTime` date NOT NULL,
                         `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `schedule` text COLLATE utf8mb4_unicode_ci NOT NULL,
                         `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
                         KEY `fk_cate_id` (`cateId`),
                         KEY `fk_discount_id` (`discountId`),
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
#  --`id` int(11) NOT NULL AUTO_INCREMENT,
#     `region` varchar(255) NOT NULL,
#     `discountId` int(11) DEFAULT NULL,
#     `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
#     `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
#     `price` int(11) NOT NULL,
#     `startTime` varchar(255) NOT NULL,
#     `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
#     `schedule` text COLLATE utf8mb4_unicode_ci NOT NULL,
#     `description` text COLLATE utf8mb4_unicode_ci NOT NULL,

#     KEY `fk_discount_id` (`discountId`),
#     PRIMARY KEY (`id`)
# ('Miền Nam', 1, 'Cần Thơ - Châu Đốc', '1.jpg', 3990000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: Cần Thơ
# 	Đón bạn tại sân bay hoặc điểm hẹn. Khởi hành từ Cần Thơ. Thăm vườn cây trái Cái Răng, nơi bạn có thể khám phá các loại cây trái phong phú và thưởng thức trái cây tươi ngon. Thăm Bảo tàng Mỹ thuật Cần Thơ, nơi trưng bày bộ sưu tập nghệ thuật đa dạng và tác phẩm của các nghệ sĩ địa phương.
# 	Tham quan Cầu Cần Thơ, một biểu tượng nổi tiếng của thành phố. Tắm nắng và thưởng thức cảnh quan tại Bến Ninh Kiều, một điểm giao thoa giữa sông Cần Thơ và sông Hậu.
# 	Ngày 2: Châu Đốc
# 	Di chuyển từ Cần Thơ đến Châu Đốc. Thăm chùa Sam, một ngôi chùa nổi trên sông nổi tiếng với kiến trúc độc đáo và phong cảnh tuyệt đẹp. Khám phá đền Bà Chúa Xứ Núi Sam, nơi người dân địa phương thờ cúng và tôn vinh nữ thần miền Tây Nam Bộ. Tham quan và tắm biển tại Khu du lịch biển Tây Đô, nơi bạn có thể thư giãn và tận hưởng không gian biển xanh mát. Dạo chơi trên dòng suối An Giang, tận hưởng cảnh quan thiên nhiên tươi đẹp và tham gia các hoạt động vui chơi trên nước.
# 	Ngày 3: Châu Đốc và về lại Cần Thơ
# 	Tham quan Chợ nổi Châu Đốc, nơi bạn có thể khám phá và mua sắm các loại hàng hóa địa phương, đặc biệt là các mặt hàng thủ công mỹ nghệ. Khám phá rừng tràm Trà Sư, một khu rừng tràm rừng ngập nổi tiếng với động vật hoang dã và cảnh quan thiên nhiên đẹp mắt. Trở về Cần Thơ và kết thúc chuyến đi. Tiễn bạn tại sân bay hoặc điểm hẹn.'
#     ,'Chuyến đi từ Cần Thơ đến Châu Đốc là một hành trình tuyệt vời để khám phá vẻ đẹp và văn hóa của miền Tây Nam Bộ. Bạn sẽ bắt đầu hành trình từ Cần Thơ, nơi bạn sẽ thăm vườn cây trái Cái Răng và trải nghiệm hương vị tươi ngon của trái cây địa phương. Bạn cũng sẽ có cơ hội thăm Bảo tàng Mỹ thuật Cần Thơ và chiêm ngưỡng các tác phẩm nghệ thuật độc đáo.
# 	Sau đó, bạn sẽ di chuyển đến Châu Đốc, nơi bạn sẽ khám phá chùa Sam và đền Bà Chúa Xứ Núi Sam. Hai địa điểm này mang đến không chỉ kiến trúc độc đáo mà còn phong cảnh tuyệt đẹp. Bạn cũng sẽcó cơ hội tắm biển và thư giãn tại Khu du lịch biển Tây Đô, nơi có không gian biển xanh mát.
# Trên đường trở về Cần Thơ, bạn sẽ ghé thăm Chợ nổi Châu Đốc để khám phá và mua sắm các loại hàng hóa địa phương, đặc biệt là những món thủ công mỹ nghệ độc đáo. Bên cạnh đó, bạn cũng sẽ tham quan rừng tràm Trà Sư, một khu rừng tràm rừng ngập nổi tiếng với động vật hoang dã và cảnh quan thiên nhiên đẹp mắt.
# 	Chuyến đi ' ||
# 	            '' ||
# 	               'kết thúc khi bạn trở về Cần Thơ. Chuyến đi từ Cần Thơ đến Châu Đốc sẽ mang đến cho bạn những trải nghiệm tuyệt vời về văn hóa, thiên nhiên và cảnh quan của miền Tây Nam Bộ Việt Nam.'),
('Miền Trung', 1,'Đà Nẵng - Phong Nha','1.jpg', 3990000, 'hằng ngày', '3 ngày 2 đêm','Đà Nẵng - Động Thiên Đường - Phong Nha', 'Tour Phong Nha Kẻ Bàng từ Đà Nẵng với dịch vụ hàng đầu, tham quan nhiều điểm du lịch Quảng Bình đặc sắc, phòng nghỉ sạch sẽ thoáng mát, bữa ăn chất lượng. Lịch trình tour Phong Nha 2 ngày 1 đêm di chuyển bằng phương tiện tàu hỏa đảm bảo an toàn. Ngồi trên tàu, quý khách có dịp ngắm cảnh đèo Hải Vân cực kì hùng vĩ nên thơ.

Phong Nha Explorer sẽ đưa quý khách chinh phục Động Thiên Đường là hang động khô nằm ẩn sâu trong lòng một quần thể núi đá vôi ở độ cao 191m, bao quanh là khu rừng nguyên sinh phía Tây Trường Sơn. Hệ thống thạch nhũ trong động vô cùng đa dạng với những hình ảnh tiêu biểu đặc biệt như Tiên Ông, Phật bà, thác nước, tháp nghiêng, thỏ ngọc ….')