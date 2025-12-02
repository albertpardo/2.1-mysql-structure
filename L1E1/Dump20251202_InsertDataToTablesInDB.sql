-- MySQL dump 10.13  Distrib 8.0.44, for Linux (x86_64)
--
-- Host: db    Database: opticsSch
-- ------------------------------------------------------
-- Server version	9.5.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '9b70492f-ce08-11f0-808f-ea703a9fbb53:1-231';

--
-- Dumping data for table `address`
--

LOCK TABLES address WRITE;
/*!40000 ALTER TABLE address DISABLE KEYS */;
INSERT INTO address VALUES (1,'Calle Berín',17,'1','1','Barcelona','08014','España'),(2,'Avenida Diagonal',5,'2','1','Barcelona','08019','España'),(3,'Plaza del Sol',20,'4','2','Barcelona','08012','España'),(4,'Avenida Medidiana',297,'1','4','Barcelona','08027','España'),(5,'Calle del Montseny',12,'5','1','Barcelona','08012','España'),(6,'Calle Aribau',60,'2','4','Barcelona','08011','España'),(7,'Calle Muntaner',30,'1','3','Barcelona','08011','España'),(8,'Calle Felipe II',27,'6','4','Barcelona','08027','España'),(9,'Calle de Bac de roda',136,'2','2','Barcelona','08020','España'),(10,'Calle de Copernic',15,'4','4','Barcelona','08021','España');
/*!40000 ALTER TABLE address ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `client`
--

LOCK TABLES client WRITE;
/*!40000 ALTER TABLE client DISABLE KEYS */;
INSERT INTO client VALUES (1,NULL,'Carlos Moreno','car@gmail.com','934203277','2025-05-05 00:00:00',2),(2,NULL,'Ana Pi','anpi@gmail.com','600600600','2025-05-05 00:00:00',2),(3,NULL,'Pedro Romero','pedromero@gmail.com','621621621','2025-05-06 00:00:00',3),(4,2,'Sonia Pi','sonpi@gmail.com','670770780','2025-06-02 00:00:00',4),(5,1,'Maria Moreno','marmoreno@gmail.com','612128129','2025-06-03 00:00:00',5),(6,1,'Rodolfo Marín','romarin@gmail.com','633489478','2025-06-29 00:00:00',2);
/*!40000 ALTER TABLE client ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employee`
--

LOCK TABLES employee WRITE;
/*!40000 ALTER TABLE employee DISABLE KEYS */;
INSERT INTO employee VALUES (1,'Carlos'),(2,'Rosa'),(3,'Anastasia'),(4,'Manuel'),(5,'Sol'),(6,'Antonio');
/*!40000 ALTER TABLE employee ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `glasses`
--

LOCK TABLES glasses WRITE;
/*!40000 ALTER TABLE glasses DISABLE KEYS */;
INSERT INTO glasses VALUES (1,1,'GlassGlass',-1.00,-1.00,'Transparent','Marrón',45),(2,2,'Indo One',-2.50,-2.50,'Transparent','Negro',60),(3,2,'Indo One',-1.50,-1.75,'Oscuro','Azul',71),(4,4,'GreenGreen',1.25,1.75,'Transparente','Verde',80),(5,1,'GlassGlass',-3.20,-3.75,'Oscuro','Naranje',51),(6,3,'Affledour Start',-4.20,-4.20,'Oscuro','Aluminio',80),(7,3,'Affledour Start',-3.25,-3.25,'Transparente','Aluminio',75);
/*!40000 ALTER TABLE glasses ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sales`
--

LOCK TABLES sales WRITE;
/*!40000 ALTER TABLE sales DISABLE KEYS */;
INSERT INTO sales VALUES (1,'2025-05-05 00:00:00',1,1),(2,'2025-05-05 00:00:00',1,2),(3,'2025-05-06 00:00:00',1,3),(4,'2025-06-02 00:00:00',2,4),(5,'2025-06-10 00:00:00',3,1),(6,'2025-07-10 00:00:00',4,2);
/*!40000 ALTER TABLE sales ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sales_has_glasses`
--

LOCK TABLES sales_has_glasses WRITE;
/*!40000 ALTER TABLE sales_has_glasses DISABLE KEYS */;
INSERT INTO sales_has_glasses VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(6,7);
/*!40000 ALTER TABLE sales_has_glasses ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `supplier`
--

LOCK TABLES supplier WRITE;
/*!40000 ALTER TABLE supplier DISABLE KEYS */;
INSERT INTO supplier VALUES (1,'BlisBlas','934401571','934401572','B23456789',10),(2,'Indo','932304070','932304071','B34567892',9),(3,'Affledour','933303030','933303031','B45678923',8),(4,'Romanini','934502020','934502021','B56789234',7),(5,'Ferali','935602318','935602319','B67892345',6);
/*!40000 ALTER TABLE supplier ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-02 15:15:55
