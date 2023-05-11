-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: bsmo_kpi_preview
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `ad_height` int NOT NULL,
  `ad_type` bigint NOT NULL,
  `ad_width` int NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  `headline` text,
  `height` int NOT NULL,
  `image_link` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `img_height` int NOT NULL,
  `img_width` int NOT NULL,
  `info_id` bigint NOT NULL,
  `max_lengthh` int NOT NULL,
  `max_lengtht` int NOT NULL,
  `product_id` bigint NOT NULL,
  `text` text,
  `width` int NOT NULL,
  `x1` int NOT NULL,
  `x2` int NOT NULL,
  `y1` int NOT NULL,
  `y2` int NOT NULL,
  `image_link_prefix` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `image_source` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `img_pos` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `last_modifier_id` bigint DEFAULT NULL,
  `limits` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `published` bit(1) DEFAULT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `published_by_id` bigint DEFAULT NULL,
  `additional_link_one` varchar(255) DEFAULT NULL,
  `additional_link_one_prefix` varchar(255) DEFAULT NULL,
  `additional_link_one_type` varchar(255) DEFAULT NULL,
  `additional_link_two` varchar(255) DEFAULT NULL,
  `additional_link_two_prefix` varchar(255) DEFAULT NULL,
  `additional_link_two_type` varchar(255) DEFAULT NULL,
  `tracking_pixel_code` longtext,
  `image_label_id` bigint DEFAULT NULL,
  `additional_link_label_one_id` bigint DEFAULT NULL,
  `additional_link_label_two_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC232A5846F9` (`info_id`),
  KEY `FKC23BE5C611A` (`customer_id`),
  KEY `FKC239908BC23` (`last_modifier_id`),
  KEY `ad_product_id` (`product_id`),
  KEY `FKC23B38E7A4` (`image_label_id`),
  KEY `FKC23812830A0` (`additional_link_label_two_id`),
  KEY `FKC23781C9646` (`additional_link_label_one_id`),
  KEY `FK7p3x60buw8sx7q5gu1kr4p21t` (`published_by_id`),
  KEY `FK12wt1t5ih6utpotaewk0f1dgc` (`created_by_id`),
  CONSTRAINT `FK12wt1t5ih6utpotaewk0f1dgc` FOREIGN KEY (`created_by_id`) REFERENCES `useradw` (`id`),
  CONSTRAINT `FK19d4lhjsu7lfsmegmhlbkptt7` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK4p229qsu2fb7ryg0mgach4i6g` FOREIGN KEY (`additional_link_label_two_id`) REFERENCES `link_label` (`id`),
  CONSTRAINT `FK7p3x60buw8sx7q5gu1kr4p21t` FOREIGN KEY (`published_by_id`) REFERENCES `useradw` (`id`),
  CONSTRAINT `FK_3ge3i1k879hlrx6ufkiwj76hs` FOREIGN KEY (`additional_link_label_one_id`) REFERENCES `link_label` (`id`),
  CONSTRAINT `FK_94qafgc1efx5iylur81kt72w7` FOREIGN KEY (`additional_link_label_two_id`) REFERENCES `link_label` (`id`),
  CONSTRAINT `FK_9fbtu59n0lolfkc6l1pdi7gd3` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK_l7gtoh6at06k6nfo7jjpcahcr` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_lhghie64kyhum3d6am5lutr6v` FOREIGN KEY (`created_by_id`) REFERENCES `useradw` (`id`),
  CONSTRAINT `FK_lq6765d4yo69ryayftxnbw7wd` FOREIGN KEY (`image_label_id`) REFERENCES `link_label` (`id`),
  CONSTRAINT `FK_trvwelsnrjpk8okqxy77mklcc` FOREIGN KEY (`published_by_id`) REFERENCES `useradw` (`id`),
  CONSTRAINT `FKC23781C9646` FOREIGN KEY (`additional_link_label_one_id`) REFERENCES `link_label` (`id`),
  CONSTRAINT `FKC23812830A0` FOREIGN KEY (`additional_link_label_two_id`) REFERENCES `link_label` (`id`),
  CONSTRAINT `FKC239908BC23` FOREIGN KEY (`last_modifier_id`) REFERENCES `useradw` (`id`),
  CONSTRAINT `FKC23B38E7A4` FOREIGN KEY (`image_label_id`) REFERENCES `link_label` (`id`),
  CONSTRAINT `FKnrgyn66bmhty913beyl3ydcq8` FOREIGN KEY (`last_modifier_id`) REFERENCES `useradw` (`id`),
  CONSTRAINT `FKob9c7qptal4hgdibhj9ko4t99` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKosgxpt8osh78c0a5bqywkrfp6` FOREIGN KEY (`image_label_id`) REFERENCES `link_label` (`id`),
  CONSTRAINT `FKq8epshfrjltgkx6qi1q04afh7` FOREIGN KEY (`additional_link_label_one_id`) REFERENCES `link_label` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22917 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_approval_log`
--

DROP TABLE IF EXISTS `ad_approval_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_approval_log` (
  `ad_approval_log_id` bigint DEFAULT NULL,
  `approval_log_id` bigint DEFAULT NULL,
  KEY `FKD6C4CDE4E0553199` (`ad_approval_log_id`),
  KEY `FKD6C4CDE4BAB48F53` (`approval_log_id`),
  CONSTRAINT `FK44cll7vbj62ve1rrao1plif6i` FOREIGN KEY (`approval_log_id`) REFERENCES `approval_log` (`id`),
  CONSTRAINT `FK_9xilwmilq0q5lrbgbe8y8w5me` FOREIGN KEY (`approval_log_id`) REFERENCES `approval_log` (`id`),
  CONSTRAINT `FK_fxyygnwnp4f1d2j1r47caytop` FOREIGN KEY (`ad_approval_log_id`) REFERENCES `ad` (`id`),
  CONSTRAINT `FKD6C4CDE4BAB48F53` FOREIGN KEY (`approval_log_id`) REFERENCES `approval_log` (`id`),
  CONSTRAINT `FKD6C4CDE4E0553199` FOREIGN KEY (`ad_approval_log_id`) REFERENCES `ad` (`id`),
  CONSTRAINT `FKlhao6gvory4qq1uen251s16sl` FOREIGN KEY (`ad_approval_log_id`) REFERENCES `ad` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_archive`
--

DROP TABLE IF EXISTS `ad_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_archive` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `ad_height` int DEFAULT NULL,
  `ad_type` bigint DEFAULT NULL,
  `ad_width` int DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `headline` longtext,
  `height` int DEFAULT NULL,
  `image_link` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `image_link_prefix` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `image_source` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `img_height` int DEFAULT NULL,
  `img_pos` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `img_width` int DEFAULT NULL,
  `last_modifier_id` bigint DEFAULT NULL,
  `limits` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `max_lengthh` int DEFAULT NULL,
  `max_lengtht` int DEFAULT NULL,
  `original_ad_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `published` bit(1) DEFAULT NULL,
  `text` longtext,
  `width` int DEFAULT NULL,
  `x1` int DEFAULT NULL,
  `x2` int DEFAULT NULL,
  `y1` int DEFAULT NULL,
  `y2` int DEFAULT NULL,
  `additional_link_one` varchar(255) DEFAULT NULL,
  `additional_link_one_prefix` varchar(255) DEFAULT NULL,
  `additional_link_one_type` varchar(255) DEFAULT NULL,
  `additional_link_two` varchar(255) DEFAULT NULL,
  `additional_link_two_prefix` varchar(255) DEFAULT NULL,
  `additional_link_two_type` varchar(255) DEFAULT NULL,
  `tracking_pixel_code` longtext,
  `image_label_id` bigint DEFAULT NULL,
  `additional_link_label_one_id` bigint DEFAULT NULL,
  `additional_link_label_two_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlpbotu2e4yawvhi62yq8n9jo8` (`image_label_id`),
  KEY `FK3gt9uwi0vdrvxs0oroi13n839` (`customer_id`),
  KEY `FK8d2gyuner7qv7xs7tc6kf29qg` (`additional_link_label_one_id`),
  KEY `FK51iwypcni5dr8j3tbub1upt3` (`last_modifier_id`),
  KEY `FK9gohsakpn3dmqdp4eso973nu4` (`additional_link_label_two_id`),
  CONSTRAINT `FK3gt9uwi0vdrvxs0oroi13n839` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK51iwypcni5dr8j3tbub1upt3` FOREIGN KEY (`last_modifier_id`) REFERENCES `useradw` (`id`),
  CONSTRAINT `FK8d2gyuner7qv7xs7tc6kf29qg` FOREIGN KEY (`additional_link_label_one_id`) REFERENCES `link_label` (`id`),
  CONSTRAINT `FK9gohsakpn3dmqdp4eso973nu4` FOREIGN KEY (`additional_link_label_two_id`) REFERENCES `link_label` (`id`),
  CONSTRAINT `FK_1m0fhs73pcftcirg9rirxwpuq` FOREIGN KEY (`additional_link_label_one_id`) REFERENCES `link_label` (`id`),
  CONSTRAINT `FK_4eyrvfpjlxjqvojjly9blygdt` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_8fh8u10f0lvl6elj85mck4l36` FOREIGN KEY (`additional_link_label_two_id`) REFERENCES `link_label` (`id`),
  CONSTRAINT `FK_eco2e5xndjje8mqgknu0qjah` FOREIGN KEY (`last_modifier_id`) REFERENCES `useradw` (`id`),
  CONSTRAINT `FK_jqa82y9n53pa0oqx35fj4f1pp` FOREIGN KEY (`image_label_id`) REFERENCES `link_label` (`id`),
  CONSTRAINT `FKlpbotu2e4yawvhi62yq8n9jo8` FOREIGN KEY (`image_label_id`) REFERENCES `link_label` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37048 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_archive_cust_news_price`
--

