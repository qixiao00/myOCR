-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ocr
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `content` varchar(9999) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `uid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_uid` (`uid`),
  CONSTRAINT `fk_uid` FOREIGN KEY (`uid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (29,'imagesfapiao.jpg','{\'AntiFakeCode\': \'69418761103776923913\', \'Checker\': \'王小娟\', \'Clerk\': \'雒敏\', \'InvoiceAmount\': \'400.00\', \'InvoiceCode\': \'061002301311\', \'InvoiceDate\': \'2024年03月05日\', \'InvoiceNo\': \'43693697\', \'ItemName\': [\'*汽油*95#(V-Power)(VIB)\'], \'Payee\': \'张晓\', \'PayeeAddress\': \'陕西省西安市高新区锦业一路6号永利国际金融中心1座18层029-62220800\', \'PayeeBankName\': \'中国工商银行西安市城南科技支行3700024809200085985\', \'PayeeName\': \'延长壳牌石油有限公司\', \'PayeeRegisterNo\': \'91610000681575394Q\', \'PayerAddress\': \'\', \'PayerBankName\': \'\', \'PayerName\': \'西安泽瑞生物科技有限公司\', \'PayerRegisterNo\': \'91610113587430746L\', \'SumAmount\': \'肆佰圆整\', \'TaxAmount\': \'46.02\', \'WithoutTaxAmount\': \'353.98\'}','增值税发票',1),(41,'imagesfapiao.jpg','{\'AntiFakeCode\': \'69418761103776923913\', \'Checker\': \'王小娟\', \'Clerk\': \'雒敏\', \'InvoiceAmount\': \'400.00\', \'InvoiceCode\': \'061002301311\', \'InvoiceDate\': \'2024年03月05日\', \'InvoiceNo\': \'43693697\', \'ItemName\': [\'*汽油*95#(V-Power)(VIB)\'], \'Payee\': \'张晓\', \'PayeeAddress\': \'陕西省西安市高新区锦业一路6号永利国际金融中心1座18层029-62220800\', \'PayeeBankName\': \'中国工商银行西安市城南科技支行3700024809200085985\', \'PayeeName\': \'延长壳牌石油有限公司\', \'PayeeRegisterNo\': \'91610000681575394Q\', \'PayerAddress\': \'\', \'PayerBankName\': \'\', \'PayerName\': \'西安泽瑞生物科技有限公司\', \'PayerRegisterNo\': \'91610113587430746L\', \'SumAmount\': \'肆佰圆整\', \'TaxAmount\': \'46.02\', \'WithoutTaxAmount\': \'353.98\'}','增值税发票',1),(52,'images20240305182523929801.pdf','{\'AntiFakeCode\': \'69418761103776923913\', \'Checker\': \'王小娟\', \'Clerk\': \'雒敏\', \'InvoiceAmount\': \'400.00\', \'InvoiceCode\': \'061002301311\', \'InvoiceDate\': \'2024年03月05日\', \'InvoiceNo\': \'43693697\', \'ItemName\': [\'*汽油*95#(V-Power)(VIB)\'], \'Payee\': \'张晓\', \'PayeeAddress\': \'陕西省西安市高新区锦业一路6号永利国际金融中心1座18层029-62220800\', \'PayeeBankName\': \'中国工商银行西安市城南科技支行3700024809200085985\', \'PayeeName\': \'延长壳牌石油有限公司\', \'PayeeRegisterNo\': \'91610000681575394Q\', \'PayerAddress\': \'\', \'PayerBankName\': \'\', \'PayerName\': \'西安泽瑞生物科技有限公司\', \'PayerRegisterNo\': \'91610113587430746L\', \'SumAmount\': \'肆佰圆整\', \'TaxAmount\': \'46.02\', \'WithoutTaxAmount\': \'353.98\'}','增值税发票',1),(59,'images微信图片_20240416143708.jpg','{\'FrontResult\': {\'Address\': \'陕西省宝鸡市凤翔区横水镇尹稼坞村十八组2号\', \'BirthDate\': \'20020529\', \'CardAreas\': [{\'X\': 821, \'Y\': 1037}, {\'X\': 2216, \'Y\': 1183}, {\'X\': 2130, \'Y\': 3287}, {\'X\': 725, \'Y\': 3381}], \'FaceRectVertices\': [{\'X\': 1920, \'Y\': 2513}, {\'X\': 1914, \'Y\': 3203}, {\'X\': 1151, \'Y\': 3196}, {\'X\': 1156, \'Y\': 2506}], \'FaceRectangle\': {\'Angle\': 90, \'Center\': {\'X\': 1535, \'Y\': 2854}, \'Size\': {\'Height\': 690, \'Width\': 764}}, \'Gender\': \'男\', \'IDNumber\': \'610322200205291118\', \'Name\': \'闫俊豪\', \'Nationality\': \'汉\'}}','身份证',1),(60,'imagesfapiao.jpg','{\'AntiFakeCode\': \'69418761103776923913\', \'Checker\': \'王小娟\', \'Clerk\': \'雒敏\', \'InvoiceAmount\': \'400.00\', \'InvoiceCode\': \'061002301311\', \'InvoiceDate\': \'2024年03月05日\', \'InvoiceNo\': \'43693697\', \'ItemName\': [\'*汽油*95#(V-Power)(VIB)\'], \'Payee\': \'张晓\', \'PayeeAddress\': \'陕西省西安市高新区锦业一路6号永利国际金融中心1座18层029-62220800\', \'PayeeBankName\': \'中国工商银行西安市城南科技支行3700024809200085985\', \'PayeeName\': \'延长壳牌石油有限公司\', \'PayeeRegisterNo\': \'91610000681575394Q\', \'PayerAddress\': \'\', \'PayerBankName\': \'\', \'PayerName\': \'西安泽瑞生物科技有限公司\', \'PayerRegisterNo\': \'91610113587430746L\', \'SumAmount\': \'肆佰圆整\', \'TaxAmount\': \'46.02\', \'WithoutTaxAmount\': \'353.98\'}','增值税发票',1),(64,'imagesfapiao.jpg','{\'AntiFakeCode\': \'69418761103776923913\', \'Checker\': \'王小娟\', \'Clerk\': \'雒敏\', \'InvoiceAmount\': \'400.00\', \'InvoiceCode\': \'061002301311\', \'InvoiceDate\': \'2024年03月05日\', \'InvoiceNo\': \'43693697\', \'ItemName\': [\'*汽油*95#(V-Power)(VIB)\'], \'Payee\': \'张晓\', \'PayeeAddress\': \'陕西省西安市高新区锦业一路6号永利国际金融中心1座18层029-62220800\', \'PayeeBankName\': \'中国工商银行西安市城南科技支行3700024809200085985\', \'PayeeName\': \'延长壳牌石油有限公司\', \'PayeeRegisterNo\': \'91610000681575394Q\', \'PayerAddress\': \'\', \'PayerBankName\': \'\', \'PayerName\': \'西安泽瑞生物科技有限公司\', \'PayerRegisterNo\': \'91610113587430746L\', \'SumAmount\': \'肆佰圆整\', \'TaxAmount\': \'46.02\', \'WithoutTaxAmount\': \'353.98\'}','增值税发票',1),(65,'images微信图片_20240416143708.jpg','{\'FrontResult\': {\'Address\': \'陕西省宝鸡市凤翔区横水镇尹稼坞村十八组2号\', \'BirthDate\': \'20020529\', \'CardAreas\': [{\'X\': 821, \'Y\': 1037}, {\'X\': 2216, \'Y\': 1183}, {\'X\': 2130, \'Y\': 3287}, {\'X\': 725, \'Y\': 3381}], \'FaceRectVertices\': [{\'X\': 1920, \'Y\': 2513}, {\'X\': 1914, \'Y\': 3203}, {\'X\': 1151, \'Y\': 3196}, {\'X\': 1156, \'Y\': 2506}], \'FaceRectangle\': {\'Angle\': 90, \'Center\': {\'X\': 1535, \'Y\': 2854}, \'Size\': {\'Height\': 690, \'Width\': 764}}, \'Gender\': \'男\', \'IDNumber\': \'610322200205291118\', \'Name\': \'闫俊豪\', \'Nationality\': \'汉\'}}','身份证',1),(66,'imagesfapiao.jpg','{\'AntiFakeCode\': \'69418761103776923913\', \'Checker\': \'王小娟\', \'Clerk\': \'雒敏\', \'InvoiceAmount\': \'400.00\', \'InvoiceCode\': \'061002301311\', \'InvoiceDate\': \'2024年03月05日\', \'InvoiceNo\': \'43693697\', \'ItemName\': [\'*汽油*95#(V-Power)(VIB)\'], \'Payee\': \'张晓\', \'PayeeAddress\': \'陕西省西安市高新区锦业一路6号永利国际金融中心1座18层029-62220800\', \'PayeeBankName\': \'中国工商银行西安市城南科技支行3700024809200085985\', \'PayeeName\': \'延长壳牌石油有限公司\', \'PayeeRegisterNo\': \'91610000681575394Q\', \'PayerAddress\': \'\', \'PayerBankName\': \'\', \'PayerName\': \'西安泽瑞生物科技有限公司\', \'PayerRegisterNo\': \'91610113587430746L\', \'SumAmount\': \'肆佰圆整\', \'TaxAmount\': \'46.02\', \'WithoutTaxAmount\': \'353.98\'}','增值税发票',1),(67,'images微信图片_20240416143708.jpg','{\'FrontResult\': {\'Address\': \'陕西省宝鸡市凤翔区横水镇尹稼坞村十八组2号\', \'BirthDate\': \'20020529\', \'CardAreas\': [{\'X\': 821, \'Y\': 1037}, {\'X\': 2216, \'Y\': 1183}, {\'X\': 2130, \'Y\': 3287}, {\'X\': 725, \'Y\': 3381}], \'FaceRectVertices\': [{\'X\': 1920, \'Y\': 2513}, {\'X\': 1914, \'Y\': 3203}, {\'X\': 1151, \'Y\': 3196}, {\'X\': 1156, \'Y\': 2506}], \'FaceRectangle\': {\'Angle\': 90, \'Center\': {\'X\': 1535, \'Y\': 2854}, \'Size\': {\'Height\': 690, \'Width\': 764}}, \'Gender\': \'男\', \'IDNumber\': \'610322200205291118\', \'Name\': \'闫俊豪\', \'Nationality\': \'汉\'}}','身份证',1),(68,'images微信图片_20240416143708.jpg','{\'FrontResult\': {\'Address\': \'陕西省宝鸡市凤翔区横水镇尹稼坞村十八组2号\', \'BirthDate\': \'20020529\', \'CardAreas\': [{\'X\': 821, \'Y\': 1037}, {\'X\': 2216, \'Y\': 1183}, {\'X\': 2130, \'Y\': 3287}, {\'X\': 725, \'Y\': 3381}], \'FaceRectVertices\': [{\'X\': 1920, \'Y\': 2513}, {\'X\': 1914, \'Y\': 3203}, {\'X\': 1151, \'Y\': 3196}, {\'X\': 1156, \'Y\': 2506}], \'FaceRectangle\': {\'Angle\': 90, \'Center\': {\'X\': 1535, \'Y\': 2854}, \'Size\': {\'Height\': 690, \'Width\': 764}}, \'Gender\': \'男\', \'IDNumber\': \'610322200205291118\', \'Name\': \'闫俊豪\', \'Nationality\': \'汉\'}}','身份证',1),(69,'images微信图片_20240416143708.jpg','{\'FrontResult\': {\'Address\': \'陕西省宝鸡市凤翔区横水镇尹稼坞村十八组2号\', \'BirthDate\': \'20020529\', \'CardAreas\': [{\'X\': 821, \'Y\': 1037}, {\'X\': 2216, \'Y\': 1183}, {\'X\': 2130, \'Y\': 3287}, {\'X\': 725, \'Y\': 3381}], \'FaceRectVertices\': [{\'X\': 1920, \'Y\': 2513}, {\'X\': 1914, \'Y\': 3203}, {\'X\': 1151, \'Y\': 3196}, {\'X\': 1156, \'Y\': 2506}], \'FaceRectangle\': {\'Angle\': 90, \'Center\': {\'X\': 1535, \'Y\': 2854}, \'Size\': {\'Height\': 690, \'Width\': 764}}, \'Gender\': \'男\', \'IDNumber\': \'610322200205291118\', \'Name\': \'闫俊豪\', \'Nationality\': \'汉\'}}','身份证',1),(70,'images微信图片_20240416143708.jpg','{\'FrontResult\': {\'Address\': \'陕西省宝鸡市凤翔区横水镇尹稼坞村十八组2号\', \'BirthDate\': \'20020529\', \'CardAreas\': [{\'X\': 821, \'Y\': 1037}, {\'X\': 2216, \'Y\': 1183}, {\'X\': 2130, \'Y\': 3287}, {\'X\': 725, \'Y\': 3381}], \'FaceRectVertices\': [{\'X\': 1920, \'Y\': 2513}, {\'X\': 1914, \'Y\': 3203}, {\'X\': 1151, \'Y\': 3196}, {\'X\': 1156, \'Y\': 2506}], \'FaceRectangle\': {\'Angle\': 90, \'Center\': {\'X\': 1535, \'Y\': 2854}, \'Size\': {\'Height\': 690, \'Width\': 764}}, \'Gender\': \'男\', \'IDNumber\': \'610322200205291118\', \'Name\': \'闫俊豪\', \'Nationality\': \'汉\'}}','身份证',1),(71,'imagesfapiao.jpg','{\'AntiFakeCode\': \'69418761103776923913\', \'Checker\': \'王小娟\', \'Clerk\': \'雒敏\', \'InvoiceAmount\': \'400.00\', \'InvoiceCode\': \'061002301311\', \'InvoiceDate\': \'2024年03月05日\', \'InvoiceNo\': \'43693697\', \'ItemName\': [\'*汽油*95#(V-Power)(VIB)\'], \'Payee\': \'张晓\', \'PayeeAddress\': \'陕西省西安市高新区锦业一路6号永利国际金融中心1座18层029-62220800\', \'PayeeBankName\': \'中国工商银行西安市城南科技支行3700024809200085985\', \'PayeeName\': \'延长壳牌石油有限公司\', \'PayeeRegisterNo\': \'91610000681575394Q\', \'PayerAddress\': \'\', \'PayerBankName\': \'\', \'PayerName\': \'西安泽瑞生物科技有限公司\', \'PayerRegisterNo\': \'91610113587430746L\', \'SumAmount\': \'肆佰圆整\', \'TaxAmount\': \'46.02\', \'WithoutTaxAmount\': \'353.98\'}','增值税发票',1);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('user','admin','superadmin') DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'123','user1@example.com','123','user','2024-03-24 05:54:01'),(2,'admin','user2@example.com','admin','admin','2024-03-24 05:54:01'),(3,'sup','user3@example.com','sup','superadmin','2024-03-24 05:54:01'),(4,'user4','user4@example.com','password4','user','2024-03-24 05:54:01'),(5,'user5','user5@example.com','password5','user','2024-03-24 05:54:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Dumping routines for database 'ocr'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-12 15:59:28
