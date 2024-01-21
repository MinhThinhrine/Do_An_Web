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
    ('Miền Nam', 1, 'Bình Phước - Thác Ma Thiên Lân', '11.jpg', 2529000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Bình Phước là một tỉnh ở miền Nam Việt Nam, nổi tiếng với cảnh quan đồng bằng sông nước và rừng núi. Thác Ma Thiên Lân là một điểm đến đẹp và hoang sơ nằm ở Bình Phước, với thác nước hùng vĩ và cảnh quan thiên nhiên tuyệt đẹp. Du khách có thể tận hưởng viễn cảnh, leo núi và tắm mát dưới thác, mang lại trải nghiệm đáng nhớ.'),
    ('Miền Nam', 1, 'Đồng Nai - Khu du lịch Bửu Long', '12.jpg', 7082000, 'hằng ngày', '3 ngày 4 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Đồng Nai là một tỉnh nằm ở miền Nam Việt Nam, nổi tiếng với cảnh quan thiên nhiên đa dạng. Khu du lịch Bửu Long là một điểm đến phổ biến ở Đồng Nai, với hồ nước trong xanh và cảnh quan tuyệt đẹp. Du khách có thể tham quan các ngôi đền, thưởng thức không gian yên bình, và tận hưởng hoạt động như đi thuyền trên hồ và tham gia câu cá, mang đến những trải nghiệm thú vị.'),
    ('Miền Nam', 1, 'Vũng Tàu - Hồ Tràm', '13.jpg', 4484000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Vũng Tàu là một thành phố ven biển nằm ở miền Nam Việt Nam, được biết đến với bãi biển đẹp và không khí biển trong lành. Hồ Tràm là một điểm đến phổ biến tại Vũng Tàu, với bãi biển dài và cát mịn. Du khách có thể thư giãn trên bãi biển, tắm biển và tham gia vào các hoạt động như lướt sóng, chèo thuyền kayak, mang lại những trải nghiệm tuyệt vời.'),
    ('Miền Nam', 1, 'Tp Hồ Chí Minh - Vũng Tàu', '14.jpg', 5967000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Vũng Tàu là một thành phố ven biển nằm ở miền Nam Việt Nam, được biết đến với bãi biển đẹp và không khí biển trong lành.'),
    ('Miền Nam', 1, 'Tp Hồ Chí Minh - Côn Đảo', '15.jpg', 2853000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Côn Đảo là một quần đảo nằm ở miền Nam Việt Nam, được biết đến với vẻ đẹp hoang sơ và biển xanh tuyệt đẹp. Nơi đây có những bãi biển trắng mịn, nước biển trong xanh và rừng nguyên sinh tươi tốt. Du khách có thể tham gia vào các hoạt động như tắm biển, lặn biển để khám phá động san hô và tham quan các di tích lịch sử như Nhà tù Côn Đảo và Bảo tàng Côn Đảo. Côn Đảo cũng nổi tiếng với ngôi chùa Quan Âm cao nhất Việt Nam, nơi du khách có thể tìm hiểu về đạo Phật và tận hưởng không gian yên bình.'),
    ('Miền Nam', 1, 'Đồng Nai - Nam Cát Tiên', '16.jpg', 7978000, 'hằng ngày', '3 ngày 4 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Đồng Nai là một tỉnh nằm ở miền Nam Việt Nam, có cảnh quan thiên nhiên phong phú. Khu du lịch Nam Cát Tiên là một điểm đến nổi tiếng ở Đồng Nai, với khu rừng nguyên sinh hoang dã và đa dạng hệ động thực vật. Du khách có thể tham gia vào các hoạt động như đi bộ, câu cá và tham quan các trạm nuôi và bảo tồn động vật, mang lại trải nghiệm gần gũi với thiên nhiên và con người.'),
    ('Miền Nam', 1, 'Núi Bà Đen - Camping', '17.jpg', 5043000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Núi Bà Đen là một ngọn núi nằm ở tỉnh Tây Ninh, miền Nam Việt Nam, có giá trị tâm linh và cảnh quan thiên nhiên đẹp. Núi Bà Đen thu hút nhiều du khách đến tham quan và leo núi để chiêm ngưỡng toàn cảnh từ đỉnh. Ngoài ra, khu vực này cũng là điểm đến cho hoạt động cắm trại (camping). Du khách có thể thưởng thức không gian thiên nhiên yên bình, hòa mình vào môi trường núi rừng và tận hưởng trải nghiệm trại ngoại độc đáo.'),
    ('Miền Nam', 1, 'Đồng Tháp - Đồng sen', '18.jpg', 6716000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Đồng Tháp là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, nổi tiếng với đồng bằng sông nước và vùng đất phát triển nông nghiệp. Đồng sen là một đặc sản địa phương nổi tiếng của Đồng Tháp, với những cánh đồng sen trải dài và hoa sen nở rực rỡ. Du khách có thể đi thuyền trên đầm sen, chiêm ngưỡng cảnh quan tuyệt đẹp và tận hưởng không gian yên bình. Đồng sen mang đến một trải nghiệm gần gũi với thiên nhiên và văn hóa đặc trưng của vùng đồng bằng sông nước.'),
    ('Miền Nam', 1, 'An Giang - Miệt vườn', '19.jpg', 2100000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'An Giang là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, nổi tiếng với cảnh quan hữu tình và nền văn hóa đa dạng. Miệt vườn là một điểm đến đặc biệt tại An Giang, là hệ thống các vườn cây trái và ruộng lúa xen kẽ với nhau, tạo nên một cảnh quan độc đáo. Du khách có thể tham quan, tắm mình trong không gian xanh mát và tận hưởng trải nghiệm văn hóa nông thôn. Miệt vườn mang đến không gian bình yên và gắn kết với cuộc sống nông dân và thiên nhiên tại An Giang.'),
    ('Miền Nam', 1, 'Tiền Giang - Tân Phong', '20.jpg', 3520000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Tour Tiền Giang là một hành trình khám phá vùng đồng bằng sông nước phong cảnh tại miền Nam Việt Nam. '),
    ('Miền Nam', 1, 'Vĩnh Long - Sa Đéc', '21.jpg', 4480000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Vĩnh Long là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, nổi tiếng với vùng đồng bằng sông nước và trồng cây ăn quả. Sa Đéc là một thành phố nằm tại Vĩnh Long, được biết đến với vườn hoa và nền văn hóa đậm đà. Du khách có thể tham quan các vườn hoa đẹp như vườn hoa Tân Quy Đông, tham quan các nhà vườn và thưởng thức những hoa đặc sản. Sa Đéc mang đến trải nghiệm về vẻ đẹp thiên nhiên và văn hóa độc đáo của miền đồng bằng sông nước.'),
    ('Miền Nam', 1, 'Đồng Tháp - Trà Sư', '22.jpg', 2520000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Đồng Tháp là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, được biết đến với cánh đồng lúa và mạch nước rừng tràm. Trà Sư là một khu rừng tràm rừng nguyên sinh nằm tại Đồng Tháp, với hệ sinh thái đa dạng và cảnh quan thiên nhiên tuyệt đẹp. Du khách có thể tham quan bằng thuyền, ngắm chim, và khám phá các con đường qua rừng tràm. Trà Sư mang đến cho du khách một trải nghiệm gần gũi với thiên nhiên hoang sơ và văn hóa đặc trưng của miền đồng bằng sông nước.'),
    ('Miền Nam', 1, 'Bạc Liêu', '23.jpg', 7070000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Bạc Liêu là một tỉnh nằm ở miền Nam Việt Nam, có bờ biển dài và nền văn hóa đa dạng. Tỉnh này nổi tiếng với những rừng cồn, vùng đất mặn và đặc sản hấp dẫn. Du khách có thể tham quan các khu vực du lịch như hồ Bạc Liêu, chùa Long Điền và tham gia vào các hoạt động như câu cá và thưởng thức ẩm thực đặc sản. Bạc Liêu mang đến cho du khách một trải nghiệm về vẻ đẹp tự nhiên và nét văn hóa độc đáo của vùng đồng bằng sông nước.'),
    ('Miền Nam', 1, 'Cà Mau - Đất Mũi', '24.webp', 3990000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cà Mau là một tỉnh nằm ở miền Nam Việt Nam, là địa điểm cuối cùng của đất liền và được gọi là "Đất Mũi". Tỉnh này nổi tiếng với hệ sinh thái đa dạng và rừng ngập mặn, là nơi sinh sống của nhiều loài động vật và thực vật quý hiếm. Du khách có thể thăm Công viên quốc gia U Minh Hạ, tận hưởng cảnh quan thiên nhiên hoang sơ và trải nghiệm các hoạt động như đi thuyền, câu cá. Cà Mau mang đến cho du khách một trải nghiệm về sự hòa quyện giữa thiên nhiên và cuộc sống của người dân địa phương.'),
    ('Miền Nam', 1, 'Sóc Trăng - Chùa Dơi', '25.jpg', 4500000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Sóc Trăng là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, nổi tiếng với văn hóa đa dạng và đền chùa đặc trưng. Chùa Dơi là một ngôi chùa nổi tiếng tại Sóc Trăng, có kiến trúc độc đáo và là nơi linh thiêng của người dân địa phương. Chùa Dơi thu hút du khách bởi kiến trúc đặc biệt và điêu khắc tinh xảo. Du khách có thể thăm quan, tìm hiểu về đức tin Phật giáo và tham gia vào các nghi lễ tại chùa. Chùa Dơi mang đến cho du khách một trải nghiệm văn hóa và tâm linh sâu sắc trong hành trình khám phá Sóc Trăng.'),
    ('Miền Nam', 1, 'Bến Tre - Cồn Phụng', '26.webp', 5200000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Bến Tre là một tỉnh nằm ở miền Nam Việt Nam, nổi tiếng với vùng đồng bằng sông nước và nền văn hóa phong phú. Cồn Phụng là một hòn đảo xinh đẹp nằm tại Bến Tre, được biết đến với những ngôi nhà rừng trên sông và đặc sản nổi tiếng như dừa. Du khách có thể tham quan, thưởng thức trái cây tươi ngon, và tận hưởng không gian yên bình của đảo. Cồn Phụng mang đến cho du khách một trải nghiệm gần gũi với thiên nhiên, đời sống nông thôn và văn hóa đặc trưng của Bến Tre.'),
    ('Miền Nam', 1, 'Trà Vinh - Ao Bà Om', '27.jpg', 3700000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Trà Vinh là một tỉnh nằm ở miền Nam Việt Nam, nổi tiếng với vùng đồng bằng sông nước và nền văn hóa đa dạng. Ao Bà Om là một hồ nằm tại Trà Vinh, có cảnh quan hữu tình và phong cảnh thiên nhiên tươi đẹp. Du khách có thể tham quan, thư giãn bên bờ hồ, và tận hưởng không gian yên bình. Ao Bà Om mang đến cho du khách một trải nghiệm gần gũi với thiên nhiên và cảm nhận vẻ đẹp trong sự hài hòa giữa nước, cây cỏ và trời xanh của Trà Vinh.'),
    ('Miền Nam', 1, 'Hậu Giang - Chợ nổi', '28.jpg', 4100000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Hậu Giang là một tỉnh nằm ở miền Nam Việt Nam, nổi tiếng với cánh đồng lúa và hệ sinh thái sông nước. Chợ nổi là một điểm đặc biệt tại Hậu Giang, là nơi các thương lái và người dân địa phương trao đổi và buôn bán hàng hóa trên các thuyền nhỏ. Du khách có thể tham quan, mua sắm và thưởng thức ẩm thực đặc sản tại chợ nổi. Chợ nổi mang đến cho du khách một trải nghiệm độc đáo về văn hóa thương mại và cuộc sống sông nước tại Hậu Giang.'),
    ('Miền Nam', 1, 'Cần Thơ - Mỹ Khánh', '29.jpg', 4800000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Kiên Giang - Đảo Nam Du', '30.jpg', 3900000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Kiên Giang là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, được biết đến với quần đảo Phú Quốc và cảnh quan thiên nhiên đa dạng. Đảo Nam Du là một trong những đảo đẹp của Kiên Giang, có bãi biển trắng mịn và nước biển trong xanh. Du khách có thể tham quan, tắm biển và tham gia vào các hoạt động như lặn biển và câu cá. Đảo Nam Du mang đến cho du khách một trải nghiệm nghỉ dưỡng tuyệt vời và khám phá vẻ đẹp tự nhiên của biển đảo Kiên Giang.'),
    ('Miền Nam', 1, 'Phú Quốc - Vinpearl Land', '31.jpg', 3800000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Phú Quốc là một hòn đảo nằm ở tỉnh Kiên Giang, miền Nam Việt Nam, được biết đến với bãi biển tuyệt đẹp và thiên nhiên hoang sơ. Vinpearl Land là một khu vui chơi giải trí nổi tiếng tại Phú Quốc, với công viên nước, khu vui chơi, khách sạn và trung tâm mua sắm. Du khách có thể tham gia các trò chơi nước, trượt toboggan, tham quan thế giới dưới nước và tận hưởng các dịch vụ giải trí đa dạng. Vinpearl Land mang đến trải nghiệm vui vẻ và thú vị cho du khách khi đến Phú Quốc.'),
    ('Miền Nam', 1, 'Hà Tiên - Mũi Nai', '32.jpg', 4200000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Hà Tiên là một thành phố cảng nằm ở tỉnh Kiên Giang, miền Nam Việt Nam. Nằm gần biên giới với Campuchia, Hà Tiên có vị trí địa lý đặc biệt. Mũi Nai là một điểm đến hấp dẫn tại Hà Tiên, với bãi biển tuyệt đẹp và cảnh quan hoang sơ. Du khách có thể tắm biển, tắm nắng và tham gia vào các hoạt động như lặn biển và thưởng thức hải sản tươi ngon. Mũi Nai mang đến không gian thư giãn, tận hưởng biển xanh và nét văn hóa khác biệt của vùng biên giới.'),
    ('Miền Nam', 1, 'Đồng Tháp - Gáo Giồng', '33.jpg', 4700000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Đồng Tháp là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, nổi tiếng với cánh đồng lúa và mạch nước rừng tràm. Gáo Giồng là một điểm đến nổi tiếng tại Đồng Tháp, là một khu du lịch sinh thái với cảnh quan thiên nhiên đa dạng. Du khách có thể tham quan các vườn cây trái, đi thuyền trên rừng tràm, và tận hưởng không gian yên bình. Gáo Giồng mang đến trải nghiệm gần gũi với đời sống ven sông và thiên nhiên đặc biệt của miền đồng bằng sông nước.'),
    ('Miền Nam', 1, 'Long An - Cồn Long Mỹ', '34.jpg', 3900000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Bến Tre là một tỉnh nằm ở miền Nam Việt Nam, nổi tiếng với vùng đồng bằng sông nước và vườn cây dừa. Chợ nổi Cái Bè là một điểm đến phổ biến tại Bến Tre, với sự sôi động và tính đặc trưng của chợ nổi. Du khách có thể tìm hiểu về đời sống ven sông của người dân địa phương, mua sắm các sản phẩm nông sản, trái cây tươi ngon và thưởng thức các món ăn đặc sản đường phố độc đáo. Chợ nổi Cái Bè mang đến trải nghiệm văn hóa và thương mại đặc biệt trong vùng đồng bằng sông nước.'),
    ('Miền Nam', 1, 'Bến Tre - Chợ nổi Cái Bè', '35.jpg', 4600000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Bến Tre là một tỉnh nằm ở miền Nam Việt Nam, nổi tiếng với vùng đồng bằng sông nước và vườn cây dừa. Chợ nổi Cái Bè là một điểm đến phổ biến tại Bến Tre, với sự sôi động và tính đặc trưng của chợ nổi. Du khách có thể tìm hiểu về đời sống ven sông của người dân địa phương, mua sắm các sản phẩm nông sản, trái cây tươi ngon và thưởng thức các món ăn đặc sản đường phố độc đáo. Chợ nổi Cái Bè mang đến trải nghiệm văn hóa và thương mại đặc biệt trong vùng đồng bằng sông nước.'),
    ('Miền Nam', 1, 'Tiền Giang - Cù lao Thới Sơn', '36.jpg', 5000000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Tour Tiền Giang là một hành trình khám phá vùng đồng bằng sông nước phong cảnh tại miền Nam Việt Nam. '),
    ('Miền Nam', 1, 'Trà Vinh - Chùa Âng', '37.jpg', 4300000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Trà Vinh là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, có nền văn hóa đa dạng và cảnh quan thiên nhiên đẹp. Chùa Âng là một ngôi chùa nổi tiếng tại Trà Vinh, được xây dựng theo kiến trúc Khmer đặc trưng. Chùa Âng có kiến trúc độc đáo, điêu khắc tinh xảo và là nơi tín đồ Phật giáo đến tham quan và cầu nguyện. Du khách có thể tìm hiểu về đạo Phật, ngắm nhìn kiến trúc độc đáo và tìm kiếm sự tĩnh lặng tại chùa Âng.'),
    ('Miền Nam', 1, 'Đà Lạt - Cần Thơ', '38.jpg', 4100000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Nha Trang - Cần Thơ', '39.jpg', 4800000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Huế - Cần Thơ', '40.webp', 3900000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Đà Nẵng - Tiền Giang', '41.jpg', 4000000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Đà Nẵng là một thành phố nằm ở miền Trung Việt Nam, với bãi biển đẹp và kiến trúc độc đáo. Thành phố này có nhiều điểm đến nổi tiếng như cầu Rồng, bán đảo Sơn Trà và bãi biển Mỹ Khê. Du khách có thể tham gia vào các hoạt động như tắm biển, lướt sóng và khám phá các di tích lịch sử như Ngũ Hành Sơn và di tích Chăm Pa. Tiền Giang là một tỉnh nằm ở miền Nam Việt Nam, nổi tiếng với vườn trái cây phong phú và đồng quê xanh mát. Du khách có thể tham quan các vườn cây trái, tham gia vào các hoạt động như hái trái cây và thưởng thức đặc sản địa phương như xoài Cao Lãnh và mít Tân Phước.'),
    ('Miền Nam', 1, 'Cần Thơ - Mỹ Khánh', '42.jpg', 3800000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Nha Trang - Cần Thơ', '43.jpg', 4300000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Huế - Cần Thơ', '44.jpg', 3900000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Bình Dương - Cần Thơ', '45.jpg', 4590000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Đồng Nai - Cần Thơ', '46.jpg', 5290000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Long An - Cần Thơ', '47.jpg', 3790000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Tiền Giang - Cần Thơ', '48.jpg', 4190000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Đồng Tháp - Cần Thơ', '49.jpg', 4890000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Đồng Tháp - Cần Thơ', '50.jpg', 3990000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Kiên Giang - Cần Thơ', '51.jpg', 3890000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Bạc Liêu - Cần Thơ', '52.jpg', 4290000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Sóc Trăng - Cần Thơ', '53.jpg', 4790000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Cà Mau - Cần Thơ', '54.jpg', 3990000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Bến Tre - Cần Thơ', '55.webp', 4690000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Long An - Cần Thơ', '56.webp', 5090000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Tiền Giang - Cần Thơ', '57.jpg', 4390000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Đồng Tháp - Cần Thơ', '58.jpg', 4190000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'An Giang - Cần Thơ', '59.jpg', 4890000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Kiên Giang - Cần Thơ', '60.jpg', 3990000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Châu Đốc - Cần Thơ', '61.jpg', 4090000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Mỹ Tho - Cần Thơ', '62.jpg', 3890000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Bến Tre - Cần Thơ', '63.jpg', 4390000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Kiên Giang - Cần Thơ', '64.jpg', 3990000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Châu Đốc - Cần Thơ', '65.jpg', 4190000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'An Giang - Cần Thơ', '66.jpg', 2890000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Long An - Cần Thơ', '67.webp', 7990000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Tiền Giang - Cần Thơ', '68.jpg', 5390000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Bến Tre - Cần Thơ', '69.jpg', 6790000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.'),
    ('Miền Nam', 1, 'Cần Thơ - Chợ nổi Cái Răng', '70.jpg', 2076000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Chợ Nổi Cái Răng là một chợ nổi nổi tiếng tại thành phố Cần Thơ, miền Tây Nam Bộ Việt Nam. Nằm trên sông Hậu, chợ Nổi Cái Răng là một điểm đến du lịch hấp dẫn với không gian sôi động và chất local.
Tại chợ Nổi Cái Răng, bạn sẽ được thấy các thuyền buôn đầy hàng hoá và sản phẩm đa dạng như rau củ quả, hải sản tươi ngon, hàng dệt may, và nhiều loại đặc sản địa phương khác. Du khách có thể mua sắm, thưởng thức những món ăn đường phố truyền thống, hoặc tham gia vào các hoạt động như đi thuyền ngắm cảnh và thăm quan khu vực xung quanh chợ.
Chợ Nổi Cái Răng là một điểm đến thu hút du khách bởi không chỉ là nơi mua sắm và trao đổi hàng hóa, mà còn là một cái nhìn sâu sắc vào cuộc sống và văn hóa dân gian của người dân miền Tây Nam Bộ.'),
-- 71-140
    ('Miền Trung', 1, 'Quảng Bình - Kẻ Gỗ', '71.png', 1990000, 'hằng ngày', '2 ngày 2 đêm', 'Ngày 1: Quảng Bình - Ngày 2: Kẻ Gỗ'
    ,'Quảng Bình và Kẻ Gỗ là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Đà Nẵng - Hội An', '72.png', 2990000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: Đà Nẵng - Ngày 2: Hội An - Ngày 3: Hội An và về lại Đà Nẵng'
    ,'Đà Nẵng và Hội An là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Đà Nẵng - Huế - Quảng Bình', '73.png', 2990000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: Đà Nẵng - Ngày 2: Huế - Ngày 3: Quảng Bình'
    ,'Đà Nẵng, Huế, Quảng Bình là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, ' Huế - Đà Nẵng - Hội An', '74.png', 2990000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: Huế - Ngày 2: Đà Nẵng - Ngày 3: Hội An'
    ,'Đà Nẵng, Huế, Hội An là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Quy Nhơn - Phú Yên', '75.png', 1990000, 'hằng ngày', '2 ngày 2 đêm', 'Ngày 1: Qui Nhơn- Ngày 2: Phú Yên'
    ,'Quy Nhơn - Phú Yên là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Quảng Nam - Cù Lao Chàm', '76.png', 1990000, 'hằng ngày', '2 ngày 2 đêm', 'Ngày 1: Quảng Nam - Ngày 2: Cù Lao Chàm'
    ,'Quảng Nam, Cù Lao Chàm là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Gia Lai - Kon Tum', '77.png', 1990000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: Gia Lai - Ngày 2: Kon Tum'
    ,'Gia Lai, Kon Tum là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Nha Trang - Đảo Hoa Lan', '78.png', 1990000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: Nha Trang- Ngày 2: Đảo Hoa Lan'
    ,'Nha Trang, Đảo Hoa Lan là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Quảng Bình - Đèo Ngang', '79.png', 1990000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: Quảng Bình- Ngày 2: Đèo Ngang'
    ,'Quảng Bình - Đèo Ngang là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Đà Nẵng - Phong Nha', '80.png', 2990000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Huế- Ngày 3: Phong Nha-Ngày 4: Về lại Đà Nẵng'
    ,'Đà Nẵng - Huế - Phong Nha là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Pleiku - Kon Tum', '81.png', 2990000, 'hằng ngày', '3 ngày 3 đêm', 'Ngày 1: Pleiku- Ngày 2: Gia Lai- Ngày 3: Kon Tum'
    ,'Pleiku - Gia Lai - Kon Tum là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Tam Kỳ - Quảng Ngãi', '82.png', 1990000, 'hằng ngày', '2 ngày 2 đêm', 'Ngày 1: Tam Kỳ - Ngày 2: Quãng Ngãi'
    ,'Tam Kỳ - Quảng Ngãi là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Cửa Lò - Nghệ An', '83.png', 2990000, 'hằng ngày', '3 ngày 3 đêm', 'Ngày 1: Cửa Lò- Ngày 2: Nghệ An- Ngày 3: Về lại Nghệ An'
    ,'Cửa Lò - Nghệ An là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Bình Thuận - Phan Thiết', '84.png', 3990000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: Bình Thuận- Ngày 2: Phan Thiết- Ngày 3: Du lịch biển Phan Thiết-Ngày 4: Về lại Bình Thuận'
    ,'Bình Thuận - Phan Thiết là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Tam Đảo - Vĩnh Phúc', '85.png', 3990000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: Tam Đảo- Ngày 2: Vĩnh Phúc- Ngày 3: Du lịch biển Vĩnh Phúc-Ngày 4: Về lại Tam Đảo'
    ,'Tam Đảo - Vĩnh Phúc là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Tràng An - Ninh Bình', '86.png', 2990000, 'hằng ngày', '3 ngày 3 đêm', 'Ngày 1: Tràng An- Ngày 2: Ninh Bình- Ngày 3: Về lại Tràng An'
    ,'Tràng An - Ninh Bình là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Đà Nẵng - Bà Nà Hills', '87.png', 3990000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Bà Nà Hills- Ngày 3: Tiếp tục khám phá Bà Nà Hills -Ngày 4: Về lại Đà Nẵng'
    ,'Đà Nẵng - Bà Nà Hills là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),

    ('Miền Trung', 1, 'Đà Nẵng - Hội An', '88.png', 3990000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Ngũ Hành Sơn- Ngày 3: Hội An -Ngày 4: Về lại Đà Nẵng'
    ,'Đà Nẵng - Ngũ Hành Sơn - Hội An ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Đà Nẵng - Huế', '89.png', 2990000, 'hằng ngày', '3 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Ngũ Hành Sơn- Ngày 3: Huế'
    ,'Đà Nẵng - Ngũ Hành Sơn - Huế là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Huế - Đà Nẵng', '90.png', 2990000, 'hằng ngày', '3 ngày 3 đêm', 'Ngày 1: Huế- Ngày 2: Chùa Thiện Mụ- Ngày 3: Đà Nẵng'),
    ('Miền Trung', 1, 'Nha Trang - Đà Nẵng', '91.png', 3990000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: Nha Trang- Ngày 2: Vinpearl Land- Ngày 3: Vinpearl Safari -Ngày 4: Đà Nẵng'
    ,'Nha Trang - Vinpearl Land - Vinpearl Safari - Đà Nẵng là bốn điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Nha Trang - Hội An', '92.png', 3990000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: Nha Trang- Ngày 2: Vinpearl Land- Ngày 3: Vinpearl Safari -Ngày 4: Hội An'
    ,'Nha Trang - Vinpearl Land - Vinpearl Safari - Hội An là bốn điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Nha Trang - Hội An', '93.png', 2990000, 'hằng ngày', '3 ngày 3 đêm', 'Ngày 1: Nha Trang- Ngày 2: Vinpearl Land- Ngày 3: Hội An'
    ,'Nha Trang - Vinpearl Land - Hội An là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Đà Nẵng - Bà Nà Hills', '94.png', 2990000, 'hằng ngày', '3 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Ngũ Hành Sơn- Ngày 3: Bà Nà Hills'
    ,' Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Đà Nẵng - Bà Nà Hills', '95.jpg', 3990000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Huế- Ngày 3: Hội An -Ngày 4: Bà Nà Hills'
    ,'Đà Nẵng - Huế - Hội An - Bà Nà Hills là bốn điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Đà Nẵng - Cù Lao Chàm', '96.jpg', 4990000, 'hằng ngày', '4 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Ngũ Hành Sơn- Ngày 3: Bà Nà Hills -Ngày 4: Chùa Thiên Mụ- Ngày 5: Cù Lao Chàm'
    ,' Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Chùa Thiên Mụ - Cù Lao Chàm là năm điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),

    ('Miền Trung', 1, 'Đà Nẵng - Cù Lao Chàm', '97.jpg', 1990000, 'hằng ngày', '2 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Cù Lao Chàm'
    ,' Đà Nẵng - Cù Lao Chàm là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),
    ('Miền Trung', 1, 'Huế - Cù Lao Chàm', '98.jpg', 2990000, 'hằng ngày', '3 ngày 2 đêm', 'Ngày 1: Huế- Ngày 2: Chùa Thiện Mụ- Ngày 3: Cù Lao Chàm'
    ,' Huế - Chùa Thiên Mụ - Cù Lao Chàm  là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),

    ('Miền Trung', 1, 'Huế - Cù Lao Chàm', '99.jpg', 1990000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: Huế- Ngày 2: Cù Lao Chàm'
    ,' Huế - Cù Lao Chàm là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.'),

    ('Miền Trung', 1, 'Nha Trang - Vinpearl Land', '100.jpg', 1990000, 'hằng ngày', '2 ngày 1 đêm', 'Ngày 1: Nha Trang- Ngày 2: Vinpearl Land'
    ,' Nha Trang - Vinpearl Land là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.');


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
