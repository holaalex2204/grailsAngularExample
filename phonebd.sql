-- MySQL dump 10.13  Distrib 5.5.27, for osx10.6 (i386)
--
-- Host: localhost    Database: phonebd
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `phone_detail`
--

DROP TABLE IF EXISTS `phone_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_detail`
--

LOCK TABLES `phone_detail` WRITE;
/*!40000 ALTER TABLE `phone_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_header`
--

DROP TABLE IF EXISTS `phone_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_header` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `age` int(11) NOT NULL,
  `id_desc` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `snippet` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_header`
--

LOCK TABLES `phone_header` WRITE;
/*!40000 ALTER TABLE `phone_header` DISABLE KEYS */;
INSERT INTO `phone_header` VALUES (1,0,0,'motorola-xoom-with-wi-fi','img/phones/motorola-xoom-with-wi-fi.0.jpg','Motorola XOOMu2122 with Wi-Fi','The Next, Next Generation\r\n\r\nExperience the future with Motorola XOOM with Wi-Fi, the world\'s first tablet powered by Android 3.0 (Honeycomb).'),(2,0,1,'motorola-xoom','img/phones/motorola-xoom.0.jpg','MOTOROLA XOOMu2122','The Next, Next Generation\n\nExperience the future with MOTOROLA XOOM, the world\'s first tablet powered by Android 3.0 (Honeycomb).'),(3,0,2,'motorola-atrix-4g','img/phones/motorola-atrix-4g.0.jpg','MOTOROLA ATRIXu2122 4G','MOTOROLA ATRIX 4G the world\'s most powerful smartphone.'),(4,0,3,'dell-streak-7','img/phones/dell-streak-7.0.jpg','Dell Streak 7','Introducing Dellu2122 Streak 7. Share photos, videos and movies together. Itu2019s small enough to carry around, big enough to gather around.'),(5,0,4,'samsung-gem','img/phones/samsung-gem.0.jpg','Samsung Gemu2122','The Samsung Gemu2122 brings you everything that you would expect and more from a touch display smart phone u2013 more apps, more features and a more affordable price.'),(6,0,5,'dell-venue','img/phones/dell-venue.0.jpg','Dell Venue','The Dell Venue; Your Personal Express Lane to Everything'),(7,0,6,'nexus-s','img/phones/nexus-s.0.jpg','Nexus S','Fast just got faster with Nexus S. A pure Google experience, Nexus S is the first phone to run Gingerbread (Android 2.3), the fastest version of Android yet.'),(8,0,7,'lg-axis','img/phones/lg-axis.0.jpg','LG Axis','Android Powered, Google Maps Navigation, 5 Customizable Home Screens'),(9,0,8,'samsung-galaxy-tab','img/phones/samsung-galaxy-tab.0.jpg','Samsung Galaxy Tabu2122','Feel Free to Tabu2122. The Samsung Galaxy Tabu2122 brings you an ultra-mobile entertainment experience through its 7u201d display, high-power processor and Adobeu00ae Flashu00ae Player compatibility.'),(10,0,9,'samsung-showcase-a-galaxy-s-phone','img/phones/samsung-showcase-a-galaxy-s-phone.0.jpg','Samsung Showcaseu2122 a Galaxy Su2122 phone','The Samsung Showcaseu2122 delivers a cinema quality experience like youu2019ve never seen before. Its innovative 4u201d touch display technology provides rich picture brilliance, even outdoors'),(11,0,10,'droid-2-global-by-motorola','img/phones/droid-2-global-by-motorola.0.jpg','DROIDu2122 2 Global by Motorola','The first smartphone with a 1.2 GHz processor and global capabilities.'),(12,0,11,'droid-pro-by-motorola','img/phones/droid-pro-by-motorola.0.jpg','DROIDu2122 Pro by Motorola','The next generation of DOES.'),(13,0,12,'motorola-bravo-with-motoblur','img/phones/motorola-bravo-with-motoblur.0.jpg','MOTOROLA BRAVOu2122 with MOTOBLURu2122','An experience to cheer about.'),(14,0,13,'motorola-defy-with-motoblur','img/phones/motorola-defy-with-motoblur.0.jpg','Motorola DEFYu2122 with MOTOBLURu2122','Are you ready for everything life throws your way?'),(15,0,14,'t-mobile-mytouch-4g','img/phones/t-mobile-mytouch-4g.0.jpg','T-Mobile myTouch 4G','The T-Mobile myTouch 4G is a premium smartphone designed to deliver blazing fast 4G speeds so that you can video chat from practically anywhere, with or without Wi-Fi.'),(16,0,15,'samsung-mesmerize-a-galaxy-s-phone','img/phones/samsung-mesmerize-a-galaxy-s-phone.0.jpg','Samsung Mesmerizeu2122 a Galaxy Su2122 phone','The Samsung Mesmerizeu2122 delivers a cinema quality experience like youu2019ve never seen before. Its innovative 4u201d touch display technology provides rich picture brilliance,even outdoors'),(17,0,16,'sanyo-zio','img/phones/sanyo-zio.0.jpg','SANYO ZIO','The Sanyo Zio by Kyocera is an Android smartphone with a combination of ultra-sleek styling, strong performance and unprecedented value.'),(18,0,17,'samsung-transform','img/phones/samsung-transform.0.jpg','Samsung Transformu2122','The Samsung Transformu2122 brings you a fun way to customize your Android powered touch screen phone to just the way you like it through your favorite themed u201cSprint ID Service Packu201d.'),(19,0,18,'t-mobile-g2','img/phones/t-mobile-g2.0.jpg','T-Mobile G2','The T-Mobile G2 with Google is the first smartphone built for 4G speeds on T-Mobile\'s new network. Get the information you need, faster than you ever thought possible.'),(20,0,19,'motorola-charm-with-motoblur','img/phones/motorola-charm-with-motoblur.0.jpg','Motorola CHARMu2122 with MOTOBLURu2122','Motorola CHARM fits easily in your pocket or palm.  Includes MOTOBLUR service.');
/*!40000 ALTER TABLE `phone_header` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-14 11:52:18
