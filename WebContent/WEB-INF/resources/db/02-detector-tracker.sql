CREATE DATABASE  IF NOT EXISTS `records_service` ;
USE `records_service`;


DROP TABLE IF EXISTS `reason`;
CREATE TABLE `reason` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `global` VARCHAR (45) NOT NULL,
  `simple` VARCHAR (30) NOT NULL
  ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
  
  DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `address` VARCHAR (45) NOT NULL,
  `name` VARCHAR (30) NOT NULL
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `detector`;
CREATE TABLE `detector` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `type` VARCHAR (45) NOT NULL,
  `name` VARCHAR (30) NOT NULL
  ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
  
  
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `date` DATE NOT NULL,
  `customer_id` INT NOT NULL,
  `detector_id`  INT NOT NULL,
  `reason_id` INT NOT NULL,
  
  KEY `FK_CUSTOMER_idx` (`customer_id`),
  CONSTRAINT `FK_CUSTOMER` FOREIGN KEY (`customer_id`) 
  REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  
  KEY `FK_DETECTOR_idx` (`detector_id`),
  CONSTRAINT `FK_DETECTOR` FOREIGN KEY (`detector_id`) 
  REFERENCES `detector` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  
  KEY `FK_REASON_idx` (`reason_id`),
  CONSTRAINT `FK_REASON` FOREIGN KEY (`reason_id`) 
  REFERENCES `reason` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



LOCK TABLES `reason` WRITE;
/*!40000 ALTER TABLE `reason` DISABLE KEYS */;
INSERT INTO `reason` VALUES (1, 'smoke', 'DFS-3'),
(2, 'smoke', 'DFS-3.2'),
(3, 'smoke', 'DFS-3.2NC'),
(4, 'smoke', 'DFS-3.2NO'),
(5, 'smoke', 'DFS-3.10'),
(6, 'smoke', 'DFS-3.10'),
(7, 'combo', 'DFS-3.3'),
(8, 'combo', 'DFS-3.3'),
(9, 'alarm', 'DFS-3.4'),
(10, 'two-point', 'DF-2.1'),
(11, 'two-point', 'DF-2.2'),
(12, 'termal', 'DFT-2B'),
(13, 'termal', 'DFT-2BNO'),
(14, 'termal', 'DFT-2BNC'),
(15, 'termal', 'DFT-3B'),
(16, 'termal', 'DFT-3BNO'),
(17, 'termal', 'DFT-3BNC'),
(18, 'Candy-XF', 'Candy-2F'),
(19, 'Candy-XF', 'Candy-4F'),
(20, 'Candy-XF', 'Candy-8F'),
(21, 'Candy-XXF', 'Candy-16F'),
(22, 'Candy-XXF', 'Candy-32F'),
(23, 'MCL', 'MCL-2'),
(24, 'MCL', 'MCL-4'),
(25, 'MCL', 'MCL-6'),
(26, 'MCL', 'MCL-2M'),
(27, 'MCL', 'MCL-4M'),
(28, 'MCL', 'MCL-6M');
/*!40000 ALTER TABLE `reason` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `customer`  WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1, 'smoke', 'DFS-3'),
(2, 'smoke', 'DFS-3.2'),
(3, 'smoke', 'DFS-3.2NC'),
(4, 'smoke', 'DFS-3.2NO'),
(5, 'smoke', 'DFS-3.10'),
(6, 'smoke', 'DFS-3.10'),
(7, 'combo', 'DFS-3.3'),
(8, 'combo', 'DFS-3.3'),
(9, 'alarm', 'DFS-3.4'),
(10, 'two-point', 'DF-2.1'),
(11, 'two-point', 'DF-2.2'),
(12, 'termal', 'DFT-2B'),
(13, 'termal', 'DFT-2BNO'),
(14, 'termal', 'DFT-2BNC'),
(15, 'termal', 'DFT-3B'),
(16, 'termal', 'DFT-3BNO'),
(17, 'termal', 'DFT-3BNC'),
(18, 'Candy-XF', 'Candy-2F'),
(19, 'Candy-XF', 'Candy-4F'),
(20, 'Candy-XF', 'Candy-8F'),
(21, 'Candy-XXF', 'Candy-16F'),
(22, 'Candy-XXF', 'Candy-32F'),
(23, 'MCL', 'MCL-2'),
(24, 'MCL', 'MCL-4'),
(25, 'MCL', 'MCL-6'),
(26, 'MCL', 'MCL-2M'),
(27, 'MCL', 'MCL-4M'),
(28, 'MCL', 'MCL-6M');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES  `detector`  WRITE;
/*!40000 ALTER TABLE `detector` DISABLE KEYS */;
INSERT INTO `detector` VALUES (1, 'smoke', 'DFS-3'),
(2, 'smoke', 'DFS-3.2'),
(3, 'smoke', 'DFS-3.2NC'),
(4, 'smoke', 'DFS-3.2NO'),
(5, 'smoke', 'DFS-3.10'),
(6, 'smoke', 'DFS-3.10'),
(7, 'combo', 'DFS-3.3'),
(8, 'combo', 'DFS-3.3'),
(9, 'alarm', 'DFS-3.4'),
(10, 'two-point', 'DF-2.1'),
(11, 'two-point', 'DF-2.2'),
(12, 'termal', 'DFT-2B'),
(13, 'termal', 'DFT-2BNO'),
(14, 'termal', 'DFT-2BNC'),
(15, 'termal', 'DFT-3B'),
(16, 'termal', 'DFT-3BNO'),
(17, 'termal', 'DFT-3BNC'),
(18, 'Candy-XF', 'Candy-2F'),
(19, 'Candy-XF', 'Candy-4F'),
(20, 'Candy-XF', 'Candy-8F'),
(21, 'Candy-XXF', 'Candy-16F'),
(22, 'Candy-XXF', 'Candy-32F'),
(23, 'MCL', 'MCL-2'),
(24, 'MCL', 'MCL-4'),
(25, 'MCL', 'MCL-6'),
(26, 'MCL', 'MCL-2M'),
(27, 'MCL', 'MCL-4M'),
(28, 'MCL', 'MCL-6M');

/*!40000 ALTER TABLE `detector` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES  `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES ();
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;




