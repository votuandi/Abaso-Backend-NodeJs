-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: abaso_database
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `sapo` longtext,
  `pdf` varchar(256) DEFAULT NULL,
  `img` varchar(256) DEFAULT NULL,
  `createDate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'Cách viết chữ lên bánh sinh nhật','Với những ai yêu thích bánh kem, ngoài việc làm sao để có được chiếc bánh thơm ngon chất lượng thì khâu trang trí cũng cực kỳ quan trọng để bánh trở nên bắt mắt, ấn tượng, đặc biệt là công đoạn viết những thông điệp bằng chữ viết. Nếu vẫn còn chưa tự tin với việc này, hãy cùng tham khảo ngay kỹ thuật viết chữ trên bánh kem khá đơn giản mà trường Trung cấp CET hướng dẫn dưới đây nhé!','images/sp_1664098252565_b8428023-1ec7-4ef7-aa3a-7e1044a15180.pdf','images/sp_1664098253551_1674d7e7-7bab-4f85-9b5d-6327bb4d99bd.png','2022-09-25'),(2,'Hướng dẫn vẽ hình lên bánh sinh nhật cực đơn giản mà ấn tượng','Bánh kem là thứ không thể thiếu trong mỗi dịp sinh nhật. Nếu trước đây, bạn thường đặt bánh kem ngoài hàng thì nay, bạn có thể tự làm bánh tại nhà, thậm chí còn có thể in hình yêu thích lên chiếc bánh đó nữa.','images/sp_1664098460558_263bc146-bcf5-4945-9a11-0b41c38df820.pdf','images/sp_1664098461579_4becaf7d-343a-4e91-8b32-692a1701725e.png','2022-09-25'),(3,'Công nghệ sản xuất socola 3D cực độc','Một công ty in 3D của Nhật Bản đang nổi lên kế hoạch sản xuất socola với hình dáng mặt người tặng chào bán Valentine 2013.','images/sp_1664098537623_391e1c59-2cc9-4e13-a98c-6e1f7f128521.pdf','images/sp_1664098538476_f6f95686-a5cb-4039-b512-47720d2f7e0a.png','2022-09-25');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` longtext,
  `answer` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (6,'Máy vẽ có dễ sử dụng không?','Máy vẽ mang đễn giải pháp vẽ hình, viết chữ tuyệt vời theo ý thích, rất dễ sử dụng.'),(7,'Máy chà láng có dễ sử dụng không?','Máy chà láng rất dễ sử dụng và tiện lợi, giúp quý khách láng bánh đạt chuẩn nhà hàng trong chưa đầy 1 phút.'),(8,'Tôi muốn được tư vấn trực tiếp','Quý khách có thể nhắn cho ABASO số điện thoại cần tư vấn vào khung chat để nhân viên ABASO sẽ gọi lại tư vấn ngay cho quý khách'),(9,'ABASO có bao nhiêu chi nhánh','Hiện tại ABASO có 3 chi nhánh:\n- TPHCM: 47, đường 215, P.Tân Phú, TP Thủ Đức\n- TPHCM: 66i, Gò Cát, P. Phú Hữu, TP Thủ Đức\n- Đồng Tháp: Tân Khánh Trung, Lấp Vò, Đồng Tháp'),(10,'Tôi muốn đến xem Demo Máy trực tiếp, thực tế phải làm như thế nào?','1. Quý khách cần liên hệ vào hotline: 0366696008 của ABASO để đặt lịch hẹn.\n2. Quý khách đến địa chỉ của chúng tôi theo bản đồ.\n3. Nếu cần Demo theo yêu cầu, quý khách vui lòng chuẩn bị dụng cụ, đồ đạc, kem, bánh theo yêu cầu của mình.');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `intro` longtext,
  `property_names` longtext,
  `details` longtext,
  `additional_information` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Abaso Cake Art','V.01','Mua Máy Vẽ Bánh Tự Động giá tốt bảo hành chính hãng lên đến 2 năm, 1 đổi 1 trong 30 ngày tại ABASO','{\"0\":\"Kích thước máy\",\"1\":\"Loại màn hình\"}','{\"videos\":{\"0\":\"images/sp_1662622838533_e0ef8309-4d63-4742-9c27-1bbf7ad0c36e.mp4\",\"1\":\"images/sp_1662622840797_6f048b0d-cbda-4775-b841-126e02e7983f.mp4\"},\"images\":{},\"text\":null}','{\"Weight\":\"12kg\",\"Size\":\"12kg\",\"Machine size\":\"Size in 15cm, Size in 20cm, Size in 25cm\",\"Screen\":\"Điều khiển nút, Màn hình cảm ứng, Điều khiển bằng điện thoại\"}'),(2,'Máy Chà Láng Bánh ABASO','','Mua Máy Chà Láng Tự Động giá tốt bảo hành chính hãng lên đến 2 năm, 1 đổi 1 trong 30 ngày tại ABASO','{}','{\"videos\":{},\"images\":{\"0\":\"images/sp_1662623374683_affd3028-8f80-418f-a8aa-4666a0ef91f6.jpg\",\"1\":\"images/sp_1662623375447_29ce4e23-6651-4cab-acd2-fb90cee537f1.png\"},\"text\":null}','{\"Bộ điều khiển dao\":\"Cơ, Motor\"}');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subproduct`
--

DROP TABLE IF EXISTS `subproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `src` mediumtext,
  `intro` longtext,
  `properties` longtext,
  `infor` longtext,
  `origin_price` int(11) DEFAULT NULL,
  `final_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `subproduct_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subproduct`
--

LOCK TABLES `subproduct` WRITE;
/*!40000 ALTER TABLE `subproduct` DISABLE KEYS */;
INSERT INTO `subproduct` VALUES (1,1,'ABSMCAV1S','STANDARD','images/sp_1662622842662_993e5e10-4056-4d12-bcd8-d5ef9d9bf791.jpg','{\"0\":\"Tặng kèm 5 USB có sẵn 100+ Mẫu (Cập nhật liên tục)\",\"1\":\"Gói update 2 năm\",\"2\":\"Hỗ trợ cập nhật 100 mẫu theo yêu cầu MIỄN PHÍ\",\"3\":\"Kích thước ảnh in tối đa 15cm\"}','{\"0\":\"Size in 15cm\",\"1\":\"Điều khiển nút\"}','{\"0\":\"Khổ máy: Máy có thể chứa bánh tiêu chuẩn là 20cm (Quá khổ tối đa 25cm)\",\"1\":\"Vùng làm việc: Máy có thể vẽ (viết) trong vùng 15cmx15cm\",\"2\":\"Được trang bị màn hình LCD điều khiển bằng nút vặn giúp thao tác tiện lợi nhanh chóng, đơn giản hiệu quả.\"}',15000000,13500000),(2,1,'ABSMCA1M','PROFESSIONAL','images/sp_1662622974586_480fcc29-4371-48a2-97ea-87ec0158186e.jpg','{\"0\":\"Tặng kèm 10 USB có sẵn 200+ Mẫu\",\"1\":\"Gói update vĩnh viễn\",\"2\":\"Hỗ trợ cập nhật 200 mẫu theo yêu cầu MIỄN PHÍ\",\"3\":\"Màn hình cảm ứng, kích thước in tối đa 20cm\"}','{\"0\":\"Size in 20cm\",\"1\":\"Màn hình cảm ứng\"}','{\"0\":\"Khổ máy: Máy có thể chứa bánh tiêu chuẩn là 25cm (Quá khổ tối đa 30cm)\",\"1\":\"Vùng làm việc: Máy có thể vẽ (viết) trong vùng 20cmx20cm\",\"2\":\"Được trang bị màn hình cảm biến tiên tiến, hiện đại giúp thao tác dễ dàng tiện lợi hơn nữa.\"}',17500000,15000000),(3,1,'ABSMCA1L','PREMIUM','images/sp_1662623058844_f227132e-fc91-4f78-b6c7-785644291262.jpg','{\"0\":\"Tặng kèm 10 USB có sẵn 300+ Mẫu\",\"1\":\"Gói update vĩnh viễn\",\"2\":\"Hỗ trợ cập nhật 300 mẫu theo yêu cầu MIỄN PHÍ\",\"3\":\"Điều khiển bằng điện thoại, kích thước tối đa 25cm\"}','{\"0\":\"Size in 25cm\",\"1\":\"Điều khiển bằng điện thoại\"}','{\"0\":\"Khổ máy: Máy có thể chứa bánh tiêu chuẩn là 30cm (Quá khổ tối đa 40cm)\",\"1\":\"Vùng làm việc: Máy có thể vẽ (viết) trong vùng 25cmx25cm\",\"2\":\"Được trang bị màn hình cảm biến tiên tiến kết nối trực tiếp với điện thoại thông minh, điều khiển máy thông qua điện thoại.\"}',20000000,18500000),(4,2,'','BÁN TỰ ĐỘNG','images/sp_1662623377301_132084dc-561a-4324-9a21-7faa780342e4.jpg','{\"0\":\"Bàn xoay tự động\",\"1\":\"Trục quét điều chỉnh đơn giản bằng tay\",\"2\":\"Bảo hành 2 năm\",\"3\":\"1 đổi 1 trong vòng 30 ngày đầu tiên.\"}','{}','{}',9000000,8500000),(6,2,'','MÁY TỰ ĐỘNG','images/sp_1662623542867_29ac53f2-6bb8-4326-a8eb-39886c131e65.png','{\"0\":\"Bàn xoay tự động\",\"1\":\"Trục quét điều chỉnh tự động bằng động cơ\",\"2\":\"Bảo hành 2 năm\",\"3\":\"1 đổi 1 trong vòng 30 ngày đầu tiên.\"}','{}','{}',10000000,9500000),(7,2,'','COMBO ƯU ĐÃI','images/sp_1662623600852_1723bbf5-03ac-4bd6-91fc-0fa646ec39da.png','{\"0\":\"Bàn xoay tự động\",\"1\":\"Trục quét điều chỉnh tự động bằng động cơ\",\"2\":\"Bảo hành 2 năm\",\"3\":\"1 đổi 1 trong vòng 30 ngày đầu tiên.\",\"4\":\"2 mâm bàn xoay đá hoa cương lớn nhỏ\"}','{}','{}',12000000,10500000);
/*!40000 ALTER TABLE `subproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` varchar(15) NOT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'abaso_database'
--

--
-- Dumping routines for database 'abaso_database'
--
/*!50003 DROP PROCEDURE IF EXISTS `countSPbyP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `countSPbyP`(
	IN _product_id INT
)
BEGIN

  DECLARE product_id INT DEFAULT _product_id;
  SELECT COUNT(*) FROM subproduct WHERE subproduct.product_id = _product_id;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createBlog` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createBlog`(
	IN __title LONGTEXT,    
	IN __sapo LONGTEXT,
    IN __pdf varchar(256),
    IN __img varchar(256),
    IN __createDate varchar(10),
    OUT last_insert_id INT
)
BEGIN
  DECLARE _title LONGTEXT DEFAULT __title;
  DECLARE _sapo LONGTEXT DEFAULT __sapo;
  DECLARE _pdf varchar(256) DEFAULT __pdf;
  DECLARE _img varchar(256) DEFAULT __img;
  DECLARE _createDate varchar(10) DEFAULT __createDate;
  INSERT INTO blog (title, sapo, pdf, img, createDate) VALUES (_title, _sapo, _pdf, _img, _createDate); 
  SET last_insert_id = last_insert_id();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createFaq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createFaq`(
	IN __question LONGTEXT,    
	IN __answer LONGTEXT,
    OUT last_insert_id INT
)
BEGIN
  DECLARE _question LONGTEXT DEFAULT __question;
  DECLARE _answer LONGTEXT DEFAULT __answer;
  INSERT INTO faq (question, answer) VALUES (_question, _answer); 
  SET last_insert_id = last_insert_id();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createProduct`(
	IN __name varchar(255),    
	IN __version varchar(255),
	IN __intro LONGTEXT,
	IN __property_names LONGTEXT,
	IN __details LONGTEXT,
	IN __additional_information LONGTEXT,
    OUT last_insert_id INT
)
BEGIN
  DECLARE _name varchar(255) DEFAULT __name;
  DECLARE _version varchar(255)  DEFAULT __version;
  DECLARE _intro LONGTEXT DEFAULT __intro;
  DECLARE _property_names LONGTEXT DEFAULT __property_names;
  DECLARE _details LONGTEXT DEFAULT __details;
  DECLARE _additional_information LONGTEXT DEFAULT __additional_information;
  INSERT INTO product (name, version, intro, property_names, details, additional_information) VALUES (_name, _version, _intro, _property_names, _details, _additional_information); 
  SET last_insert_id = last_insert_id();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createSubProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createSubProduct`(
	IN __product_id INT,    
	IN __code varchar(10),
	IN __name varchar(255),
	IN __src MEDIUMTEXT,
	IN __intro LONGTEXT,
    IN __properties LONGTEXT,
	IN __infor LONGTEXT,
    IN __origin_price INT,
    IN __final_price INT,
    OUT last_insert_id INT
)
BEGIN
  DECLARE _product_id INT DEFAULT __product_id;
  DECLARE _code varchar(10) DEFAULT __code;
  DECLARE _name varchar(255) DEFAULT __name;
  DECLARE _src MEDIUMTEXT DEFAULT __src;
  DECLARE _intro LONGTEXT DEFAULT __intro;
  DECLARE _properties LONGTEXT DEFAULT __properties;
  DECLARE _infor LONGTEXT DEFAULT __infor;
  DECLARE _origin_price INT DEFAULT __origin_price;
  DECLARE _final_price INT DEFAULT __final_price;
  
  INSERT INTO subproduct (product_id, code, name, src, intro, properties, infor, origin_price, final_price) VALUES (_product_id, _code, _name, _src, _intro, _properties, _infor, _origin_price, _final_price); 
  SET last_insert_id = last_insert_id();
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editBlog` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `editBlog`(
	IN __id int,
	IN __title LONGTEXT,    
	IN __sapo LONGTEXT,
    IN __pdf varchar(256),
    IN __img varchar(256),
    IN __createDate varchar(10)
)
BEGIN
  DECLARE _id int DEFAULT __id;
  DECLARE _title LONGTEXT DEFAULT __title;
  DECLARE _sapo LONGTEXT DEFAULT __sapo;
  DECLARE _pdf varchar(256) DEFAULT __pdf;
  DECLARE _img varchar(256) DEFAULT __img;
  DECLARE _createDate varchar(10) DEFAULT __createDate;

  UPDATE blog
  SET
	  title =  _title,
	  sapo = _sapo,
      pdf = _pdf,
      img = _img,
      createDate = _createDate
  WHERE id = _id;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editFaq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `editFaq`(
	IN __id int,
	IN __question LONGTEXT,    
	IN __answer LONGTEXT
)
BEGIN
  DECLARE _id int DEFAULT __id;
  DECLARE _question LONGTEXT DEFAULT __question;
  DECLARE _answer LONGTEXT DEFAULT __answer;

  UPDATE faq
  SET
	  question =  _question,
	  answer = _answer
  WHERE id = _id;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `editProduct`(
	IN __id int,
	IN __name varchar(255),    
	IN __version varchar(255),
	IN __intro LONGTEXT,
	IN __property_names LONGTEXT,
	IN __details LONGTEXT,
	IN __additional_information LONGTEXT
)
BEGIN
  DECLARE _id int DEFAULT __id;
  DECLARE _name varchar(255) DEFAULT __name;
  DECLARE _version varchar(255)  DEFAULT __version;
  DECLARE _intro LONGTEXT DEFAULT __intro;
  DECLARE _property_names LONGTEXT DEFAULT __property_names;
  DECLARE _details LONGTEXT DEFAULT __details;
  DECLARE _additional_information LONGTEXT DEFAULT __additional_information;

  UPDATE product
  SET
	  name =  _name,
	  version = _version,
	  intro = _intro,
	  property_names = _property_names,
	  details = _details,
	  additional_information = additional_information
  WHERE id = _id;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editSubProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `editSubProduct`(
	IN __id int,
	IN __code varchar(10),
	IN __name varchar(255),
	IN __src MEDIUMTEXT,
	IN __intro LONGTEXT,
    IN __properties LONGTEXT,
	IN __infor LONGTEXT,
    IN __origin_price INT,
    IN __final_price INT
)
BEGIN
  DECLARE _id int DEFAULT __id;
  DECLARE _code varchar(10) DEFAULT __code;
  DECLARE _name varchar(255) DEFAULT __name;
  DECLARE _src MEDIUMTEXT DEFAULT __src;
  DECLARE _intro LONGTEXT DEFAULT __intro;
  DECLARE _properties LONGTEXT DEFAULT __properties;
  DECLARE _infor LONGTEXT DEFAULT __infor;
  DECLARE _origin_price INT DEFAULT __origin_price;
  DECLARE _final_price INT DEFAULT __final_price;
  UPDATE subproduct
  SET
	  code =  _code,
	  name = _name,
	  src = _src,
	  intro = _intro,
	  properties = _properties,
	  infor = _infor,
      origin_price = _origin_price,
      final_price = _final_price
  WHERE id = _id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getBlogById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getBlogById`(
	IN _id INT
)
BEGIN

  DECLARE id INT DEFAULT _id;
  SELECT * FROM blog WHERE blog.id = _id;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getFaqsById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getFaqsById`(
	IN _id INT
)
BEGIN

  DECLARE id INT DEFAULT _id;
  SELECT * FROM faq WHERE faq.id = _id;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductById`(
	IN __id int
)
BEGIN
  DECLARE _id int DEFAULT __id;
  SELECT * FROM product
  WHERE id=_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSPbyP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSPbyP`(
	IN _product_id INT
)
BEGIN

  DECLARE product_id INT DEFAULT _product_id;
  SELECT * FROM subproduct WHERE subproduct.product_id = _product_id;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removeBlogById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removeBlogById`(
	IN __id int
)
BEGIN
  DECLARE _id int DEFAULT __id;
  DELETE FROM blog
  WHERE id=_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removeFaqById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removeFaqById`(
	IN __id int
)
BEGIN
  DECLARE _id int DEFAULT __id;
  DELETE FROM faq
  WHERE id=_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removeProductById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removeProductById`(
	IN __id int
)
BEGIN
  DECLARE _id int DEFAULT __id;
  DELETE FROM product
  WHERE id=_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removeSubProductById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removeSubProductById`(
	IN __id int
)
BEGIN
  DECLARE _id int DEFAULT __id;
  DELETE FROM subproduct
  WHERE id=_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removeSubProductByProductId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removeSubProductByProductId`(
	IN __productId int
)
BEGIN
  DECLARE _productId int DEFAULT __productId;
  DELETE FROM subproduct
  WHERE product_id=_productId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 21:28:11
