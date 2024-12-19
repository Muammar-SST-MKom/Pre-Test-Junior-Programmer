/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : 127.0.0.1:3306
 Source Schema         : db_film

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 19/12/2024 20:14:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Film
-- ----------------------------
DROP TABLE IF EXISTS `Film`;
CREATE TABLE `Film` (
  `id_film` int NOT NULL AUTO_INCREMENT,
  `id_kategori` int DEFAULT NULL,
  `judul_film` varchar(255) NOT NULL,
  `sinopsis` text,
  `tahun_rilis` int DEFAULT NULL,
  `path_video` varchar(255) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_film`),
  KEY `id_kategori` (`id_kategori`),
  CONSTRAINT `film_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `Kategori` (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Film
-- ----------------------------
BEGIN;
INSERT INTO `Film` (`id_film`, `id_kategori`, `judul_film`, `sinopsis`, `tahun_rilis`, `path_video`, `poster`) VALUES (1, 1, 'The Raid', 'Kisah Tim SWAT yang menyerbu gedung apartemen yang dikuasai gembong narkoba.', 2011, 'videos/The Raid _ Official US Trailer HD (2011).mp4', 'posters/the_raid.jpg');
INSERT INTO `Film` (`id_film`, `id_kategori`, `judul_film`, `sinopsis`, `tahun_rilis`, `path_video`, `poster`) VALUES (2, 2, 'Warkop DKI Reborn: Jangkrik Boss! Part 1', 'Petualangan Dono, Kasino, dan Indro sebagai anggota CHIIPPS.', 2016, 'videos/Official Trailer Warkop DKI Reborn _ 12 September di Bioskop.mp4', 'posters/warkop_dki_reborn.jpg');
INSERT INTO `Film` (`id_film`, `id_kategori`, `judul_film`, `sinopsis`, `tahun_rilis`, `path_video`, `poster`) VALUES (3, 3, 'Laskar Pelangi', 'Kisah perjuangan anak-anak Belitung untuk meraih mimpi di tengah keterbatasan.', 2008, 'videos/laskar_pelangi.mp4', 'posters/laskar_pelangi.jpg');
INSERT INTO `Film` (`id_film`, `id_kategori`, `judul_film`, `sinopsis`, `tahun_rilis`, `path_video`, `poster`) VALUES (4, 4, 'Arrival', 'Seorang ahli bahasa direkrut oleh militer untuk berkomunikasi dengan alien yang baru tiba di Bumi.', 2016, 'videos/Arrival Trailer (2016) - Paramount Pictures.mp4', 'posters/arrival.jpg');
INSERT INTO `Film` (`id_film`, `id_kategori`, `judul_film`, `sinopsis`, `tahun_rilis`, `path_video`, `poster`) VALUES (5, 5, 'The spiderman', 'Peter Parker berusaha menyeimbangkan dua kehidupannya yang sangat bertolak belakang - menghentikan aksi penjualan senjata Chitauri oleh Adrian Toomes dan menjalani hari-hari selayaknya murid SMA.', 2013, 'videos/SPIDER-MAN [2002] – Official Trailer (HD).mp4', 'posters/the_spiderman.jpg');
COMMIT;

-- ----------------------------
-- Table structure for Kategori
-- ----------------------------
DROP TABLE IF EXISTS `Kategori`;
CREATE TABLE `Kategori` (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Kategori
-- ----------------------------
BEGIN;
INSERT INTO `Kategori` (`id_kategori`, `nama_kategori`) VALUES (1, 'Action');
INSERT INTO `Kategori` (`id_kategori`, `nama_kategori`) VALUES (2, 'Komedi');
INSERT INTO `Kategori` (`id_kategori`, `nama_kategori`) VALUES (3, 'Drama');
INSERT INTO `Kategori` (`id_kategori`, `nama_kategori`) VALUES (4, 'Sci-Fi');
INSERT INTO `Kategori` (`id_kategori`, `nama_kategori`) VALUES (5, 'Horror');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
