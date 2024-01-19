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
    `region` varchar(255) NOT NULL,
    `discountId` int(11) DEFAULT NULL,
    `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `price` int(11) NOT NULL,
    `startTime` varchar(255) NOT NULL,
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
ADD CONSTRAINT `fk_discount_id` FOREIGN KEY (`discountId`) REFERENCES `discounts` (`id`);

-- -------------------------------------------------------------------------------------------------------
-- Tạo dữ liệu cho bảng news
INSERT INTO `news` (`title`, `date`, `content`, `image`, `newsLink`)
VALUES
    ('Các tour du lịch nghỉ dưỡng biển được ưu tiên.', '2023-11', 'Với thời tiết mát mẻ, dễ chịu, các tour du lịch nghỉ dưỡng biển được nhiều du khách ưu tiên lựa chọn trong tháng 11 năm 2023. Các điểm du lịch biển nổi tiếng như Nha Trang,  Vũng Tàu,  Phú Quốc,  Đà Nẵng,... đều có lượng khách tăng cao trong tháng này.', '14.jpg', 'https://vinpearl.com/vi/du-lich-bien-diem-danh-10-bai-bien-dep-bac-nhat-viet-nam'),
    ('Các tour du lịch miền Tây Nam Bộ được nhiều du khách lựa chọn.', '2023-11', 'Là một trong những điểm đến du lịch nổi tiếng của Việt Nam, với những cảnh đẹp sông nước, những món ăn ngon đặc sản và con người thân thiện. Du lịch miền Tây được nhiều du khách lựa chọn, đặc biệt là các tour khám phá rừng tràm Trà Sư, Chợ nổi Cái Răng,...', '70.jpg', 'https://vinpearl.com/vi/tron-bo-kinh-nghiem-du-lich-mien-tay-nam-bo-day-du-nhat'),
	('Lượng khách du lịch trong nước tăng mạnh.', '2023-11', 'Theo số liệu thống kê của Tổng cục Du lịch, lượng khách du lịch nội địa trong tháng 11 năm 2023 đạt 7,5 triệu lượt, tăng 20% so với cùng kỳ năm trước. Trong đó, khách nội địa đến các điểm du lịch biển, đảo tăng mạnh, đặc biệt là Nha Trang, Phú Quốc, Đà Nẵng,...', 'b1.jpg', 'https://www.gso.gov.vn/du-lieu-va-so-lieu-thong-ke/2023/08/doanh-thu-dich-vu-tang-manh-trong-mua-cao-diem-du-lich-he-2023/');

-- Tạo dữ liệu cho bảng roles
INSERT INTO `roles` (`right`, `description`)
VALUES
    ('Admin', 'Administrator role'),
    ('User', 'Regular user role'),
	('Staff', 'Staff user role');

-- Tạo dữ liệu cho bảng users
INSERT INTO `users` (`userName`, `email`, `password`, `phoneNumber`, `address`, `roleId`)
VALUES
    ('thinh', '21130549@st.hcmuaf.edu.vn', '123456', '987654321', 'Address 2', 1),
    ('vu', '21130615@st.hcmuaf.edu.vn', '123456', '98765431', 'Address 2', 1),
    ('thuc', '21130558@st.hcmuaf.edu.vn', '123456', '98765431', 'Address 2', 1);

-- Tạo dữ liệu cho bảng feedbacks
INSERT INTO `feedbacks` (`userId`, `text`, `date`)
VALUES
    (4, 'Chuyến tour này mang lại cho tôi một giá trị tuyệt vời. Với mức giá mà tôi trả, tôi thực sự cảm thấy hài lòng về những gì chúng tôi nhận được.', '2023-01-05'),
	(5, 'Tôi rất hài lòng với chuyến tour này và sẽ khuyên bạn bè và người thân tham gia. Tôi muốn cảm ơn đội ngũ tổ chức tour đã tạo ra một kỷ niệm đáng nhớ.', '2023-01-10'),
	(6, 'Tôi không thể hài lòng hơn với chuyến tour này. Từ đầu đến cuối, mọi thứ đều vượt quá mong đợi của tôi. Tôi đã có một trải nghiệm tuyệt vời và không thể quên. ', '2023-02-15'),
	(7, 'Hướng dẫn viên của chúng tôi là người tuyệt vời. Anh ấy không chỉ am hiểu về địa điểm mà còn rất nhiệt tình và cởi mở. Tôi rất thích chuyến đi.', '2023-03-20'),
	(8, 'Các địa điểm du lịch mà chúng tôi đã thăm đều rất độc đáo và đẹp mắt. Tôi đã có cơ hội khám phá những di sản văn hóa và thiên nhiên tuyệt vời.', '2023-04-25'),
	(9, 'Chất lượng dịch vụ trong chuyến tour này rất ấn tượng. Từ các nhà hàng đến chỗ ở và phương tiện di chuyển, mọi thứ đều rất chuyên nghiệp và đáng tin cậy.', '2023-05-30'),
	(10, 'Mặc dù chuyến tour tổ chức tốt. Tuy nhiên, việc cung cấp thêm thông tin chi tiết về các hoạt động tùy chọn sẽ giúp khách hàng lựa chọn tốt hơn.', '2023-06-05'),
	(11, 'Tôi rất hài lòng với cách mà công ty tổ chức tour du lịch này đã liên lạc và giao tiếp với khách hàng. Điều này tạo ra sự tin tưởng cho chúng tôi trong suốt chuyến đi.', '2023-07-12');

-- Tạo dữ liệu cho bảng discounts
INSERT INTO `discounts` (`type`, `value`, `endDate`, `description`)
VALUES
    ('normal', 1, '2023-12-31', 'normal tours'),
	('summer20', 0.8, '2024-06-30', 'summer 20% off tours'),
	('earlybird', 0.85, '2024-02-28', 'early bird discount tours'),
	('sale15', 0.85, '2024-03-15', 'sale 15% price tours'),
	('sale20', 0.8, '2024-04-30', 'sale 20% price tours'),
	('flashsale25', 0.75, '2024-02-15', 'flash sale 25% price tours'),
	('weekenddiscount15', 0.85, '2024-03-10', 'weekend discount 15% price tours'),
	('specialsale30', 0.7, '2024-05-31', 'special sale 30% price tours'),
	('holidaypromo25', 0.75, '2024-12-25', 'holiday promo 25% price tours'),
	('weekendgetaway20', 0.8, '2024-06-30', 'weekend getaway 20% price tours'),
    ('sale10', 0.9, '2023-12-31', 'sale 10% price tours');


-- Tạo dữ liệu cho bảng tours
INSERT INTO `tours` (`region`, `discountId`, `name`, `image`, `price`, `startTime`, `duration`, `schedule`, `description`)
VALUES
    ('Miền Nam', 1, 'Cần Thơ - Châu Đốc', '1.jpg', 3990000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: Cần Thơ - Ngày 2: Châu Đốc - Ngày 3: Châu Đốc và về lại Cần Thơ'
	,'Chuyến đi từ Cần Thơ đến Châu Đốc là một hành trình tuyệt vời để khám phá vẻ đẹp và văn hóa của miền Tây Nam Bộ. Bạn sẽ bắt đầu hành trình từ Cần Thơ, nơi bạn sẽ thăm vườn cây trái Cái Răng và trải nghiệm hương vị tươi ngon của trái cây địa phương. Bạn cũng sẽ có cơ hội thăm Bảo tàng Mỹ thuật Cần Thơ và chiêm ngưỡng các tác phẩm nghệ thuật độc đáo.
	Sau đó, bạn sẽ di chuyển đến Châu Đốc, nơi bạn sẽ khám phá chùa Sam và đền Bà Chúa Xứ Núi Sam. Hai địa điểm này mang đến không chỉ kiến trúc độc đáo mà còn phong cảnh tuyệt đẹp. Bạn cũng sẽcó cơ hội tắm biển và thư giãn tại Khu du lịch biển Tây Đô, nơi có không gian biển xanh mát.
	Trên đường trở về Cần Thơ, bạn sẽ ghé thăm Chợ nổi Châu Đốc để khám phá và mua sắm các loại hàng hóa địa phương, đặc biệt là những món thủ công mỹ nghệ độc đáo. Bên cạnh đó, bạn cũng sẽ tham quan rừng tràm Trà Sư, một khu rừng tràm rừng ngập nổi tiếng với động vật hoang dã và cảnh quan thiên nhiên đẹp mắt.
	Chuyến đi kết thúc khi bạn trở về Cần Thơ. Chuyến đi từ Cần Thơ đến Châu Đốc sẽ mang đến cho bạn những trải nghiệm tuyệt vời về văn hóa, thiên nhiên và cảnh quan của miền Tây Nam Bộ Việt Nam.'),
	('Miền Nam', 1, 'Phú Quốc', '2.jpg', 4190000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: Khám phá bãi biển và thưởng thức ẩm thực địa phương - Ngày 2: Khám phá vườn quốc gia và làng chài - Ngày 3: Thư giãn và tận hưởng bãi biển', 'Chuyến đi du lịch đến Phú Quốc là một trải nghiệm tuyệt vời để khám phá vẻ đẹp tự nhiên và văn hóa độc đáo của hòn đảo này. Phú Quốc nổi tiếng với các bãi biển tuyệt đẹp, cát trắng mịn và nước biển trong xanh. Du khách có thể thả mình trong làn nước biển mát lạnh, tắm nắng trên bãi cát và tham gia các hoạt động thể thao nước như lướt ván buồm, lặn biển hoặc câu cá.
Bên cạnh việc khám phá bãi biển, bạn cũng có thể tham quan các điểm du lịch khác trên đảo. Vườn quốc gia Phú Quốc là một điểm đến hấp dẫn cho việc khám phá thiên nhiên hoang dã, với rừng nhiệt đới, thác nước và động vật đa dạng. Bạn có thể dạo bước qua rừng, ngắm cảnh tuyệt đẹp và tận hưởng không gian yên tĩnh của vườn quốc gia.
Ngoài ra, bạn có thể tham quan các làng chài trên đảo để tìm hiểu về cuộc sống của người dân địa phương và thưởng thức các món ăn đặc sản hải sản tươi ngon. Nếu bạn quan tâm đến văn hóa địa phương, hãy ghé thăm thị trấn Dương Đông để khám phá chợ đêm đầy sầm uất, nơi bạn có thể mua sắm các sản phẩm đặc sản và thưởng thức ẩm thực đường phố.
Trên đảo, còn có nhiều hoạt động giải trí khác như tham quan các trang trại nuôi dừa và sản xuất nước mắm truyền thống, tham gia tour câu cá hoặc tham quan các khu vườn trái cây.
Dù bạn muốn thư giãn trên bãi biển, khám phá thiên nhiên hoang dã hay tìm hiểu văn hóa địa phương, chuyến đi đến Phú Quốc sẽ mang đến cho bạn những trải nghiệm đáng nhớ và thú vị.'),
	('Miền Nam', 1, 'Cần Thơ - Cồn Sơn - Cồn Ấu', '3.jpg', 5390000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: Cần Thơ - Khám phá thành phố và thưởng thức ẩm thực địa phương - Ngày 2: Cần Thơ - Cồn Sơn - Ngày 3: Cần Thơ - Cồn Ấu - Ngày 4: Cần Thơ - Tham quan cuối cùng và kết thúc chuyến đi', 'Tour Cần Thơ - Cồn Sơn - Cồn Ấu là một hành trình thú vị để khám phá vẻ đẹp thiên nhiên và văn hóa đặc trưng của miền Tây Nam Bộ Việt Nam. Trong tour này, bạn sẽ được tận hưởng không khí yên bình của sông nước, trải nghiệm cuộc sống đồng bằng và khám phá các đảo nhỏ.
Chuyến đi bắt đầu tại thành phố Cần Thơ, một trong những thành phố lớn nhất miền Tây Nam Bộ. Bạn có thể khám phá khu phố cổ Cần Thơ, bao gồm Bến Ninh Kiều và chợ nổi Cái Răng, nơi bạn có thể tham quan và mua sắm các sản phẩm địa phương như hoa quả, rau củ, thủ công mỹ nghệ và đặc sản.
Tiếp theo, bạn sẽ đi đến Cồn Sơn, một hòn đảo nhỏ nằm trên sông Hậu. Tại đây, bạn có thể tham gia các hoạt động như đi bộ, đi xe đạp hoặc đi thuyền để khám phá cánh đồng lúa, vườn trái cây và trò chuyện với người dân địa phương. Bạn cũng có thể thưởng thức ẩm thực địa phương tại một nhà hàng trên Cồn Sơn.
Sau đó, bạn sẽ tiếp tục chuyến đi đến Cồn Ấu, một hòn đảo khác trên sông Hậu. Tại đây, bạn có thể tham quan các làng nghề truyền thống như làng chài, làng nón và làng thủ công mỹ nghệ. Bạn sẽ được tìm hiểu quy trình sản xuất và tham gia vào các hoạt động như câu cá, đi thuyền kayak hoặc tham gia các trò chơi dân gian.
Trong suốt chuyến đi, bạn sẽ được tận hưởng không gian yên bình, ngắm cảnh sông nước và thưởng thức ẩm thực đặc sản của khu vực. Bạn cũng có cơ hội giao lưu với người dân địa phương, tìm hiểu văn hóa và truyền thống của miền Tây Nam Bộ Việt Nam.
Tour Cần Thơ - Cồn Sơn - Cồn Ấu sẽ mang đến cho bạn những trải nghiệm đáng nhớ và tạo ra những kỷ niệm đáng giá trong hành trình khám phá miền Tây Nam Bộ Việt Nam.'),
	('Miền Nam', 1, 'Mỹ Tho - Bến Tre', '4.jpg', 2890000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: Rời khỏi thành phố Hồ Chí Minh và đi đến Mỹ Tho - Ngày 2: Tham quan và trở về TP.Hồ Chí Minh', 'Mỹ Tho và Bến Tre là hai điểm đến nổi tiếng ở miền Nam Việt Nam, nằm trong vùng đồng bằng sông nước. Cả hai địa điểm đều có những cảnh quan tuyệt đẹp, văn hóa đa dạng và ẩm thực đặc trưng.
Mỹ Tho là thành phố lớn nhất và là cửa ngõ chính vào vùng Đồng Bằng Sông Cửu Long. Thành phố này có vị trí thuận lợi, nằm ven sông Tiền, một nhánh của sông Mekong. Mỹ Tho nổi tiếng với những cánh đồng xanh mướt, những con kênh nước chảy rất đẹp và những ngôi chùa cổ xưa. Du khách có thể đi thuyền trên sông Mỹ Tho để khám phá các làng nghề truyền thống như làng chèo, làng gốm sứ, làng bánh tẻ và làng mứt trái cây. Ngoài ra, bạn cũng có thể tham quan các điểm du lịch như cầu Rạch Miễu, quảng trường Ba Láng và chùa Vĩnh Tràng.
Bến Tre là một tỉnh lân cận của Mỹ Tho, nằm ở phía đông của sông Tiền. Tỉnh này nổi tiếng với những cánh đồng dừa xanh mướt và hệ thống kênh rạch phong phú. Bến Tre được gọi là "xứ sở dừa" của Việt Nam. Du khách có thể tham quan vườn cây trái và trải nghiệm hái trái cây tươi ngon. Tham gia tour thuyền trên sông Bến Tre, bạn sẽ được chiêm ngưỡng cảnh quan vùng đồng bằng sông nước tuyệt đẹp, đi qua các kênh rừng trúc và ngôi nhà cổ. Ngoài ra, bạn cũng có thể tham quan các ngôi đền và chùa nổi tiếng như chùa Từ Tôn, ngôi đền Phú Hữu và đền Cao Văn Lầu.
Cả Mỹ Tho và Bến Tre đều có ẩm thực phong phú và đặc trưng miền Nam. Bạn có thể thưởng thức các món ăn địa phương như cá lóc kho tộ, lẩu cá linh, bánh xèo, bánh tét, và các món chè trái cây tươi ngon.
Mỹ Tho và Bến Tre mang đến cho du khách một trải nghiệm đầy thú vị về vẻ đẹp thiên nhiên, văn hóa và ẩm thực miền Nam Việt Nam.'),
	('Miền Nam', 1, 'Củ Chi - Địa đạo', '5.jpg', 7990000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: Bạn bắt đầu từ thành phố Hồ Chí Minh và di chuyển đến Củ Chi - Ngày 2: Trở về thành phố Hồ Chí Minh và kết thúc chuyến đi.', 'Tour Củ Chi - Địa đạo Củ Chi 2 ngày là một chuyến hành trình để khám phá và tìm hiểu về Di sản Thế giới UNESCO - hệ thống địa đạo Củ Chi, nằm cách thành phố Hồ Chí Minh khoảng 70 km về phía tây.
Trong tour này, bạn sẽ có cơ hội khám phá một phần lịch sử quan trọng của Việt Nam và trải nghiệm cuộc sống trong địa đạo Củ Chi. Bạn sẽ được hướng dẫn bởi những người địa phương am hiểu về khu vực này và nghe các câu chuyện thú vị về cuộc sống và chiến đấu của người dân Củ Chi trong thời kỳ chiến tranh.
Trong ngày đầu tiên, bạn sẽ tham quan Khu du lịch Lịch sử Địa đạo Củ Chi. Bạn sẽ được dạo quanh trong các hầm địa đạo, khám phá các căn cứ, hầm vũ khí và nghe câu chuyện về sự khắc nghiệt và thông minh trong việc sử dụng địa đạo trong chiến tranh.
Ngày thứ hai, bạn có thể tham gia vào các hoạt động khác nhau như bắn súng thực tế tại bắn tỉa Củ Chi hoặc trải nghiệm cuộc sống nông thôn tại một số nông trại gần Củ Chi. Điều này sẽ cho bạn cái nhìn sâu hơn về cuộc sống và công việc hàng ngày của người dân nông thôn.
Tour cũng bao gồm thưởng thức các món ăn địa phương ngon lành, cho phép bạn khám phá ẩm thực đặc trưng của khu vực.
Sau hai ngày trải nghiệm, bạn sẽ trở lại thành phố Hồ Chí Minh với những kỷ niệm và kiến thức mới về lịch sử và văn hóa đặc biệt của Củ Chi'),
	('Miền Nam', 1, 'Tây Ninh - Núi Bà Đen', '6.jpg', 5390000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1:Rời khỏi thành phố Hồ Chí Minh và đi đến Tây Ninh - Ngày 2:Rời khỏi khách sạn và đi đến Núi Bà Đen - Ngày 3:Tham quan Thị Trấn Củ Chi và khám phá hệ thống địa đạo Củ Chi', 'Chuyến đi Tây Ninh - Núi Bà Đen là một hành trình thú vị để khám phá văn hóa, tôn giáo và thiên nhiên của khu vực miền Nam Việt Nam.
Điểm đến đầu tiên là Tây Ninh, nơi có Đền Cao Đài - trụ sở chính của Đạo Cao Đài, một tôn giáo độc đáo kết hợp yếu tố từ các tôn giáo khác nhau. Du khách có thể tham quan và tìm hiểu về tôn giáo này thông qua lễ nghi và kiến trúc đặc trưng của đền.'),
	('Miền Nam', 1, 'Đồng Tháp - Mộc Hóa', '7.jpg', 6790000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: Đến Đồng Tháp - Ngày 2: Khám phá Đồng Tháp - Ngày 3: Đi Mộc Hóa - Ngày 4: Trở về thành phố Hồ Chí Minh', 'Tour Đồng Tháp - Mộc Hóa là chuyến hành trình để khám phá hai điểm đến hấp dẫn ở miền Nam Việt Nam.'),
	('Miền Nam', 1, 'Long An - Bến Lức', '8.jpg', 2790000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: Rời khỏi thành phố Hồ Chí Minh và đi đến Long An. - Ngày 2: Ăn sáng tại khách sạn và chuẩn bị rời khỏi Long An.', 'Chuyến đi Long An - Bến Lức là một hành trình để khám phá vẻ đẹp tự nhiên, văn hóa và ẩm thực của vùng Đồng Bằng Sông Cửu Long.'),
	('Miền Nam', 1, 'Tiền Giang - Cai Lậy', '9.jpg', 3590000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: Đến Tiền Giang - Ngày 2: Khám phá Cái Lậy - Ngày 3: Trở về thành phố Hồ Chí Minh', 'Tour Tiền Giang - Cái Lậy là một hành trình khám phá vùng đồng bằng sông nước phong cảnh tại miền Nam Việt Nam. '),
	('Miền Nam', 1, 'Bình Dương - Suối Tiên', '10.jpg', 4490000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: Buổi sáng: Rời khỏi thành phố Hồ Chí Minh và đến Bình Dương - Ngày 2: Buổi sáng: Tham quan Khu du lịch Suối Tiên ở thành phố Hồ Chí Minh - Ngày 3: Buổi sáng: Tham quan Khu du lịch Đại Nam Văn Hiến - Ngày 4: Trở về thành phố Hồ Chí Minh', 'Chuyến đi Bình Dương - Suối Tiên là một hành trình thú vị để khám phá vùng đất Bình Dương và tận hưởng các hoạt động giải trí tại khu du lịch Suối Tiên.'),
	('Miền Nam', 1, 'Bình Phước - Thác Ma Thiên Lân', '11.jpg', 2529000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Đồng Nai - Khu du lịch Bửu Long', '12.jpg', 7082000, 'hằng ngày', '5 ngày 4 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Vũng Tàu - Hồ Tràm', '13.jpg', 4484000, 'hằng ngày', '3 ngày 2 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Tp Hồ Chí Minh - Vũng Tàu', '14.jpg', 5967000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Tp Hồ Chí Minh - Côn Đảo', '15.jpg', 2853000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Đồng Nai - Nam Cát Tiên', '16.jpg', 7978000, 'hằng ngày', '5 ngày 4 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Núi Bà Đen - Camping', '17.jpg', 5043000, 'hằng ngày', '3 ngày 2 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Đồng Tháp - Đồng sen', '18.jpg', 6716000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'An Giang - Miệt vườn', '19.jpg', 2100000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Tiền Giang - Tân Phong', '20.jpg', 3520000, 'hằng ngày', '3 ngày 2 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Vĩnh Long - Sa Đéc', '21.jpg', 4480000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Đồng Tháp - Trà Sư', '22.jpg', 2520000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Bạc Liêu', '23.jpg', 7070000, 'hằng ngày', '5 ngày 4 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Cà Mau - Đất Mũi', '24.webp', 3990000, 'hằng ngày', '3 ngày 2 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Sóc Trăng - Chùa Dơi', '25.jpg', 4500000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Bến Tre - Cồn Phụng', '26.webp', 5200000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Trà Vinh - Ao Bà Om', '27.jpg', 3700000, 'hằng ngày', '5 ngày 4 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Hậu Giang - Chợ nổi', '28.jpg', 4100000, 'hằng ngày', '3 ngày 2 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Cần Thơ - Mỹ Khánh', '29.jpg', 4800000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Kiên Giang - Đảo Nam Du', '30.jpg', 3900000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Phú Quốc - Vinpearl Land', '31.jpg', 3800000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Hà Tiên - Mũi Nai', '32.jpg', 4200000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Đồng Tháp - Gáo Giồng', '33.jpg', 4700000, 'hằng ngày', '5 ngày 4 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Long An - Cồn Long Mỹ', '34.jpg', 3900000, 'hằng ngày', '3 ngày 2 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Bến Tre - Chợ nổi Cái Bè', '35.jpg', 4600000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Tiền Giang - Cù lao Thới Sơn', '36.jpg', 5000000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Trà Vinh - Chùa Âng', '37.jpg', 4300000, 'hằng ngày', '5 ngày 4 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Đà Lạt - Cần Thơ', '38.jpg', 4100000, 'hằng ngày', '3 ngày 2 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Nha Trang - Cần Thơ', '39.jpg', 4800000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Huế - Cần Thơ', '40.webp', 3900000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Đà Nẵng - Tiền Giang', '41.jpg', 4000000, 'hằng ngày', '3 ngày 2 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Cần Thơ - Mỹ Khánh', '42.jpg', 3800000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Nha Trang - Cần Thơ', '43.jpg', 4300000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Huế - Cần Thơ', '44.jpg', 3900000, 'hằng ngày', '5 ngày 4 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Bình Dương - Cần Thơ', '45.jpg', 4500000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Đồng Nai - Cần Thơ', '46.jpg', 5200000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Long An - Cần Thơ', '47.jpg', 3700000, 'hằng ngày', '5 ngày 4 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Tiền Giang - Cần Thơ', '48.jpg', 4100000, 'hằng ngày', '3 ngày 2 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Đồng Tháp - Cần Thơ', '49.jpg', 4800000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Đồng Tháp - Cần Thơ', '50.jpg', 3900000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Kiên Giang - Cần Thơ', '51.jpg', 3800000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Bạc Liêu - Cần Thơ', '52.jpg', 4200000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Sóc Trăng - Cần Thơ', '53.jpg', 4700000, 'hằng ngày', '5 ngày 4 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Cà Mau - Cần Thơ', '54.jpg', 3900000, 'hằng ngày', '3 ngày 2 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Bến Tre - Cần Thơ', '55.webp', 4600000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Long An - Cần Thơ', '56.webp', 5000000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Tiền Giang - Cần Thơ', '57.jpg', 4300000, 'hằng ngày', '5 ngày 4 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Đồng Tháp - Cần Thơ', '58.jpg', 4100000, 'hằng ngày', '3 ngày 2 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'An Giang - Cần Thơ', '59.jpg', 4800000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Kiên Giang - Cần Thơ', '60.jpg', 3900000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Châu Đốc - Cần Thơ', '61.jpg', 4000000, 'hằng ngày', '3 ngày 2 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Mỹ Tho - Cần Thơ', '62.jpg', 3800000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Bến Tre - Cần Thơ', '63.jpg', 4300000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Kiên Giang - Cần Thơ', '64.jpg', 3900000, 'hằng ngày', '5 ngày 4 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Châu Đốc - Cần Thơ', '65.jpg', 4198000, 'hằng ngày', '3 ngày 2 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'An Giang - Cần Thơ', '66.jpg', 2871000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Long An - Cần Thơ', '67.webp', 7974000, 'hằng ngày', '5 ngày 4 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Tiền Giang - Cần Thơ', '68.jpg', 5039000, 'hằng ngày', '3 ngày 2 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Bến Tre - Cần Thơ', '69.jpg', 6702000, 'hằng ngày', '4 ngày 3 đêm', 'Tour', 'Description'),
	('Miền Nam', 1, 'Cần Thơ - Chợ nổi Cái Răng', '70.jpg', 2076000, 'hằng ngày', '2 ngày 1 đêm', 'Tour', 'Description');
-- 71-140



-- 141 -->210----------------------------------->



-- Tạo dữ liệu cho bảng service_tours
INSERT INTO `service_tours` (`name`, `price`, `description`)
VALUES
	('Gói Vip', 200000, 'Trải nghiệm tour du lịch vip với các tiện ích (đưa đón tận nhà, chụp ảnh, phòng theo yêu cầu, thuê quần áo...'),
	('Vận Chuyển', 200000, 'Xe đưa đón tới tận nhà'),
	('Thợ chụp ảnh', 1200000, 'Thuê một nhiếp ảnh gia chuyên nghiệp để chụp ảnh cho bạn trong các địa điểm du lịch đẹp.'),
	('Thuê trang phục', 500000, 'Thuê trang phục: Cho phép bạn thuê trang phục đặc biệt để mặc trong suốt chuyến đi, ví dụ như trang phục truyền thống, trang phục cổ điển, trang phục của văn hóa địa phương và nhiều hơn nữa.'),
	('Phòng riêng đơn', 500000, 'Cung cấp phòng riêng cho du khách đơn lẻ trong suốt chuyến đi'),
    ('Bảo hiểm du lịch', 100000, 'Bảo hiểm y tế và bảo hiểm hành lý'),
    ('Dịch vụ mát-xa', 200000, 'Dịch vụ mát-xa thư giãn sau một ngày tham quan'),
    ('Giải trí tối', 300000, 'Tham gia các hoạt động giải trí và vui chơi vào buổi tối'),
    ('Trợ lý du lịch', 200000, 'Cung cấp trợ lý du lịch chuyên nghiệp trong suốt chuyến đi'),
    ('Dịch vụ hướng dẫn ngôn ngữ', 150000, 'Dịch vụ hướng dẫn ngôn ngữ cho du khách nước ngoài'),
    ('Dịch vụ spa', 400000, 'Dịch vụ spa và chăm sóc sức khỏe'),
    ('Dịch vụ điện thoại di động', 100000, 'Cung cấp dịch vụ điện thoại di động trong suốt chuyến đi'),
    ('Dịch vụ thuê xe', 350000, 'Cho thuê xe tự lái hoặc có tài xế'),
    ('Giặt quần áo', 200000, 'Cung cấp dịch vụ giặt đồ'),
    ('Làm đẹp', 200000, 'Cung cấp dịch vụ cá nhân làm đẹp');
-- Tạo dữ liệu cho bảng valies
INSERT INTO `valies` (`userId`, `tourId`, `numChildren`, `numAdult`)
VALUES
    (1, 1, 1, 1),
    (1, 3, 1, 1),
    (1, 5, 1, 3),
    (1, 12, 1, 2),
    (1, 5, 1, 1),
    (2, 2, 1, 4);


-- Tạo dữ liệu cho bảng
INSERT INTO `options` (`departDate`, `serviceId`, `valiId`)
VALUES
    ('2023-03-01', 1, 1),
    ('2023-04-01', 2, 2);


-- Tạo dữ liệu cho bảng
INSERT INTO `bills` (`valiId`, `paymentMethod`, `totalPrice`, `status`)
VALUES
    (1, 'Banking', 1500000, 'Paid'),
    (2, 'Banking', 2000000, 'Pending');