DROP TABLE IF EXISTS `ad_archive_cust_news_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_archive_cust_news_price` (
  `ad_archive_cnps_id` bigint NOT NULL,
  `cust_news_price_id` bigint DEFAULT NULL,
  KEY `FKqipxdi5yhijmev2tmpmrl6g7a` (`cust_news_price_id`),
  KEY `FKgb0j3h1c3tbex23l8j88vvbxo` (`ad_archive_cnps_id`),
  CONSTRAINT `FK_hk001txd6cav402jhdcxrqejt` FOREIGN KEY (`cust_news_price_id`) REFERENCES `cust_news_price` (`id`),
  CONSTRAINT `FK_jkrwe2kqaollm099j35jdshc7` FOREIGN KEY (`ad_archive_cnps_id`) REFERENCES `ad_archive` (`id`),
  CONSTRAINT `FKgb0j3h1c3tbex23l8j88vvbxo` FOREIGN KEY (`ad_archive_cnps_id`) REFERENCES `ad_archive` (`id`),
  CONSTRAINT `FKqipxdi5yhijmev2tmpmrl6g7a` FOREIGN KEY (`cust_news_price_id`) REFERENCES `cust_news_price` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_archive_image`
--

DROP TABLE IF EXISTS `ad_archive_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_archive_image` (
  `ad_archive_images_id` bigint DEFAULT NULL,
  `image_id` bigint DEFAULT NULL,
  KEY `FKew9o78d40uk85wclwa7vtqw37` (`image_id`),
  KEY `FK2dfi0wmd9f7rvrq2cqjp2w7l4` (`ad_archive_images_id`),
  CONSTRAINT `FK2dfi0wmd9f7rvrq2cqjp2w7l4` FOREIGN KEY (`ad_archive_images_id`) REFERENCES `ad_archive` (`id`),
  CONSTRAINT `FK_92fl9od0u9w8wloq4d6j7u4b9` FOREIGN KEY (`ad_archive_images_id`) REFERENCES `ad_archive` (`id`),
  CONSTRAINT `FK_fxi59qorr75324x9wcx6rc365` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  CONSTRAINT `FKew9o78d40uk85wclwa7vtqw37` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_archive_newsletter_offer`
--

DROP TABLE IF EXISTS `ad_archive_newsletter_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_archive_newsletter_offer` (
  `ad_archive_newsletter_offers_id` bigint NOT NULL,
  `newsletter_offer_id` bigint DEFAULT NULL,
  KEY `FKn79ec6d8msqj54aecel4vtrsp` (`newsletter_offer_id`),
  KEY `FKp8j3bqm5l7gapq52q74owfk2t` (`ad_archive_newsletter_offers_id`),
  CONSTRAINT `FK_9n1d0ox6qrc21l674ng7iln9b` FOREIGN KEY (`ad_archive_newsletter_offers_id`) REFERENCES `ad_archive` (`id`),
  CONSTRAINT `FK_bp13k4m2ukymr50ykiea2yedr` FOREIGN KEY (`newsletter_offer_id`) REFERENCES `newsletter_offer` (`id`),
  CONSTRAINT `FKn79ec6d8msqj54aecel4vtrsp` FOREIGN KEY (`newsletter_offer_id`) REFERENCES `newsletter_offer` (`id`),
  CONSTRAINT `FKp8j3bqm5l7gapq52q74owfk2t` FOREIGN KEY (`ad_archive_newsletter_offers_id`) REFERENCES `ad_archive` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_archive_newsletter_send`
--

DROP TABLE IF EXISTS `ad_archive_newsletter_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_archive_newsletter_send` (
  `ad_archive_nss_id` bigint DEFAULT NULL,
  `newsletter_send_id` bigint DEFAULT NULL,
  KEY `FKl26dkutk4ge9lrwnixfdshrf8` (`ad_archive_nss_id`),
  CONSTRAINT `FK_aduev7ta7pn5f5lvnfvqqmvuc` FOREIGN KEY (`ad_archive_nss_id`) REFERENCES `ad_archive` (`id`),
  CONSTRAINT `FKl26dkutk4ge9lrwnixfdshrf8` FOREIGN KEY (`ad_archive_nss_id`) REFERENCES `ad_archive` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_cust_news_price`
--

DROP TABLE IF EXISTS `ad_cust_news_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_cust_news_price` (
  `ad_cnps_id` bigint DEFAULT NULL,
  `cust_news_price_id` bigint DEFAULT NULL,
  KEY `FKBB561E2D3E3CE773` (`ad_cnps_id`),
  KEY `FKBB561E2D44AF7D4` (`cust_news_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_image`
--

DROP TABLE IF EXISTS `ad_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_image` (
  `ad_images_id` bigint DEFAULT NULL,
  `image_id` bigint DEFAULT NULL,
  KEY `FKAE58323F869CBB69` (`ad_images_id`),
  KEY `FKAE58323FD0FB3FBA` (`image_id`),
  CONSTRAINT `FK3cxna0we974ighrxi8b8268ks` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  CONSTRAINT `FK7m03h6ec9twnbl15a8ly5tp2g` FOREIGN KEY (`ad_images_id`) REFERENCES `ad` (`id`),
  CONSTRAINT `FK_3pycrunk5mje59ob5eqe65kmh` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  CONSTRAINT `FK_kfbpx52o5tw1tu57svgul7dm4` FOREIGN KEY (`ad_images_id`) REFERENCES `ad` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_newsletter_offer`
--

DROP TABLE IF EXISTS `ad_newsletter_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_newsletter_offer` (
  `ad_newsletter_offers_id` bigint DEFAULT NULL,
  `newsletter_offer_id` bigint DEFAULT NULL,
  KEY `FK390313F29D2C3FA7` (`newsletter_offer_id`),
  KEY `FK390313F218C98B9C` (`ad_newsletter_offers_id`),
  CONSTRAINT `FK_1i74igue3li5vfvncbgfgrw8l` FOREIGN KEY (`newsletter_offer_id`) REFERENCES `newsletter_offer` (`id`),
  CONSTRAINT `FK_f36d2b7kqnrbc29peb1rmx8rd` FOREIGN KEY (`ad_newsletter_offers_id`) REFERENCES `ad` (`id`),
  CONSTRAINT `FKj7lklv8w2rdm392co028nx7r9` FOREIGN KEY (`newsletter_offer_id`) REFERENCES `newsletter_offer` (`id`),
  CONSTRAINT `FKkomikwxuv36ea9fk4qv5snf1c` FOREIGN KEY (`ad_newsletter_offers_id`) REFERENCES `ad` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_newsletter_send`
--

DROP TABLE IF EXISTS `ad_newsletter_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_newsletter_send` (
  `ad_nss_id` bigint DEFAULT NULL,
  `newsletter_send_id` bigint DEFAULT NULL,
  KEY `FKD88E4B322592F78B` (`ad_nss_id`),
  KEY `FKD88E4B32F02E07AD` (`newsletter_send_id`),
  CONSTRAINT `FK_bd470e1c7dch9r20ppiu4odhl` FOREIGN KEY (`ad_nss_id`) REFERENCES `ad` (`id`),
  CONSTRAINT `FKbhuxtiwh8v4k188fh1jnml78u` FOREIGN KEY (`ad_nss_id`) REFERENCES `ad` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_product`
--

DROP TABLE IF EXISTS `ad_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `info_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `type` int DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `height` int DEFAULT NULL,
  `width` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF4ACACD32A5846F9` (`info_id`),
  CONSTRAINT `FK4dd4agtk3p0b0cy3wosr31dmu` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK_8roevmv34ewxcf26nw63sou7q` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3442 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_product_carrier`
--

DROP TABLE IF EXISTS `ad_product_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_product_carrier` (
  `ad_product_carrier_id` bigint DEFAULT NULL,
  `carrier_id` bigint DEFAULT NULL,
  `carrier_idx` int DEFAULT NULL,
  KEY `FK6542AF8CB456069A` (`carrier_id`),
  CONSTRAINT `FK3d8tbrt5xesv1fuxsj2nibav3` FOREIGN KEY (`carrier_id`) REFERENCES `carrier` (`id`),
  CONSTRAINT `FK6542AF8CB456069A` FOREIGN KEY (`carrier_id`) REFERENCES `carrier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_product_product_type`
--

DROP TABLE IF EXISTS `ad_product_product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_product_product_type` (
  `ad_product_type_list_id` bigint DEFAULT NULL,
  `product_type_id` bigint DEFAULT NULL,
  `type_list_idx` int DEFAULT NULL,
  `ad_product_carrier_id` bigint DEFAULT NULL,
  `carrier_idx` int DEFAULT NULL,
  KEY `FKEF30A476691D5D99` (`product_type_id`),
  KEY `ad_product_product_typ_ad_product_type_list_id_idx` (`ad_product_type_list_id`),
  CONSTRAINT `FK91iiubi6scwvtg8q3y0jmyfru` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`),
  CONSTRAINT `FK_ihcb6cep6m1qynkqkrx2ewwt9` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_unit`
--

DROP TABLE IF EXISTS `ad_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_unit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `area` varchar(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dfp_id` varchar(255) NOT NULL,
  `has_children` bit(1) NOT NULL,
  `info_id` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `target_window` varchar(255) DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dfp_id` (`dfp_id`),
  KEY `FKBB52A4202A5846F9` (`info_id`),
  KEY `FKBB52A4207208C55A` (`group_id`),
  CONSTRAINT `FK2bh2xa2nujdy9e1lt09co9vui` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK8894evlwpof8r4bxnjxxy5p3i` FOREIGN KEY (`group_id`) REFERENCES `business_group` (`id`),
  CONSTRAINT `FKBB52A4202A5846F9` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKBB52A4207208C55A` FOREIGN KEY (`group_id`) REFERENCES `business_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1433 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_unit_date_based_pricing_model`
--

DROP TABLE IF EXISTS `ad_unit_date_based_pricing_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_unit_date_based_pricing_model` (
  `ad_unit_date_based_pricing_models_id` bigint DEFAULT NULL,
  `date_based_pricing_model_id` bigint DEFAULT NULL,
  `date_based_pricing_models_idx` int DEFAULT NULL,
  KEY `FK4771EF12ECF1D2F` (`date_based_pricing_model_id`),
  CONSTRAINT `FK4771EF12ECF1D2F` FOREIGN KEY (`date_based_pricing_model_id`) REFERENCES `date_based_pricing_model` (`id`),
  CONSTRAINT `FK9smmukxlr2op3fpnefdb8t146` FOREIGN KEY (`date_based_pricing_model_id`) REFERENCES `date_based_pricing_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_unit_pricing_model`
--

DROP TABLE IF EXISTS `ad_unit_pricing_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_unit_pricing_model` (
  `ad_unit_pricing_models_id` bigint DEFAULT NULL,
  `pricing_model_id` bigint DEFAULT NULL,
  `pricing_models_idx` int DEFAULT NULL,
  KEY `FKD5064F9128C5D56D` (`pricing_model_id`),
  CONSTRAINT `FK7fjwqga6gvrf8y47m3nyvn8e4` FOREIGN KEY (`pricing_model_id`) REFERENCES `pricing_model` (`id`),
  CONSTRAINT `FKD5064F9128C5D56D` FOREIGN KEY (`pricing_model_id`) REFERENCES `pricing_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `street` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `country_id` bigint DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKBB979BF45FAAD9DA` (`country_id`),
  CONSTRAINT `FKBB979BF45FAAD9DA` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `FKe54x81nmccsk5569hsjg1a6ka` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1128040 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_rule`
--

DROP TABLE IF EXISTS `app_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_rule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `data_type` varchar(10) DEFAULT NULL,
  `description` text,
  `group_name` varchar(15) DEFAULT NULL,
  `rule_name` varchar(255) NOT NULL,
  `rule_value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rule_name` (`rule_name`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `approval_log`
--

DROP TABLE IF EXISTS `approval_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `approval_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `approver_id` bigint DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date_approved` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `is_approved` bit(1) NOT NULL,
  `type` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD5F5F488466E99E` (`approver_id`),
  CONSTRAINT `FK_3pa262n411hyrk6r3p9n612ex` FOREIGN KEY (`approver_id`) REFERENCES `useradw` (`id`),
  CONSTRAINT `FKD5F5F488466E99E` FOREIGN KEY (`approver_id`) REFERENCES `useradw` (`id`),
  CONSTRAINT `FKh85tiuvlqo7g23heq49qltwnt` FOREIGN KEY (`approver_id`) REFERENCES `useradw` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24645 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `info_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKADAF25A22A5846F9` (`info_id`),
  CONSTRAINT `FK_di35qqvslmj4ll79iqco7ubjo` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKlgseiofy51gsqek4mhm1xd5j2` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bundle_campaign`
--

DROP TABLE IF EXISTS `bundle_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bundle_campaign` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `campaign_version` int NOT NULL,
  `notes` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `info_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `FKBBA4BFC02A5846F9` (`info_id`),
  CONSTRAINT `FK7n2ciso2afwwv3bwowxj7ks9t` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK_j1go8o89n44kyb9t8hh77k71x` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `business_group`
--

DROP TABLE IF EXISTS `business_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `dead_line_before_send_out` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `info_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `soldpi` bigint NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `tkp` decimal(19,2) DEFAULT NULL,
  `salesman_id` bigint DEFAULT NULL,
  `fixed_price` decimal(19,2) DEFAULT NULL,
  `website_id` bigint DEFAULT NULL,
  `hide` bit(1) DEFAULT NULL,
  `sales_date` datetime DEFAULT NULL,
  `business_id` bigint DEFAULT NULL,
  `invoice_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `order_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `kpi` int DEFAULT NULL,
  `dartpi` bigint NOT NULL,
  `agency_id` bigint DEFAULT NULL,
  `agency_discount` decimal(19,2) DEFAULT NULL,
  `branch_id` bigint DEFAULT NULL,
  `discount` decimal(19,2) DEFAULT NULL,
  `gross_amount` decimal(19,2) DEFAULT NULL,
  `invoice_to` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `po_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `product` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `is_archived` bit(1) DEFAULT NULL,
  `is_cancelled` bit(1) DEFAULT NULL,
  `total_clicks_delivered` bigint DEFAULT NULL,
  `ad_ops_user_id` bigint DEFAULT NULL,
  `report` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `report_remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `exclusive_discount` decimal(19,2) DEFAULT NULL,
  `bundle_campaign_id` bigint DEFAULT NULL,
  `non_discountable` decimal(19,2) DEFAULT NULL,
  `bundle_type` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `campaign_version` int DEFAULT NULL,
  `notes` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  KEY `FKF7A901102A5846F9` (`info_id`),
  KEY `FKF7A90110BE5C611A` (`customer_id`),
  KEY `FKF7A901107E654617` (`salesman_id`),
  KEY `FKF7A90110FAB47FBA` (`website_id`),
  KEY `FKF7A90110886BDDA` (`business_id`),
  KEY `campaign_sales_date_idx` (`sales_date`),
  KEY `campaign_hide_idx` (`hide`),
  KEY `campaign_kpi_idx` (`kpi`),
  KEY `campaign_active_idx` (`active`),
  KEY `FKF7A90110C1B8FF93` (`agency_id`),
  KEY `FKF7A901104821E29A` (`branch_id`),
  KEY `FKF7A9011029201F51` (`ad_ops_user_id`),
  KEY `FKfeqx3nsn17rjjc47s9qkv0a16` (`bundle_campaign_id`),
  CONSTRAINT `FK1wc9b3kjgkqhkif6v0ukxyf3h` FOREIGN KEY (`ad_ops_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK6wawpxml6lwckwtfq106cm0bb` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`),
  CONSTRAINT `FK9rv5whltglasb25b0l5yql3np` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK_da62cdgrbylojj4civo33cr1m` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK_gsesuq4bv2gkwhfqpxyh80t54` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_sysh5i34g7gu6l6gnnvea732n` FOREIGN KEY (`salesman_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKcfd2po77kda9x16phuyrthxf7` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FKF7A9011029201F51` FOREIGN KEY (`ad_ops_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKF7A901104821E29A` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FKF7A90110886BDDA` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`),
  CONSTRAINT `FKF7A90110C1B8FF93` FOREIGN KEY (`agency_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKF7A90110FAB47FBA` FOREIGN KEY (`website_id`) REFERENCES `website` (`id`),
  CONSTRAINT `FKfeqx3nsn17rjjc47s9qkv0a16` FOREIGN KEY (`bundle_campaign_id`) REFERENCES `bundle_campaign` (`id`),
  CONSTRAINT `FKgdv36hob0r35v650trntvfhmh` FOREIGN KEY (`agency_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKhq0w98b0e7ydgbxqkbbdxyxlu` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKl0uqi3xbeid03qyfivtui5ix6` FOREIGN KEY (`salesman_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKo0ynfuw72cioj5rw83gx1c7v1` FOREIGN KEY (`website_id`) REFERENCES `website` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14456 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campaign_ad_product`
--

DROP TABLE IF EXISTS `campaign_ad_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_ad_product` (
  `campaign_creative_sizes_id` bigint DEFAULT NULL,
  `ad_product_id` bigint DEFAULT NULL,
  `creative_sizes_idx` int DEFAULT NULL,
  KEY `FK3701B76294814B33` (`ad_product_id`),
  KEY `campaign_ad_product_campaign_creative_sizes_id_idx` (`campaign_creative_sizes_id`),
  CONSTRAINT `FK_4kxexk8ysu3u0xutbn5ouwnh8` FOREIGN KEY (`ad_product_id`) REFERENCES `ad_product` (`id`),
  CONSTRAINT `FKfvj1wrjq5hxpw6e328dfafq2v` FOREIGN KEY (`ad_product_id`) REFERENCES `ad_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campaign_campaign_month_report`
--

DROP TABLE IF EXISTS `campaign_campaign_month_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_campaign_month_report` (
  `campaign_month_report_coll_id` bigint DEFAULT NULL,
  `campaign_month_report_id` bigint DEFAULT NULL,
  `month_report_coll_idx` int DEFAULT NULL,
  KEY `FK9tp2xht11x22r671f3sb5m06h` (`campaign_month_report_id`),
  CONSTRAINT `FK9tp2xht11x22r671f3sb5m06h` FOREIGN KEY (`campaign_month_report_id`) REFERENCES `campaign_month_report` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campaign_line_item`
--

DROP TABLE IF EXISTS `campaign_line_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_line_item` (
  `campaign_line_items_id` bigint DEFAULT NULL,
  `line_item_id` bigint DEFAULT NULL,
  `line_items_idx` int DEFAULT NULL,
  KEY `FKA795440F1CAEC5C3` (`line_item_id`),
  CONSTRAINT `FK4lo1b9l28gdpjas3lau2lkl76` FOREIGN KEY (`line_item_id`) REFERENCES `line_item` (`id`),
  CONSTRAINT `FKA795440F1CAEC5C3` FOREIGN KEY (`line_item_id`) REFERENCES `line_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campaign_month_report`
--

DROP TABLE IF EXISTS `campaign_month_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_month_report` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `month` int NOT NULL,
  `year` int NOT NULL,
  `delivered_imp` bigint NOT NULL,
  `website_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmm0i1kh3k86gltk8jiinud9cg` (`website_id`),
  CONSTRAINT `FKmm0i1kh3k86gltk8jiinud9cg` FOREIGN KEY (`website_id`) REFERENCES `website` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campaign_report_email`
--

DROP TABLE IF EXISTS `campaign_report_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_report_email` (
  `campaign_report_emails_id` bigint DEFAULT NULL,
  `report_email_id` bigint DEFAULT NULL,
  `report_emails_idx` int DEFAULT NULL,
  KEY `FK38D7EFA054B775F1` (`report_email_id`),
  CONSTRAINT `FK38D7EFA054B775F1` FOREIGN KEY (`report_email_id`) REFERENCES `report_email` (`id`),
  CONSTRAINT `FKsus8ne9yw8utyqlo6doksny7o` FOREIGN KEY (`report_email_id`) REFERENCES `report_email` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campaign_task_log`
--

DROP TABLE IF EXISTS `campaign_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_task_log` (
  `campaign_task_logs_id` bigint DEFAULT NULL,
  `task_log_id` bigint DEFAULT NULL,
  `task_logs_idx` int DEFAULT NULL,
  KEY `FK11771FD974F0334F` (`task_log_id`),
  CONSTRAINT `FK11771FD974F0334F` FOREIGN KEY (`task_log_id`) REFERENCES `task_log` (`id`),
  CONSTRAINT `FK2ddbc09e9023h6fqpyq596rgs` FOREIGN KEY (`task_log_id`) REFERENCES `task_log` (`id`),
  CONSTRAINT `FK_4y5f6spffdt7dwh9e9hktq0x5` FOREIGN KEY (`task_log_id`) REFERENCES `task_log` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carrier`
--

DROP TABLE IF EXISTS `carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrier` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `description` varchar(255) NOT NULL,
  `info_id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `FK210ADEF82A5846F9` (`info_id`),
  CONSTRAINT `FK210ADEF82A5846F9` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKospacp1xyt5kfv0qs7fdbb262` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `type` varchar(14) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK933f6347c81c4d3e7458e0dd57cd` (`type`,`value`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `division_id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK38A73C7D11438DB6` (`division_id`),
  KEY `FKaa85rotlnir4w4xlj1nkilnws` (`country_id`),
  CONSTRAINT `FK38A73C7D11438DB6` FOREIGN KEY (`division_id`) REFERENCES `devision` (`id`),
  CONSTRAINT `FKaa85rotlnir4w4xlj1nkilnws` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `FKppkylcah3rgb6lsfd04fd7t4o` FOREIGN KEY (`division_id`) REFERENCES `devision` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `info_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `FK391757962A5846F9` (`info_id`),
  CONSTRAINT `FK61p27eic77ncy8lei5a8wy5v2` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK_s5s0q8qruok0qlbctyni42tb` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cust_news_price`
--

DROP TABLE IF EXISTS `cust_news_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cust_news_price` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `ad_product_id` bigint DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `price` decimal(19,2) NOT NULL,
  `salesman_id` bigint DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `new_customer_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `offer_id` bigint DEFAULT NULL,
  `sold_date` datetime DEFAULT NULL,
  `info_id` bigint DEFAULT NULL,
  `invoice_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `order_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `newsletter_offer_id` bigint DEFAULT NULL,
  `ad_id` bigint DEFAULT NULL,
  `position` int DEFAULT NULL,
  `is_archived` bit(1) DEFAULT NULL,
  `is_cancelled` bit(1) DEFAULT NULL,
  `concept` decimal(19,2) DEFAULT NULL,
  `content` decimal(19,2) DEFAULT NULL,
  `diverse` decimal(19,2) DEFAULT NULL,
  `first_run_stats_id` bigint DEFAULT NULL,
  `gross_clicks` bigint DEFAULT NULL,
  `gross_ctr` decimal(19,2) DEFAULT NULL,
  `gross_opening_rate` decimal(19,2) DEFAULT NULL,
  `gross_openings` bigint DEFAULT NULL,
  `gross_subscribers` bigint DEFAULT NULL,
  `net_clicks` bigint DEFAULT NULL,
  `net_ctr` decimal(19,2) DEFAULT NULL,
  `net_opening_rate` decimal(19,2) DEFAULT NULL,
  `net_openings` bigint DEFAULT NULL,
  `net_subscribers` bigint DEFAULT NULL,
  `report` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `report_remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `second_run_stats_id` bigint DEFAULT NULL,
  `report_send_out_date` datetime DEFAULT NULL,
  `is_excluded_from_report` bit(1) DEFAULT NULL,
  `ad_gapid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `remark` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `type` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK89362497E654617` (`salesman_id`),
  KEY `FK8936249BE5C611A` (`customer_id`),
  KEY `FK893624994814B33` (`ad_product_id`),
  KEY `FK8936249D1981AB3` (`status_id`),
  KEY `FK89362499CB17795` (`offer_id`),
  KEY `FK89362492A5846F9` (`info_id`),
  KEY `FK89362499D2C3FA7` (`newsletter_offer_id`),
  KEY `FK8936249585D6FA` (`ad_id`),
  KEY `FK8936249519D6E8` (`first_run_stats_id`),
  KEY `FK89362493C3B63A4` (`second_run_stats_id`),
  CONSTRAINT `FK6hcysoy7xhrkjq7dngophgte5` FOREIGN KEY (`first_run_stats_id`) REFERENCES `line_item_statistics` (`id`),
  CONSTRAINT `FK89362492A5846F9` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK89362493C3B63A4` FOREIGN KEY (`second_run_stats_id`) REFERENCES `line_item_statistics` (`id`),
  CONSTRAINT `FK8936249519D6E8` FOREIGN KEY (`first_run_stats_id`) REFERENCES `line_item_statistics` (`id`),
  CONSTRAINT `FK8936249585D6FA` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`),
  CONSTRAINT `FK89362499CB17795` FOREIGN KEY (`offer_id`) REFERENCES `my_newsletter_offer` (`id`),
  CONSTRAINT `FK89362499D2C3FA7` FOREIGN KEY (`newsletter_offer_id`) REFERENCES `newsletter_offer` (`id`),
  CONSTRAINT `FK8936249D1981AB3` FOREIGN KEY (`status_id`) REFERENCES `newsletter_status` (`id`),
  CONSTRAINT `FK8j4juid48mtqguvnuhdjt1hce` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK_8vhdwa3fgulnk73of62rned8d` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_qdglaah4syfjr35c969htv3pu` FOREIGN KEY (`ad_product_id`) REFERENCES `ad_product` (`id`),
  CONSTRAINT `FK_qw5rjmm3jch0g1l6xnranyh1g` FOREIGN KEY (`salesman_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKclrldpalvhuuf8axios1aixkm` FOREIGN KEY (`offer_id`) REFERENCES `my_newsletter_offer` (`id`),
  CONSTRAINT `FKfkk61ofj7yep067ogbhjkrvps` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`),
  CONSTRAINT `FKfwf99v8a72h2e4vonv2avjwoa` FOREIGN KEY (`status_id`) REFERENCES `newsletter_status` (`id`),
  CONSTRAINT `FKh2kwxwa56c1kj5y63rit71dh` FOREIGN KEY (`ad_product_id`) REFERENCES `ad_product` (`id`),
  CONSTRAINT `FKocxrl2x0u7c3px21018sxapf8` FOREIGN KEY (`newsletter_offer_id`) REFERENCES `newsletter_offer` (`id`),
  CONSTRAINT `FKouwbp0ruim2o0vt0rcd3wmpk7` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKpqdpticuxfuhslel4o8w89ul6` FOREIGN KEY (`salesman_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41433 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_dart_report`
--

DROP TABLE IF EXISTS `custom_dart_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_dart_report` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_field`
--

DROP TABLE IF EXISTS `custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_field` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `info_id` bigint DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `visibility` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2ACD76AC2A5846F9` (`info_id`),
  CONSTRAINT `FK2ACD76AC2A5846F9` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKdygtmbjdfemmjihnpkox9jx8l` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_field_option`
--

DROP TABLE IF EXISTS `custom_field_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_field_option` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `custom_field_id` bigint NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `info_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7FC67568F417B777` (`custom_field_id`),
  KEY `FK7FC675682A5846F9` (`info_id`),
  CONSTRAINT `FK4hpqnd5nvjgf8q3lru165j812` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK7FC675682A5846F9` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK7FC67568F417B777` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_field` (`id`),
  CONSTRAINT `FKksgolwacv6rupettyffs8079u` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_field` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `address_id` bigint DEFAULT NULL,
  `branch_id` bigint DEFAULT NULL,
  `contact_person` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `info_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ident_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `is_agency` bit(1) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `abbreviation` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `group_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `other_emails` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `is_ad_gapidactive` bit(1) DEFAULT NULL,
  `ad_gapid` bigint DEFAULT NULL,
  `approval_reminder_email` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ident_key` (`ident_key`),
  KEY `FK24217FDE6EBF151A` (`address_id`),
  KEY `FK24217FDE4821E29A` (`branch_id`),
  KEY `FK24217FDE2A5846F9` (`info_id`),
  CONSTRAINT `FK_ax6w2li9uim8tr3jweb9kteav` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FK_ke6swkddy3k5spklsn1b9v5dd` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK_r8whbd0mf9er6vwfr0sclsxkd` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FKehjjh2rstm0jx7kpw0gwub4id` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FKglkhkmh2vyn790ijs6hiqqpi` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FKj8t3xvhtq6koearp12l4fu4yk` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5540 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_date_based_discount`
--

DROP TABLE IF EXISTS `customer_date_based_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_date_based_discount` (
  `customer_date_based_discounts_id` bigint DEFAULT NULL,
  `date_based_discount_id` bigint DEFAULT NULL,
  `date_based_discounts_idx` int DEFAULT NULL,
  KEY `FKg8vxc1djhdti51fgh8nl8u4tr` (`date_based_discount_id`),
  CONSTRAINT `FKg8vxc1djhdti51fgh8nl8u4tr` FOREIGN KEY (`date_based_discount_id`) REFERENCES `date_based_discount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_report_email`
--

DROP TABLE IF EXISTS `customer_report_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_report_email` (
  `customer_emails_id` bigint DEFAULT NULL,
  `report_email_id` bigint DEFAULT NULL,
  `emails_idx` int DEFAULT NULL,
  KEY `FKF9146F9254B775F1` (`report_email_id`),
  CONSTRAINT `FK8mu0048jaqpdyjbj610xrjccc` FOREIGN KEY (`report_email_id`) REFERENCES `report_email` (`id`),
  CONSTRAINT `FKF9146F9254B775F1` FOREIGN KEY (`report_email_id`) REFERENCES `report_email` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_rolling_clicks`
--

DROP TABLE IF EXISTS `daily_rolling_clicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_rolling_clicks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `date` datetime NOT NULL,
  `clicks_delivered` bigint NOT NULL,
  `units_delivered` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27479 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `date_based_discount`
--

DROP TABLE IF EXISTS `date_based_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `date_based_discount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `discount` float DEFAULT NULL,
  `date_range_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmvx0xursp64tql1aaijjakfao` (`date_range_id`),
  CONSTRAINT `FKmvx0xursp64tql1aaijjakfao` FOREIGN KEY (`date_range_id`) REFERENCES `general_date_range` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `date_based_pricing_model`
--

DROP TABLE IF EXISTS `date_based_pricing_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `date_based_pricing_model` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `date_range_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK802D1BD37B302F15` (`date_range_id`),
  CONSTRAINT `FK802D1BD37B302F15` FOREIGN KEY (`date_range_id`) REFERENCES `general_date_range` (`id`),
  CONSTRAINT `FKeujxku0ej9swqyq2aqgdi5uhq` FOREIGN KEY (`date_range_id`) REFERENCES `general_date_range` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4440 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `date_based_pricing_model_pricing_model`
--

DROP TABLE IF EXISTS `date_based_pricing_model_pricing_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `date_based_pricing_model_pricing_model` (
  `date_based_pricing_model_pricing_models_id` bigint DEFAULT NULL,
  `pricing_model_id` bigint DEFAULT NULL,
  `pricing_models_idx` int DEFAULT NULL,
  KEY `FKE72FD20428C5D56D` (`pricing_model_id`),
  CONSTRAINT `FK61eijmuho1uqnql01shvcesht` FOREIGN KEY (`pricing_model_id`) REFERENCES `pricing_model` (`id`),
  CONSTRAINT `FKE72FD20428C5D56D` FOREIGN KEY (`pricing_model_id`) REFERENCES `pricing_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `date_based_subscribers_and_fixed_cost`
--

DROP TABLE IF EXISTS `date_based_subscribers_and_fixed_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `date_based_subscribers_and_fixed_cost` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `date_range_id` bigint DEFAULT NULL,
  `fixed_price` decimal(19,2) DEFAULT NULL,
  `subscription` bigint DEFAULT NULL,
  `ceiling_price` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6D56ED517B302F15` (`date_range_id`),
  CONSTRAINT `FK6D56ED517B302F15` FOREIGN KEY (`date_range_id`) REFERENCES `general_date_range` (`id`),
  CONSTRAINT `FKe3t5ktv08cmqwug42dvvbcltc` FOREIGN KEY (`date_range_id`) REFERENCES `general_date_range` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5160 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `delivered_impression`
--

DROP TABLE IF EXISTS `delivered_impression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivered_impression` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `ad_unit_id` bigint NOT NULL,
  `units_delivered` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKaojovdalxgtvj3oxjkr0sq1og` (`ad_unit_id`),
  CONSTRAINT `FKaojovdalxgtvj3oxjkr0sq1og` FOREIGN KEY (`ad_unit_id`) REFERENCES `ad_unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `description`
--

DROP TABLE IF EXISTS `description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `description` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `language_id` bigint DEFAULT NULL,
  `text` longtext,
  PRIMARY KEY (`id`),
  KEY `FK3244jul65o8a6rigf63tg5vrd` (`language_id`),
  CONSTRAINT `FK3244jul65o8a6rigf63tg5vrd` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `devision`
--

DROP TABLE IF EXISTS `devision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devision` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `info_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK422443A92A5846F9` (`info_id`),
  CONSTRAINT `FK_serctq2q9ph3mw14q48d9h6e3` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKse3ae1ei8xpni6ur9bmot45pk` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dfp_ad_unit`
--

DROP TABLE IF EXISTS `dfp_ad_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dfp_ad_unit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dfp_id` varchar(255) NOT NULL,
  `has_children` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `target_window` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dfp_id` (`dfp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dfp_custom_field`
--

DROP TABLE IF EXISTS `dfp_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dfp_custom_field` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `info_id` bigint NOT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `visibility` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK68DC171D2A5846F9` (`info_id`),
  CONSTRAINT `FK68DC171D2A5846F9` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `file_resource_ref`
--

DROP TABLE IF EXISTS `file_resource_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_resource_ref` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `info_id` bigint NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size_bytes` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2rol7s4i48xi5r9oqhqappmb7` (`category_id`),
  KEY `FKm20otwfyupcvfhsf59b95wwt3` (`info_id`),
  CONSTRAINT `FK2rol7s4i48xi5r9oqhqappmb7` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKm20otwfyupcvfhsf59b95wwt3` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `general_date_range`
--

DROP TABLE IF EXISTS `general_date_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_date_range` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `end_date` datetime NOT NULL,
  `is_active` bit(1) NOT NULL,
  `start_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `image` mediumblob,
  `image_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `original` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83363 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `keyword`
--

DROP TABLE IF EXISTS `keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyword` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `level` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `select_online` bit(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `mother_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `keyword_description`
--

DROP TABLE IF EXISTS `keyword_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyword_description` (
  `keyword_description_list_id` bigint DEFAULT NULL,
  `description_id` bigint DEFAULT NULL,
  `description_list_idx` int DEFAULT NULL,
  KEY `FK6d6s9y8b7c00h63xvt026ko54` (`description_id`),
  CONSTRAINT `FK6d6s9y8b7c00h63xvt026ko54` FOREIGN KEY (`description_id`) REFERENCES `description` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `keyword_prio`
--

DROP TABLE IF EXISTS `keyword_prio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyword_prio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `keyword_id` bigint NOT NULL,
  `preferred` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfgx9jal9iejy4gvfxd5myapor` (`keyword_id`),
  CONSTRAINT `FKfgx9jal9iejy4gvfxd5myapor` FOREIGN KEY (`keyword_id`) REFERENCES `keyword` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `label_statistics`
--

DROP TABLE IF EXISTS `label_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `label_statistics` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `label_id` bigint NOT NULL,
  `gross_clicks` int DEFAULT NULL,
  `net_clicks` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4072674EA0C50940` (`label_id`),
  CONSTRAINT `FK4072674EA0C50940` FOREIGN KEY (`label_id`) REFERENCES `link_label` (`id`),
  CONSTRAINT `FK6rj70y850fbfx1lgv6ocs0gng` FOREIGN KEY (`label_id`) REFERENCES `link_label` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32717 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `language_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `language_code` (`language_code`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `line_item`
--

DROP TABLE IF EXISTS `line_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `agency_discount` decimal(19,2) DEFAULT NULL,
  `customer_discount` decimal(19,2) DEFAULT NULL,
  `end_date_time` datetime NOT NULL,
  `gross_amount` decimal(19,2) DEFAULT NULL,
  `info_id` bigint NOT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `net_amount` decimal(19,2) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `start_date_time` datetime NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `units_delivered` bigint DEFAULT NULL,
  `units_sold` bigint DEFAULT NULL,
  `cpm` decimal(19,2) DEFAULT NULL,
  `type` varchar(14) DEFAULT NULL,
  `is_archived` bit(1) DEFAULT NULL,
  `units_invoiced` bigint DEFAULT NULL,
  `fixed_price` decimal(19,2) DEFAULT NULL,
  `is_cancelled` bit(1) DEFAULT NULL,
  `sales_date` datetime DEFAULT NULL,
  `clicks_delivered` bigint DEFAULT NULL,
  `creative_id` varchar(255) DEFAULT NULL,
  `is_missing_creatives` bit(1) DEFAULT NULL,
  `line_item_screenshot_id` bigint DEFAULT NULL,
  `report` varchar(4) DEFAULT NULL,
  `report_remark` varchar(255) DEFAULT NULL,
  `report_run_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `is_excluded_from_report` bit(1) DEFAULT NULL,
  `ad_gapid` varchar(255) DEFAULT NULL,
  `auto_extension_days` int DEFAULT NULL,
  `non_discountable` decimal(19,2) DEFAULT NULL,
  `exclusive_discount` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK94ED5C7E2A5846F9` (`info_id`),
  KEY `FK94ED5C7E46385DCE` (`line_item_screenshot_id`),
  CONSTRAINT `FK7ggxx92wy7fs9vm1250bv10ur` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK94ED5C7E2A5846F9` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK94ED5C7E46385DCE` FOREIGN KEY (`line_item_screenshot_id`) REFERENCES `image` (`id`),
  CONSTRAINT `FKfa9dp17jo67g1c0js8ifb7joa` FOREIGN KEY (`line_item_screenshot_id`) REFERENCES `image` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16577 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `line_item_ad_product`
--

DROP TABLE IF EXISTS `line_item_ad_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line_item_ad_product` (
  `line_item_ad_products_id` bigint DEFAULT NULL,
  `ad_product_id` bigint DEFAULT NULL,
  `ad_products_idx` int DEFAULT NULL,
  KEY `FKDB5B8B3494814B33` (`ad_product_id`),
  CONSTRAINT `FKb38bebhwc0fdpwomn7s3beyp5` FOREIGN KEY (`ad_product_id`) REFERENCES `ad_product` (`id`),
  CONSTRAINT `FKDB5B8B3494814B33` FOREIGN KEY (`ad_product_id`) REFERENCES `ad_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `line_item_daily_rolling_clicks`
--

DROP TABLE IF EXISTS `line_item_daily_rolling_clicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line_item_daily_rolling_clicks` (
  `line_item_daily_rolling_clicks_id` bigint NOT NULL,
  `daily_rolling_clicks_id` bigint DEFAULT NULL,
  KEY `FKpwx1y1db4n9rlviuo440w5nm9` (`daily_rolling_clicks_id`),
  KEY `FK24gu5c39b402an8fvsy8ix32l` (`line_item_daily_rolling_clicks_id`),
  CONSTRAINT `FK24gu5c39b402an8fvsy8ix32l` FOREIGN KEY (`line_item_daily_rolling_clicks_id`) REFERENCES `line_item` (`id`),
  CONSTRAINT `FKpwx1y1db4n9rlviuo440w5nm9` FOREIGN KEY (`daily_rolling_clicks_id`) REFERENCES `daily_rolling_clicks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `line_item_delivered_impression`
--

DROP TABLE IF EXISTS `line_item_delivered_impression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line_item_delivered_impression` (
  `line_item_delivered_impression_id` bigint DEFAULT NULL,
  `delivered_impression_id` bigint DEFAULT NULL,
  `delivered_impression_idx` int DEFAULT NULL,
  KEY `FKkq31sj8ab00r8m191h7ja6clo` (`delivered_impression_id`),
  CONSTRAINT `FKkq31sj8ab00r8m191h7ja6clo` FOREIGN KEY (`delivered_impression_id`) REFERENCES `delivered_impression` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `line_item_placement`
--

DROP TABLE IF EXISTS `line_item_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line_item_placement` (
  `line_item_targeted_placements_id` bigint DEFAULT NULL,
  `placement_id` bigint DEFAULT NULL,
  `targeted_placements_idx` int DEFAULT NULL,
  KEY `FK9B9964642B4A6B7A` (`placement_id`),
  CONSTRAINT `FK9B9964642B4A6B7A` FOREIGN KEY (`placement_id`) REFERENCES `placement` (`id`),
  CONSTRAINT `FKaxr41edaygbks2m8axak46wrp` FOREIGN KEY (`placement_id`) REFERENCES `placement` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `line_item_statistics`
--

DROP TABLE IF EXISTS `line_item_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line_item_statistics` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `report_run_date` datetime DEFAULT NULL,
  `gross_clicks` bigint DEFAULT NULL,
  `gross_ctr` decimal(19,2) DEFAULT NULL,
  `gross_opening_rate` decimal(19,2) DEFAULT NULL,
  `gross_openings` bigint DEFAULT NULL,
  `gross_subscribers` bigint DEFAULT NULL,
  `net_clicks` bigint DEFAULT NULL,
  `net_ctr` decimal(19,2) DEFAULT NULL,
  `net_opening_rate` decimal(19,2) DEFAULT NULL,
  `net_openings` bigint DEFAULT NULL,
  `net_subscribers` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17321 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `line_item_statistics_label_statistics`
--

DROP TABLE IF EXISTS `line_item_statistics_label_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line_item_statistics_label_statistics` (
  `line_item_statistics_label_statistics_id` bigint DEFAULT NULL,
  `label_statistics_id` bigint DEFAULT NULL,
  `label_statistics_idx` int DEFAULT NULL,
  KEY `FKFE58B2A99C5AC2C3` (`label_statistics_id`),
  CONSTRAINT `FKFE58B2A99C5AC2C3` FOREIGN KEY (`label_statistics_id`) REFERENCES `label_statistics` (`id`),
  CONSTRAINT `FKtkpu43x5lbsdwd4bq7rri4tew` FOREIGN KEY (`label_statistics_id`) REFERENCES `label_statistics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `line_item_targeted_ad_units`
--

DROP TABLE IF EXISTS `line_item_targeted_ad_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line_item_targeted_ad_units` (
  `line_item_targeted_ad_units_id` bigint DEFAULT NULL,
  `targeted_ad_units_id` bigint DEFAULT NULL,
  `targeted_ad_units_idx` int DEFAULT NULL,
  KEY `FKD97EC441846D7D94` (`targeted_ad_units_id`),
  CONSTRAINT `FKD97EC441846D7D94` FOREIGN KEY (`targeted_ad_units_id`) REFERENCES `targeted_ad_units` (`id`),
  CONSTRAINT `FKr2gjpn34mnvebe6abcex075y1` FOREIGN KEY (`targeted_ad_units_id`) REFERENCES `targeted_ad_units` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `link_label`
--

DROP TABLE IF EXISTS `link_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link_label` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `description` varchar(255) NOT NULL,
  `label_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login_history`
--

DROP TABLE IF EXISTS `login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `date` datetime NOT NULL,
  `logged_in` bit(1) NOT NULL,
  `session_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57314 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login_history_user`
--

DROP TABLE IF EXISTS `login_history_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_history_user` (
  `login_history_users_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `users_idx` int DEFAULT NULL,
  KEY `FK9EDB09ACF7634DFA` (`user_id`),
  CONSTRAINT `FK_f99otddib2km3nl6614qnmvaa` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKlawabay9jky43xhcwwor3597w` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magazine`
--

DROP TABLE IF EXISTS `magazine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magazine` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `is_top` bit(1) DEFAULT NULL,
  `is_in_media` bit(1) DEFAULT NULL,
  `info_id` bigint NOT NULL,
  `impression` varchar(255) DEFAULT NULL,
  `target_group` longtext,
  `thematic_plan` longtext,
  `name` varchar(255) NOT NULL,
  `publication_data` longtext,
  `ranges` longtext,
  `unit` longtext,
  `frequency` varchar(255) DEFAULT NULL,
  `ad_formats` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_kxc2kxttiobevnlycw8iwf6mw` (`name`),
  KEY `FKs2hy317dli5afbreecgrl8kmf` (`info_id`),
  CONSTRAINT `FKs2hy317dli5afbreecgrl8kmf` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magazine_description`
--

DROP TABLE IF EXISTS `magazine_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magazine_description` (
  `magazine_description_list_id` bigint DEFAULT NULL,
  `description_id` bigint DEFAULT NULL,
  `description_list_idx` int DEFAULT NULL,
  KEY `FK41dxih2nwkq82cs6hspb8y5ar` (`description_id`),
  CONSTRAINT `FK41dxih2nwkq82cs6hspb8y5ar` FOREIGN KEY (`description_id`) REFERENCES `description` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magazine_keyword_prio`
--

DROP TABLE IF EXISTS `magazine_keyword_prio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magazine_keyword_prio` (
  `magazine_keywords_id` bigint DEFAULT NULL,
  `keyword_prio_id` bigint DEFAULT NULL,
  `keywords_idx` int DEFAULT NULL,
  KEY `FKa5fc2iwxd5suxowxxr93jyo68` (`keyword_prio_id`),
  CONSTRAINT `FKa5fc2iwxd5suxowxxr93jyo68` FOREIGN KEY (`keyword_prio_id`) REFERENCES `keyword_prio` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magazine_user`
--

DROP TABLE IF EXISTS `magazine_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magazine_user` (
  `magazine_contacts_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `contacts_idx` int DEFAULT NULL,
  KEY `FKcjne52mx91emav23us6a3ltr2` (`user_id`),
  CONSTRAINT `FKcjne52mx91emav23us6a3ltr2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `me_so`
--

DROP TABLE IF EXISTS `me_so`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `me_so` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `ad_product_id` bigint NOT NULL,
  `agency_id` bigint DEFAULT NULL,
  `agency_discount` decimal(19,2) DEFAULT NULL,
  `agency_discount_amount` decimal(19,2) DEFAULT NULL,
  `branch_id` bigint DEFAULT NULL,
  `business_id` bigint DEFAULT NULL,
  `customer_id` bigint NOT NULL,
  `discount` decimal(19,2) DEFAULT NULL,
  `discount_amount` decimal(19,2) DEFAULT NULL,
  `gross_amount` decimal(19,2) DEFAULT NULL,
  `info_id` bigint DEFAULT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `invoice_to` varchar(8) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `net_amount` decimal(19,2) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `salesman_id` bigint NOT NULL,
  `sold_date` datetime DEFAULT NULL,
  `sub_total` decimal(19,2) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `total_discount_amount` decimal(19,2) DEFAULT NULL,
  `kam_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK62F5E63886BDDA` (`business_id`),
  KEY `FK62F5E6394814B33` (`ad_product_id`),
  KEY `FK62F5E637E654617` (`salesman_id`),
  KEY `FK62F5E63C1B8FF93` (`agency_id`),
  KEY `FK62F5E632A5846F9` (`info_id`),
  KEY `FK62F5E63BE5C611A` (`customer_id`),
  KEY `FK62F5E634821E29A` (`branch_id`),
  KEY `FK62F5E63BC48D06E` (`kam_id`),
  CONSTRAINT `FK62F5E632A5846F9` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK62F5E634821E29A` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FK62F5E637E654617` FOREIGN KEY (`salesman_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK62F5E63886BDDA` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`),
  CONSTRAINT `FK62F5E6394814B33` FOREIGN KEY (`ad_product_id`) REFERENCES `ad_product` (`id`),
  CONSTRAINT `FK62F5E63BC48D06E` FOREIGN KEY (`kam_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK62F5E63BE5C611A` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK62F5E63C1B8FF93` FOREIGN KEY (`agency_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK7bh1uuuiv202r3mkr4g9woxf` FOREIGN KEY (`agency_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKbwvngi1l19lu6sojt8vmyo075` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKcyy0wtshx5fx8x9dr2w9vl000` FOREIGN KEY (`salesman_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKeirj5n3f31999s3e2c3hic4gc` FOREIGN KEY (`ad_product_id`) REFERENCES `ad_product` (`id`),
  CONSTRAINT `FKl6lecye21xmmnqxsit4ugj4l` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKmgi3bs69ptttnwxoct0ayeuq6` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`),
  CONSTRAINT `FKqfsl84vu3ony56s3o49irprh0` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FKr8m2yfcmkb9ak2h88srw6mw97` FOREIGN KEY (`kam_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media_daten_chart_end`
--

DROP TABLE IF EXISTS `media_daten_chart_end`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_daten_chart_end` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `month` int NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `media_suite_ad_product`
--

DROP TABLE IF EXISTS `media_suite_ad_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_suite_ad_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `nsales_item_id` varchar(255) NOT NULL,
  `ad_product_id` bigint DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `media_suite_object_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `object_info_id` bigint DEFAULT NULL,
  `product_type_id` bigint NOT NULL,
  `rate_card_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `n_sales_item_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKDB795775691D5D99` (`product_type_id`),
  KEY `FKDB79577594814B33` (`ad_product_id`),
  KEY `FKDB795775896CE1F9` (`object_info_id`),
  KEY `FKDB795775E2DF6BC8` (`product_type_id`),
  CONSTRAINT `FKDB795775691D5D99` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`),
  CONSTRAINT `FKDB795775896CE1F9` FOREIGN KEY (`object_info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKDB79577594814B33` FOREIGN KEY (`ad_product_id`) REFERENCES `ad_product` (`id`),
  CONSTRAINT `FKDB795775E2DF6BC8` FOREIGN KEY (`product_type_id`) REFERENCES `carrier` (`id`),
  CONSTRAINT `FKe5tqblyvu2dcufxhu3l05hgtu` FOREIGN KEY (`ad_product_id`) REFERENCES `ad_product` (`id`),
  CONSTRAINT `FKefqfas5ovbamkte0sd4wa25k4` FOREIGN KEY (`object_info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKjja77jdsrplv6kydyhq2db0mn` FOREIGN KEY (`product_type_id`) REFERENCES `carrier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `my_newsletter_offer`
--

DROP TABLE IF EXISTS `my_newsletter_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_newsletter_offer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `info_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `user_id` bigint NOT NULL,
  `offer_date` datetime DEFAULT NULL,
  `agency_discount` double DEFAULT '0',
  `discount` double DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FKFCF73589F7634DFA` (`user_id`),
  KEY `FKFCF735892A5846F9` (`info_id`),
  CONSTRAINT `FKe6nqwi8s0rwlyobl7dv8qghuh` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKt6okkt3138m4bb9n8n0ppu6rb` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `my_newsletter_offer_newsletter_send`
--

DROP TABLE IF EXISTS `my_newsletter_offer_newsletter_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_newsletter_offer_newsletter_send` (
  `my_newsletter_offer_newsletter_list_id` bigint DEFAULT NULL,
  `newsletter_send_id` bigint DEFAULT NULL,
  `newsletter_list_idx` int DEFAULT NULL,
  KEY `FK5FC1E898F02E07AD` (`newsletter_send_id`),
  CONSTRAINT `FK_a3oce7qjmf4xqfepyu3l9xyoy` FOREIGN KEY (`newsletter_send_id`) REFERENCES `newsletter_send` (`id`),
  CONSTRAINT `FKcteo5q2gmhecyxu5jrpt2bfta` FOREIGN KEY (`newsletter_send_id`) REFERENCES `newsletter_send` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `info_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `website_id` bigint DEFAULT NULL,
  `recommended_frequence_id` bigint DEFAULT NULL,
  `subscription` bigint DEFAULT NULL,
  `is_in_media` bit(1) DEFAULT NULL,
  `media_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `count_limit` int DEFAULT NULL,
  `ecircle` bit(1) DEFAULT NULL,
  `ecircle_template` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `area` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `fixed_price` decimal(19,2) DEFAULT NULL,
  `invoice_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  `marketing_ad_slots` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK41B804B9FAB47FBA` (`website_id`),
  KEY `FK41B804B92A5846F9` (`info_id`),
  KEY `FK41B804B97F21ADC2_idx` (`recommended_frequence_id`),
  KEY `FK41B804B97F21ADC2` (`recommended_frequence_id`),
  KEY `FK41B804B97208C55A` (`group_id`),
  CONSTRAINT `FK41B804B97208C55A` FOREIGN KEY (`group_id`) REFERENCES `business_group` (`id`),
  CONSTRAINT `FK41B804B97F21ADC2` FOREIGN KEY (`recommended_frequence_id`) REFERENCES `zeit_planer` (`id`),
  CONSTRAINT `FK_84u2p5m9ptk9lwwv2eh4u5w3t` FOREIGN KEY (`website_id`) REFERENCES `website` (`id`),
  CONSTRAINT `FK_onsk9ron7g0d2domluym7ubri` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKgossadmgt5lhlfb414ywg3ka` FOREIGN KEY (`group_id`) REFERENCES `business_group` (`id`),
  CONSTRAINT `FKhhlmonbjggsxosqpc759m1fpi` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKoqxk75dpixoni0jfusj75xv74` FOREIGN KEY (`recommended_frequence_id`) REFERENCES `zeit_planer` (`id`),
  CONSTRAINT `FKr19we9csjt87o91cgc50xjq0q` FOREIGN KEY (`website_id`) REFERENCES `website` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=587 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_date_based_pricing_model`
--

DROP TABLE IF EXISTS `newsletter_date_based_pricing_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_date_based_pricing_model` (
  `newsletter_date_based_pricing_models_id` bigint DEFAULT NULL,
  `date_based_pricing_model_id` bigint DEFAULT NULL,
  `date_based_pricing_models_idx` int DEFAULT NULL,
  KEY `FKE6BB3C99ECF1D2F` (`date_based_pricing_model_id`),
  KEY `FKt1d50e9dugse10jsaahx344sa` (`newsletter_date_based_pricing_models_id`),
  CONSTRAINT `FKE6BB3C99ECF1D2F` FOREIGN KEY (`date_based_pricing_model_id`) REFERENCES `date_based_pricing_model` (`id`),
  CONSTRAINT `FKkos8l8b03ggs1fv2pk2t0f47i` FOREIGN KEY (`date_based_pricing_model_id`) REFERENCES `date_based_pricing_model` (`id`),
  CONSTRAINT `FKt1d50e9dugse10jsaahx344sa` FOREIGN KEY (`newsletter_date_based_pricing_models_id`) REFERENCES `newsletter` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_date_based_subscribers_and_fixed_cost`
--

DROP TABLE IF EXISTS `newsletter_date_based_subscribers_and_fixed_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_date_based_subscribers_and_fixed_cost` (
  `newsletter_date_based_subscribers_and_fixed_costs_id` bigint DEFAULT NULL,
  `date_based_subscribers_and_fixed_cost_id` bigint DEFAULT NULL,
  `date_based_subscribers_and_fixed_costs_idx` int DEFAULT NULL,
  KEY `FK846BE4BFB846E79` (`date_based_subscribers_and_fixed_cost_id`),
  KEY `FKdshxcseacrmp3iiwyqbmgkhn7` (`newsletter_date_based_subscribers_and_fixed_costs_id`),
  CONSTRAINT `FK846BE4BFB846E79` FOREIGN KEY (`date_based_subscribers_and_fixed_cost_id`) REFERENCES `date_based_subscribers_and_fixed_cost` (`id`),
  CONSTRAINT `FKdshxcseacrmp3iiwyqbmgkhn7` FOREIGN KEY (`newsletter_date_based_subscribers_and_fixed_costs_id`) REFERENCES `newsletter` (`id`),
  CONSTRAINT `FKfc9lh8qti8p2c3ar3sdyjcqb0` FOREIGN KEY (`date_based_subscribers_and_fixed_cost_id`) REFERENCES `date_based_subscribers_and_fixed_cost` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_description`
--

DROP TABLE IF EXISTS `newsletter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_description` (
  `newsletter_description_list_id` bigint DEFAULT NULL,
  `description_id` bigint DEFAULT NULL,
  `description_list_idx` int DEFAULT NULL,
  KEY `FKhv2fkxicao2amyu5xvhoc1p6r` (`description_id`),
  CONSTRAINT `FKhv2fkxicao2amyu5xvhoc1p6r` FOREIGN KEY (`description_id`) REFERENCES `description` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_info_total`
--

DROP TABLE IF EXISTS `newsletter_info_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_info_total` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_keyword`
--

DROP TABLE IF EXISTS `newsletter_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_keyword` (
  `newsletter_keywords_id` bigint DEFAULT NULL,
  `keyword_id` bigint DEFAULT NULL,
  `keywords_idx` int DEFAULT NULL,
  KEY `FKc8sgxph1dkh5cv4imkv6197ih` (`keyword_id`),
  CONSTRAINT `FKc8sgxph1dkh5cv4imkv6197ih` FOREIGN KEY (`keyword_id`) REFERENCES `keyword` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_newsxproduct`
--

DROP TABLE IF EXISTS `newsletter_newsxproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_newsxproduct` (
  `newsletter_ad_products_id` bigint DEFAULT NULL,
  `newsxproduct_id` bigint DEFAULT NULL,
  `ad_products_idx` int DEFAULT NULL,
  KEY `FKo3s7s2rhwvms59v6ql1qv8gmw` (`newsxproduct_id`),
  CONSTRAINT `FKo3s7s2rhwvms59v6ql1qv8gmw` FOREIGN KEY (`newsxproduct_id`) REFERENCES `newsxproduct` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_offer`
--

DROP TABLE IF EXISTS `newsletter_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_offer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `agency_discount` double NOT NULL,
  `discount` double NOT NULL,
  `info_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `status_id` bigint DEFAULT NULL,
  `total_price` double NOT NULL,
  `sold_price` double DEFAULT NULL,
  `useradw_id` bigint DEFAULT NULL,
  `agency_id` bigint DEFAULT NULL,
  `invoice_to` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `po_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `product` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `salesman_id` bigint DEFAULT NULL,
  `is_archived` bit(1) DEFAULT NULL,
  `is_cancelled` bit(1) DEFAULT NULL,
  `campaign_period` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ad_ops_user_id` bigint DEFAULT NULL,
  `concept` decimal(19,2) DEFAULT NULL,
  `content` decimal(19,2) DEFAULT NULL,
  `diverse` decimal(19,2) DEFAULT NULL,
  `gross_clicks` bigint DEFAULT NULL,
  `gross_ctr` decimal(19,2) DEFAULT NULL,
  `gross_opening_rate` decimal(19,2) DEFAULT NULL,
  `gross_openings` bigint DEFAULT NULL,
  `gross_subscribers` bigint DEFAULT NULL,
  `net_clicks` bigint DEFAULT NULL,
  `net_ctr` decimal(19,2) DEFAULT NULL,
  `net_opening_rate` decimal(19,2) DEFAULT NULL,
  `net_openings` bigint DEFAULT NULL,
  `net_subscribers` bigint DEFAULT NULL,
  `report` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `report_remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `type` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `exclusive_discount` double DEFAULT NULL,
  `bundle_campaign_id` bigint DEFAULT NULL,
  `bundle_type` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `campaign_version` int DEFAULT NULL,
  `notes` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `FK936E53562A5846F9` (`info_id`),
  KEY `FK936E5356D05D84DA` (`useradw_id`),
  KEY `FK936E5356C1B8FF93` (`agency_id`),
  KEY `FK936E53567E654617` (`salesman_id`),
  KEY `FK936E5356BE5C611A` (`customer_id`),
  KEY `FK936E535629201F51` (`ad_ops_user_id`),
  KEY `FKi4prko8naeu3jh6xau50554ql` (`bundle_campaign_id`),
  CONSTRAINT `FK6t0f61fow24fmjy1jyfld1l03` FOREIGN KEY (`salesman_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK6vj19509f786mtooqiwght7m6` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK936E535629201F51` FOREIGN KEY (`ad_ops_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK936E53567E654617` FOREIGN KEY (`salesman_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK936E5356BE5C611A` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK936E5356C1B8FF93` FOREIGN KEY (`agency_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK936E5356D05D84DA` FOREIGN KEY (`useradw_id`) REFERENCES `useradw` (`id`),
  CONSTRAINT `FK9qkgabj37jpslnenliopb7u56` FOREIGN KEY (`ad_ops_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_exgy9mp6d0gra2sjacwdww983` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKi4prko8naeu3jh6xau50554ql` FOREIGN KEY (`bundle_campaign_id`) REFERENCES `bundle_campaign` (`id`),
  CONSTRAINT `FKjq2w7awgkwrhh4nmukh64ruun` FOREIGN KEY (`useradw_id`) REFERENCES `useradw` (`id`),
  CONSTRAINT `FKly81ko9om2cxfqtv8sa738wuk` FOREIGN KEY (`agency_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKmfqdes1bk7hbxocnkgvkhyyqi` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9745 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_offer_newsletter_send`
--

DROP TABLE IF EXISTS `newsletter_offer_newsletter_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_offer_newsletter_send` (
  `newsletter_offer_newsletter_list_id` bigint DEFAULT NULL,
  `newsletter_send_id` bigint DEFAULT NULL,
  `newsletter_list_idx` int DEFAULT NULL,
  KEY `FKFE65CC65F02E07AD` (`newsletter_send_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_offer_report_email`
--

DROP TABLE IF EXISTS `newsletter_offer_report_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_offer_report_email` (
  `newsletter_offer_report_emails_id` bigint DEFAULT NULL,
  `report_email_id` bigint DEFAULT NULL,
  `report_emails_idx` int DEFAULT NULL,
  KEY `FK726CFF1A54B775F1` (`report_email_id`),
  CONSTRAINT `FK726CFF1A54B775F1` FOREIGN KEY (`report_email_id`) REFERENCES `report_email` (`id`),
  CONSTRAINT `FKteyx21drd8xetkyq0d1qdek6s` FOREIGN KEY (`report_email_id`) REFERENCES `report_email` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_offer_task_log`
--

DROP TABLE IF EXISTS `newsletter_offer_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_offer_task_log` (
  `newsletter_offer_task_logs_id` bigint DEFAULT NULL,
  `task_log_id` bigint DEFAULT NULL,
  `task_logs_idx` int DEFAULT NULL,
  KEY `FK35A2FC5374F0334F` (`task_log_id`),
  CONSTRAINT `FK35A2FC5374F0334F` FOREIGN KEY (`task_log_id`) REFERENCES `task_log` (`id`),
  CONSTRAINT `FK8qwj7aha6eydt3mfp5afgoe6t` FOREIGN KEY (`task_log_id`) REFERENCES `task_log` (`id`),
  CONSTRAINT `FK_98va6xfa33abm2g41v3cxbes9` FOREIGN KEY (`task_log_id`) REFERENCES `task_log` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_pricing_model`
--

DROP TABLE IF EXISTS `newsletter_pricing_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_pricing_model` (
  `newsletter_pricing_models_id` bigint DEFAULT NULL,
  `pricing_model_id` bigint DEFAULT NULL,
  `pricing_models_idx` int DEFAULT NULL,
  KEY `FKC2A6306A28C5D56D` (`pricing_model_id`),
  CONSTRAINT `FKC2A6306A28C5D56D` FOREIGN KEY (`pricing_model_id`) REFERENCES `pricing_model` (`id`),
  CONSTRAINT `FKfyk2d9ava01ixfiv24lh2iuk5` FOREIGN KEY (`pricing_model_id`) REFERENCES `pricing_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_send`
--

DROP TABLE IF EXISTS `newsletter_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_send` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `date` datetime NOT NULL,
  `info_id` bigint DEFAULT NULL,
  `newsletter_id` bigint NOT NULL,
  `status_id` bigint DEFAULT NULL,
  `ad_slots` int DEFAULT NULL,
  `marketing_ad_status_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK25CB8F4E2A5846F9` (`info_id`),
  KEY `FK25CB8F4ED1981AB3` (`status_id`),
  KEY `newsletter_send_date_idx` (`date`),
  KEY `FK25CB8F4E7DF8E73A_idx` (`newsletter_id`),
  KEY `FKobkb5u6urm6sr7xlp9d46txdh` (`marketing_ad_status_id`),
  CONSTRAINT `FK25CB8F4E2A5846F9` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK25CB8F4E7DF8E73A` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletter` (`id`),
  CONSTRAINT `FK25CB8F4ED1981AB3` FOREIGN KEY (`status_id`) REFERENCES `newsletter_status` (`id`),
  CONSTRAINT `FK5xou5vbufu3pk6fc9hki3vqkp` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletter` (`id`),
  CONSTRAINT `FKkhakrjr7cdxnhisqo4j45e70r` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKobkb5u6urm6sr7xlp9d46txdh` FOREIGN KEY (`marketing_ad_status_id`) REFERENCES `newsletter_status` (`id`),
  CONSTRAINT `FKsf9pm29b1bu2yp9h1h2mnuvsi` FOREIGN KEY (`status_id`) REFERENCES `newsletter_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65529 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_send_cust_news_price`
--

DROP TABLE IF EXISTS `newsletter_send_cust_news_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_send_cust_news_price` (
  `newsletter_send_customer_coll_id` bigint DEFAULT NULL,
  `cust_news_price_id` bigint DEFAULT NULL,
  `customer_coll_idx` int DEFAULT NULL,
  KEY `FK6443EB5844AF7D4` (`cust_news_price_id`),
  KEY `newsl_se_cu_ne_pr_ne_se_cu_coll_id_idx` (`newsletter_send_customer_coll_id`),
  CONSTRAINT `FK6443EB5844AF7D4` FOREIGN KEY (`cust_news_price_id`) REFERENCES `cust_news_price` (`id`),
  CONSTRAINT `FKddsn87kqe9gbuc32x5cx8ado9` FOREIGN KEY (`cust_news_price_id`) REFERENCES `cust_news_price` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_service_charge`
--

DROP TABLE IF EXISTS `newsletter_service_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_service_charge` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `price` decimal(19,2) NOT NULL,
  `info_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKepw7aryxt3n2e2xjvf7o79ppm` (`info_id`),
  CONSTRAINT `FKepw7aryxt3n2e2xjvf7o79ppm` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_status`
--

DROP TABLE IF EXISTS `newsletter_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_subscription`
--

DROP TABLE IF EXISTS `newsletter_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_subscription` (
  `newsletter_subscription_list_id` bigint DEFAULT NULL,
  `subscription_id` bigint DEFAULT NULL,
  `subscription_list_idx` int DEFAULT NULL,
  KEY `FK90AAF2E3CA8F54BA` (`subscription_id`),
  CONSTRAINT `FK_ren73n5h92sapre8frkvpwsv4` FOREIGN KEY (`subscription_id`) REFERENCES `subscription` (`id`),
  CONSTRAINT `FKpx5iebhjhk5rtkgtyd91003ad` FOREIGN KEY (`subscription_id`) REFERENCES `subscription` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_target_group`
--

DROP TABLE IF EXISTS `newsletter_target_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_target_group` (
  `newsletter_target_group_list_id` bigint DEFAULT NULL,
  `target_group_id` bigint DEFAULT NULL,
  `target_group_list_idx` int DEFAULT NULL,
  KEY `FK6FDF34171433F917` (`target_group_id`),
  CONSTRAINT `FK1peg4eiwvlycexnnd2tdw1n7c` FOREIGN KEY (`target_group_id`) REFERENCES `target_group` (`id`),
  CONSTRAINT `FK_kcmgt4aeaycl81a60vbpmii98` FOREIGN KEY (`target_group_id`) REFERENCES `target_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_topic`
--

DROP TABLE IF EXISTS `newsletter_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_topic` (
  `newsletter_topics_id` bigint NOT NULL,
  `topic_id` bigint DEFAULT NULL,
  KEY `FK8ykwlm6b3xtbyeb82j4rhvs2i` (`topic_id`),
  KEY `FKax6orv4b6n978y60p6ee0jb85` (`newsletter_topics_id`),
  CONSTRAINT `FK8ykwlm6b3xtbyeb82j4rhvs2i` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`),
  CONSTRAINT `FKax6orv4b6n978y60p6ee0jb85` FOREIGN KEY (`newsletter_topics_id`) REFERENCES `newsletter` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsxproduct`
--

DROP TABLE IF EXISTS `newsxproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsxproduct` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `recommended_price` decimal(19,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK65do3x48lc6xuv8cmsj2vghu7` (`product_id`),
  CONSTRAINT `FK65do3x48lc6xuv8cmsj2vghu7` FOREIGN KEY (`product_id`) REFERENCES `ad_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `object_info`
--

DROP TABLE IF EXISTS `object_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `comment` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `creator_id` bigint DEFAULT NULL,
  `dart_comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `date_created` datetime NOT NULL,
  `date_import` datetime DEFAULT NULL,
  `date_modification` datetime NOT NULL,
  `external_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `modifier_id` bigint DEFAULT NULL,
  `media_suite_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_suite_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `custom_field_id` bigint DEFAULT NULL,
  `custom_field_option_id` bigint DEFAULT NULL,
  `ms_export_date` datetime DEFAULT NULL,
  `ms_import_date` datetime DEFAULT NULL,
  `extra_field_id` bigint DEFAULT NULL,
  `extra_field_one` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `extra_field_remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `extra_field_two` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKB3DAA9AEA4244B6E` (`modifier_id`),
  KEY `FKB3DAA9AE525F51F9` (`creator_id`),
  KEY `object_info_date_import_idx` (`date_import`),
  KEY `object_info_id_idx` (`id`),
  KEY `FKB3DAA9AE65429110` (`custom_field_option_id`),
  KEY `FKB3DAA9AEF417B777` (`custom_field_id`),
  CONSTRAINT `FK6msde0h63xqxut09ypu7733p4` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_field` (`id`),
  CONSTRAINT `FK_n2yg3k0tfhtost2splo7cq75t` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_qj152s78vwjoyonpwl0b8tqdd` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKaypc0kwjwttygnjf6uybygsth` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKB3DAA9AE65429110` FOREIGN KEY (`custom_field_option_id`) REFERENCES `custom_field_option` (`id`),
  CONSTRAINT `FKB3DAA9AEF417B777` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_field` (`id`),
  CONSTRAINT `FKin0ue1jvqvmr4tibuanpr54x7` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKs9bl34cihg06jb1g0fan37a9y` FOREIGN KEY (`custom_field_option_id`) REFERENCES `custom_field_option` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=588300 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `office`
--

DROP TABLE IF EXISTS `office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `address_id` bigint DEFAULT NULL,
  `info_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `company_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC3373EBC6EBF151A` (`address_id`),
  KEY `FKC3373EBC2A5846F9` (`info_id`),
  KEY `FKC3373EBC69595C7A` (`company_id`),
  CONSTRAINT `FK_5u9cq4ceydcfmyhks3sg9cq49` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK_mlsa2m6po5222mgtojis7rnow` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FKak81m3gkj8xq5t48xuflbj0kn` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FKC3373EBC69595C7A` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKdsdcr9bu6r4egtq42y4ntsphs` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKqfmw2uo0g1kab0x3fb0uq5wkw` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `other_products`
--

DROP TABLE IF EXISTS `other_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `other_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `customer_id` bigint NOT NULL,
  `fixed_price` decimal(19,2) NOT NULL,
  `info_id` bigint DEFAULT NULL,
  `invoice_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `order_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `product_id` bigint NOT NULL,
  `salesman_id` bigint NOT NULL,
  `sold_date` datetime NOT NULL,
  `website_id` bigint NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `hide` bit(1) DEFAULT NULL,
  `soldpi` bigint DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `tkp` decimal(19,2) DEFAULT NULL,
  `agency_id` bigint DEFAULT NULL,
  `agency_discount` decimal(19,2) DEFAULT NULL,
  `branch_id` bigint DEFAULT NULL,
  `business_id` bigint DEFAULT NULL,
  `discount` decimal(19,2) DEFAULT NULL,
  `gross_amount` decimal(19,2) DEFAULT NULL,
  `invoice_to` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `net_amount` decimal(19,2) DEFAULT NULL,
  `po_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK733475B37E654617` (`salesman_id`),
  KEY `FK733475B3FAB47FBA` (`website_id`),
  KEY `FK733475B32A5846F9` (`info_id`),
  KEY `FK733475B3BE5C611A` (`customer_id`),
  KEY `FK733475B3F298E597` (`product_id`),
  KEY `FK733475B3886BDDA` (`business_id`),
  KEY `FK733475B3C1B8FF93` (`agency_id`),
  KEY `FK733475B34821E29A` (`branch_id`),
  CONSTRAINT `FK2rdm7jxkwn5yp901063x7x908` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK733475B34821E29A` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FK733475B3886BDDA` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`),
  CONSTRAINT `FK733475B3C1B8FF93` FOREIGN KEY (`agency_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_6cuuqbq25ysr0g6ips1r4tm7b` FOREIGN KEY (`website_id`) REFERENCES `website` (`id`),
  CONSTRAINT `FK_f1f0vwqt2g973clfrj7tcniv6` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_o5mi1lfyttmf1m0ences2tk4g` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKag7rytvlqbkhja7txvs5sxpwp` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FKgudh8emtmrrx3d69a4msvrjcq` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`),
  CONSTRAINT `FKkcp2xtemx3dxf5fa4vsr4kc0u` FOREIGN KEY (`agency_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKn98rp9oeuuhjy340dy30a3ytx` FOREIGN KEY (`website_id`) REFERENCES `website` (`id`),
  CONSTRAINT `FKoskdj08lo42k0l97d4jyj61gu` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=838 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `placement`
--

DROP TABLE IF EXISTS `placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `placement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `ad_sense_targeting_locale` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `dfp_id` varchar(255) NOT NULL,
  `info_id` bigint DEFAULT NULL,
  `inventory_status` varchar(255) DEFAULT NULL,
  `is_ad_sense_targeting_enabled` bit(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `placement_code` varchar(255) NOT NULL,
  `targeting_ad_location` varchar(255) DEFAULT NULL,
  `targeting_description` varchar(255) DEFAULT NULL,
  `targeting_site_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6ADE12E52A5846F9` (`info_id`),
  CONSTRAINT `FK6ADE12E52A5846F9` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKdt8aik4w7mtdx3k75xerc15ff` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `placement_ad_unit`
--

DROP TABLE IF EXISTS `placement_ad_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `placement_ad_unit` (
  `placement_targeted_ad_unit_id` bigint NOT NULL,
  `ad_unit_id` bigint DEFAULT NULL,
  `targeted_ad_unit_idx` int DEFAULT NULL,
  KEY `FK65C5A8C66A9F5601` (`ad_unit_id`),
  CONSTRAINT `FK65C5A8C66A9F5601` FOREIGN KEY (`ad_unit_id`) REFERENCES `ad_unit` (`id`),
  CONSTRAINT `FKss4etdgwsqtmvg5j0s8j0gxlu` FOREIGN KEY (`ad_unit_id`) REFERENCES `ad_unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pricing_model`
--

DROP TABLE IF EXISTS `pricing_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricing_model` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `ad_product_id` bigint NOT NULL,
  `area` varchar(7) NOT NULL,
  `cpm` decimal(19,2) DEFAULT NULL,
  `fixed_price` decimal(19,2) DEFAULT NULL,
  `info_id` bigint DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `model_type` varchar(6) NOT NULL,
  `concept` decimal(19,2) DEFAULT NULL,
  `content` decimal(19,2) DEFAULT NULL,
  `diverse` decimal(19,2) DEFAULT NULL,
  `plus` decimal(19,2) DEFAULT NULL,
  `premium_advertorial` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKB467917094814B33` (`ad_product_id`),
  KEY `FKB46791702A5846F9` (`info_id`),
  CONSTRAINT `FKB46791702A5846F9` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKB467917094814B33` FOREIGN KEY (`ad_product_id`) REFERENCES `ad_product` (`id`),
  CONSTRAINT `FKfnkasdaf7dfdb7eubuatos5aw` FOREIGN KEY (`ad_product_id`) REFERENCES `ad_product` (`id`),
  CONSTRAINT `FKrn80405hw0svijwlacnb2h7o6` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pricing_model_business_group`
--

DROP TABLE IF EXISTS `pricing_model_business_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricing_model_business_group` (
  `pricing_model_groups_id` bigint DEFAULT NULL,
  `business_group_id` bigint DEFAULT NULL,
  `groups_idx` int DEFAULT NULL,
  KEY `FK432517EF96C4EEF9` (`business_group_id`),
  CONSTRAINT `FK432517EF96C4EEF9` FOREIGN KEY (`business_group_id`) REFERENCES `business_group` (`id`),
  CONSTRAINT `FK7ru4sv3go66qo0qhca4ydyosw` FOREIGN KEY (`business_group_id`) REFERENCES `business_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pricing_model_carrier`
--

DROP TABLE IF EXISTS `pricing_model_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricing_model_carrier` (
  `pricing_model_carrier_id` bigint DEFAULT NULL,
  `carrier_id` bigint DEFAULT NULL,
  `carrier_idx` int DEFAULT NULL,
  KEY `FKABD1A729B456069A` (`carrier_id`),
  CONSTRAINT `FKABD1A729B456069A` FOREIGN KEY (`carrier_id`) REFERENCES `carrier` (`id`),
  CONSTRAINT `FKqje37t6yvlktledcogu27s86i` FOREIGN KEY (`carrier_id`) REFERENCES `carrier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `info_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `FK3C79388A2A5846F9` (`info_id`),
  CONSTRAINT `FK1du7fc6aqn3p16mxs3l5np30u` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK_ebeos5dsit27rmmfcj2k8qfea` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `info_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `FKC84C55342A5846F9` (`info_id`),
  CONSTRAINT `FK_cho6rksjh47opekhqdoa64tu9` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKldoe3boqv03obh58kdkh4nk7q` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `report_email`
--

DROP TABLE IF EXISTS `report_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_email` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `member_of` varchar(8) DEFAULT NULL,
  `type` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1067 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `requestmapadw`
--

DROP TABLE IF EXISTS `requestmapadw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requestmapadw` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `config_attribute` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `authority` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_irsamgnera6angm0prq1kemt2` (`authority`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role_hierarchy_entry`
--

DROP TABLE IF EXISTS `role_hierarchy_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_hierarchy_entry` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `entry` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_k1j0pacdfek7h4o3te5ugab8e` (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roleadw`
--

DROP TABLE IF EXISTS `roleadw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roleadw` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `authority` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authority` (`authority`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roleadw_people`
--

DROP TABLE IF EXISTS `roleadw_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roleadw_people` (
  `roleadw_id` bigint NOT NULL,
  `useradw_id` bigint NOT NULL,
  PRIMARY KEY (`roleadw_id`,`useradw_id`),
  KEY `FK274D297024BD54BA` (`roleadw_id`),
  KEY `FK274D2970D05D84DA` (`useradw_id`),
  CONSTRAINT `FK274D297024BD54BA` FOREIGN KEY (`roleadw_id`) REFERENCES `roleadw` (`id`),
  CONSTRAINT `FK274D2970D05D84DA` FOREIGN KEY (`useradw_id`) REFERENCES `useradw` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roleadw_useradw`
--

DROP TABLE IF EXISTS `roleadw_useradw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roleadw_useradw` (
  `authorities_id` bigint NOT NULL,
  `people_id` bigint NOT NULL,
  PRIMARY KEY (`people_id`,`authorities_id`),
  KEY `FKE22EDA484424B909` (`people_id`),
  KEY `FKE22EDA4829B78FC2` (`authorities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `media_subscription` bigint NOT NULL,
  `month` int NOT NULL,
  `newsletter_id` bigint NOT NULL,
  `real_subscription` bigint NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7325 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `target_group`
--

DROP TABLE IF EXISTS `target_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `info_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `FKF38A9A512A5846F9` (`info_id`),
  CONSTRAINT `FK_ly9od5y0j7v43kht7bca6e2pq` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKqs5wvjswpyd4ss8alwx7jux8n` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `targeted_ad_units`
--

DROP TABLE IF EXISTS `targeted_ad_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targeted_ad_units` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `ad_unit_id` bigint NOT NULL,
  `include_descendants` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5EB161C26A9F5601` (`ad_unit_id`),
  CONSTRAINT `FK5EB161C26A9F5601` FOREIGN KEY (`ad_unit_id`) REFERENCES `ad_unit` (`id`),
  CONSTRAINT `FKasep2wpvm0s8hftegghvf7pws` FOREIGN KEY (`ad_unit_id`) REFERENCES `ad_unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4353049 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `task_log`
--

DROP TABLE IF EXISTS `task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `cause` varchar(255) DEFAULT NULL,
  `cause_message` longtext,
  `date_created` datetime DEFAULT NULL,
  `message` longtext,
  `status` varchar(255) DEFAULT NULL,
  `task_of` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8775 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `third_party`
--

DROP TABLE IF EXISTS `third_party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `third_party` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `ad_product_id` bigint NOT NULL,
  `bank_received_date` datetime DEFAULT NULL,
  `booking_date` datetime NOT NULL,
  `branch_id` bigint NOT NULL,
  `business_id` bigint NOT NULL,
  `business_share` decimal(19,2) NOT NULL,
  `credit_note` varchar(255) NOT NULL,
  `end_date` datetime NOT NULL,
  `gross_including_vat_amount` decimal(19,2) DEFAULT NULL,
  `info_id` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `net_business_share_amount` decimal(19,2) NOT NULL,
  `newsletter_id` bigint DEFAULT NULL,
  `received_date` datetime NOT NULL,
  `salesman_id` bigint NOT NULL,
  `start_date` datetime NOT NULL,
  `subject` varchar(255) NOT NULL,
  `third_party_id` bigint NOT NULL,
  `third_party_share` decimal(19,2) NOT NULL,
  `third_party_share_amount` decimal(19,2) DEFAULT NULL,
  `total_net_amount` decimal(19,2) NOT NULL,
  `vat` decimal(19,2) NOT NULL,
  `website_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1A321A0E886BDDA` (`business_id`),
  KEY `FK1A321A0E94814B33` (`ad_product_id`),
  KEY `FK1A321A0E7E654617` (`salesman_id`),
  KEY `FK1A321A0E2A5846F9` (`info_id`),
  KEY `FK1A321A0EFAB47FBA` (`website_id`),
  KEY `FK1A321A0E4821E29A` (`branch_id`),
  KEY `FK1A321A0E946358EA` (`third_party_id`),
  KEY `FK1A321A0E7DF8E73A` (`newsletter_id`),
  CONSTRAINT `FK1A321A0E2A5846F9` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK1A321A0E4821E29A` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FK1A321A0E7DF8E73A` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletter` (`id`),
  CONSTRAINT `FK1A321A0E7E654617` FOREIGN KEY (`salesman_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK1A321A0E886BDDA` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`),
  CONSTRAINT `FK1A321A0E946358EA` FOREIGN KEY (`third_party_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK1A321A0E94814B33` FOREIGN KEY (`ad_product_id`) REFERENCES `ad_product` (`id`),
  CONSTRAINT `FK1A321A0EFAB47FBA` FOREIGN KEY (`website_id`) REFERENCES `website` (`id`),
  CONSTRAINT `FK8lmq505jidtpos1fos66ldama` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletter` (`id`),
  CONSTRAINT `FKa1u7u3yf4ijbno6rkijooyf1m` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKboqxwn1e34howeycoxjfgvuir` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FKhe4lxess8oxlkgovu6fkgnumd` FOREIGN KEY (`ad_product_id`) REFERENCES `ad_product` (`id`),
  CONSTRAINT `FKicx8x39j9lri8y8vnutbdw7y` FOREIGN KEY (`third_party_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKlhhy8ach089j0oe0nvvhen367` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`),
  CONSTRAINT `FKmcnw8qogt15aag5jeagfrhrd2` FOREIGN KEY (`website_id`) REFERENCES `website` (`id`),
  CONSTRAINT `FKodyxd1op0c3dnakt66d1xdd6e` FOREIGN KEY (`salesman_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=557 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ticker_tape`
--

DROP TABLE IF EXISTS `ticker_tape`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticker_tape` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `booked` decimal(19,2) NOT NULL,
  `date` datetime NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1223D937F7634DFA` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `info_id` bigint DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_mbunn9erv8nmf5lk1r2nu0nex` (`name`),
  KEY `FK5blfi378wyjsyvu0b6pdjdw7b` (`info_id`),
  CONSTRAINT `FK5blfi378wyjsyvu0b6pdjdw7b` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `boss_id` bigint DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `enabled` bit(1) NOT NULL,
  `fax` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `info_id` bigint DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `login` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `office_id` bigint DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `salutation` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ad_manager_id` bigint DEFAULT NULL,
  `business_id` bigint DEFAULT NULL,
  `ticker_email` bit(1) DEFAULT NULL,
  `is_in_media_online` bit(1) DEFAULT NULL,
  `is_in_media_print` bit(1) DEFAULT NULL,
  `email_signature` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `is_dfp_user` bit(1) DEFAULT NULL,
  `media_suite_short_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `branch_id` bigint DEFAULT NULL,
  `dfp_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `org_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `old_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `account_non_expired` bit(1) NOT NULL,
  `account_non_locked` bit(1) NOT NULL,
  `credentials_non_expired` bit(1) NOT NULL,
  `initials` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK36EBCB68B145A` (`office_id`),
  KEY `FK36EBCB2A5846F9` (`info_id`),
  KEY `FK36EBCB43F4318` (`boss_id`),
  KEY `FK36EBCB36C96C74` (`ad_manager_id`),
  KEY `FK36EBCB886BDDA` (`business_id`),
  KEY `FK36EBCB4821E29A` (`branch_id`),
  CONSTRAINT `FK36EBCB36C96C74` FOREIGN KEY (`ad_manager_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK36EBCB4821E29A` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FK36EBCB886BDDA` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`),
  CONSTRAINT `FK4xigqfhyelwj2n5psmxapdr0o` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`),
  CONSTRAINT `FK6k6dxsrlf6ykqg88u4pepw9xu` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK9yy0ya980j002yvtxi9r7kv6b` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FK_8cr1cnssov8yndrdop7hmlbpt` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FK_8svxjntf9vrfou466n67w93x3` FOREIGN KEY (`boss_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_ync1as64ccubjw1kf5irpe8t` FOREIGN KEY (`office_id`) REFERENCES `office` (`id`),
  CONSTRAINT `FKglpss6ay3o1ducoby1kscjy0h` FOREIGN KEY (`boss_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKmrlaeiw7ten8d3sjejpif4tyf` FOREIGN KEY (`office_id`) REFERENCES `office` (`id`),
  CONSTRAINT `FKo0w1moaevyp6qy81fmaaki44j` FOREIGN KEY (`ad_manager_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=422 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_business_group`
--

DROP TABLE IF EXISTS `user_business_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_business_group` (
  `user_groups_id` bigint DEFAULT NULL,
  `business_group_id` bigint DEFAULT NULL,
  `groups_idx` int DEFAULT NULL,
  KEY `FK76505C3496C4EEF9` (`business_group_id`),
  CONSTRAINT `FK76505C3496C4EEF9` FOREIGN KEY (`business_group_id`) REFERENCES `business_group` (`id`),
  CONSTRAINT `FKg83q00unvmbhe5h8xhtuyimnx` FOREIGN KEY (`business_group_id`) REFERENCES `business_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_keyword`
--

DROP TABLE IF EXISTS `user_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_keyword` (
  `user_keywords_id` bigint DEFAULT NULL,
  `keyword_id` bigint DEFAULT NULL,
  `keywords_idx` int DEFAULT NULL,
  KEY `FKbdfd68yokadl15t85vpp55ocn` (`keyword_id`),
  CONSTRAINT `FKbdfd68yokadl15t85vpp55ocn` FOREIGN KEY (`keyword_id`) REFERENCES `keyword` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_report`
--

DROP TABLE IF EXISTS `user_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_report` (
  `user_reports_id` bigint DEFAULT NULL,
  `report_id` bigint DEFAULT NULL,
  `reports_idx` int DEFAULT NULL,
  KEY `FKF4859C287CA1E15A` (`report_id`),
  CONSTRAINT `FK3oeujs29l2fmgcliq09mr57xc` FOREIGN KEY (`report_id`) REFERENCES `report` (`id`),
  CONSTRAINT `FK_lvb3pl22ctt913i5hkv1au3h6` FOREIGN KEY (`report_id`) REFERENCES `report` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  `version` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_apcc8lxk2xnug8377fatvbn04` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_it77eq964jhfqtu54081ebtio` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_website`
--

DROP TABLE IF EXISTS `user_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_website` (
  `user_controll_websites_id` bigint DEFAULT NULL,
  `website_id` bigint DEFAULT NULL,
  `controll_websites_idx` int DEFAULT NULL,
  KEY `FKA3E97827FAB47FBA` (`website_id`),
  CONSTRAINT `FK_hj44j1bapqe278dlp8qxdofdb` FOREIGN KEY (`website_id`) REFERENCES `website` (`id`),
  CONSTRAINT `FKlro9gatapt4q4nyqqaodm8yfn` FOREIGN KEY (`website_id`) REFERENCES `website` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `useradw`
--

DROP TABLE IF EXISTS `useradw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useradw` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `company` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ident_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `info_id` bigint NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `passwd` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `salutation` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `email_signature` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `account_non_expired` bit(1) DEFAULT NULL,
  `account_non_locked` bit(1) DEFAULT NULL,
  `credentials_non_expired` bit(1) DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `group_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `default_mail_send` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `FKF73AF5092A5846F9` (`info_id`),
  CONSTRAINT `FK_g5i0xt5qe50kfwinxqj2x94aw` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKhbw4qbli6q1egpi6bpwko7a8` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `useradw_roleadw`
--

DROP TABLE IF EXISTS `useradw_roleadw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useradw_roleadw` (
  `useradw_authorities_id` bigint NOT NULL,
  `roleadw_id` bigint DEFAULT NULL,
  KEY `FKB07F1F48772135B8` (`useradw_authorities_id`),
  KEY `FKB07F1F4824BD54BA` (`roleadw_id`),
  CONSTRAINT `FK119bclrvg0rb7j89v3wdbw4xu` FOREIGN KEY (`roleadw_id`) REFERENCES `roleadw` (`id`),
  CONSTRAINT `FK_3c0fbd5drplxvufk3dfwn6r8k` FOREIGN KEY (`roleadw_id`) REFERENCES `roleadw` (`id`),
  CONSTRAINT `FK_ggcvhb97mg0h49g7sssgy650k` FOREIGN KEY (`useradw_authorities_id`) REFERENCES `useradw` (`id`),
  CONSTRAINT `FKB07F1F4824BD54BA` FOREIGN KEY (`roleadw_id`) REFERENCES `roleadw` (`id`),
  CONSTRAINT `FKB07F1F48772135B8` FOREIGN KEY (`useradw_authorities_id`) REFERENCES `useradw` (`id`),
  CONSTRAINT `FKqurup1fj68pb008k6kc378jtl` FOREIGN KEY (`useradw_authorities_id`) REFERENCES `useradw` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `website`
--

DROP TABLE IF EXISTS `website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `info_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `office_id` bigint DEFAULT NULL,
  `branch_id` bigint DEFAULT NULL,
  `is_in_media` bit(1) DEFAULT NULL,
  `media_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK48F9E09B2A5846F9` (`info_id`),
  KEY `FK48F9E09B68B145A` (`office_id`),
  KEY `FK48F9E09B4821E29A` (`branch_id`),
  KEY `website_name_idx` (`name`),
  CONSTRAINT `FK48F9E09B4821E29A` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FK_j62dfh0j5ttgkd8xgxv6e7wx1` FOREIGN KEY (`office_id`) REFERENCES `office` (`id`),
  CONSTRAINT `FK_o9ahhxhm2t9hiskpfxf24kg4r` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKa5wdkmuen2jkq1fro1swb2eo4` FOREIGN KEY (`office_id`) REFERENCES `office` (`id`),
  CONSTRAINT `FKi8dlx3titabt893xbc2gjih16` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKic7ntnyanu51ukrydm3qsxji8` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `website_business`
--

DROP TABLE IF EXISTS `website_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_business` (
  `website_business_list_id` bigint DEFAULT NULL,
  `business_id` bigint DEFAULT NULL,
  `business_list_idx` int DEFAULT NULL,
  KEY `FKABA38EE4886BDDA` (`business_id`),
  CONSTRAINT `FK8ebg6td2xq0jmrc345734f5n8` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`),
  CONSTRAINT `FK_4kd903o55bttl9xw8vp6b0684` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `website_country`
--

DROP TABLE IF EXISTS `website_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_country` (
  `website_country_list_id` bigint DEFAULT NULL,
  `country_id` bigint DEFAULT NULL,
  `country_list_idx` int DEFAULT NULL,
  KEY `FKAC3013F25FAAD9DA` (`country_id`),
  CONSTRAINT `FK9qaqkcsuywcoeojydtrrdjdt0` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `FK_cyemnr020fmagmd9tm2d43r7t` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `website_description`
--

DROP TABLE IF EXISTS `website_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_description` (
  `website_description_list_id` bigint DEFAULT NULL,
  `description_id` bigint DEFAULT NULL,
  `description_list_idx` int DEFAULT NULL,
  KEY `FKox53oomit62klonoy8cq6at72` (`description_id`),
  CONSTRAINT `FKox53oomit62klonoy8cq6at72` FOREIGN KEY (`description_id`) REFERENCES `description` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `website_keyword`
--

DROP TABLE IF EXISTS `website_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_keyword` (
  `website_keywords_id` bigint DEFAULT NULL,
  `keyword_id` bigint DEFAULT NULL,
  `keywords_idx` int DEFAULT NULL,
  KEY `FKmjw3ahfsh09rnwmpswfmmifw1` (`keyword_id`),
  CONSTRAINT `FKmjw3ahfsh09rnwmpswfmmifw1` FOREIGN KEY (`keyword_id`) REFERENCES `keyword` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zeit_planer`
--

DROP TABLE IF EXISTS `zeit_planer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zeit_planer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `info_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `in_newsletter_list` bit(1) DEFAULT NULL,
  `in_search_list` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9EBF1C5F2A5846F9` (`info_id`),
  CONSTRAINT `FK_tb9r4afa9uud8fam3bukexico` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`),
  CONSTRAINT `FKmp20d42gnjwk20cuvunfjnrtd` FOREIGN KEY (`info_id`) REFERENCES `object_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-11 14:51:24
