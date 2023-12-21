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
                             `userEmail` int(11) NOT NULL,
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
ADD CONSTRAINT `fk_user_email` FOREIGN KEY (`userEmail`) REFERENCES `users` (`id`);
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
    ('user1', 'user1@example.com', 'password1', '123456789', 'Address 1', 1),
    ('user2', 'user2@example.com', 'password2', '987654321', 'Address 2', 2);

-- Tạo dữ liệu cho bảng categories
INSERT INTO `categories` (`region`, `session`, `note`)
VALUES
    ('Region 1', 'Session 1', 'Note 1'),
    ('Region 2', 'Session 2', 'Note 2');


-- Tạo dữ liệu cho bảng feedbacks
INSERT INTO `feedbacks` (`userEmail`, `text`, `date`)
VALUES
    ('user1@example.com', 'Feedback text 1', '2023-01-05'),
    ('user2@example.com', 'Feedback text 2', '2023-01-10');


-- Tạo dữ liệu cho bảng discounts
INSERT INTO `discounts` (`type`, `value`, `endDate`, `description`)
VALUES
    ('Percentage', 10, '2023-12-31', '10% discount on all tours'),
    ('Fixed Amount', 50, '2023-12-31', '$50 discount on selected tours');


-- Tạo dữ liệu cho bảng tours
INSERT INTO `tours` (`cateId`, `discountId`, `name`, `image`, `price`, `startTime`, `duration`, `schedule`, `description`)
VALUES
    (1, 1, 'Tour 1', 'tour1.jpg', 100, '2023-03-01', '3 days', 'Tour schedule 1', 'Description of Tour 1'),
    (2, 2, 'Tour 2', 'tour2.jpg', 150, '2023-04-01', '5 days', 'Tour schedule 2', 'Description of Tour 2');

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


SELECT * FROM `options`;

-- Tạo dữ liệu cho bảng
INSERT INTO `bills` (`valiId`, `paymentMethod`, `totalPrice`, `status`)
VALUES
    (1, 'Credit Card', 150, 'Paid'),
    (2, 'PayPal', 200, 'Pending');
