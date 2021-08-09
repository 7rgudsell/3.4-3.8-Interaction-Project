-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: RyanG_MusicDatabase
-- ------------------------------------------------------
-- Server version 	8.0.26-0ubuntu0.20.04.2
-- Date: Thu, 05 Aug 2021 21:52:20 +0000

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `albumDetails`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albumDetails` (
  `Album_ID` int NOT NULL,
  `Album` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Album_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albumDetails`
--

LOCK TABLES `albumDetails` WRITE;
/*!40000 ALTER TABLE `albumDetails` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `albumDetails` VALUES (1,'10 Years Of Hits'),(2,'A Hundred Miles or More: A Collection'),(3,'A Momentary Lapse Of Reason'),(4,'A Place On Earth - The Greatest Hits'),(5,'All Thing Bright And Beautiful - Deluxe'),(6,'American Heart - Single'),(7,'American Pie'),(8,'Aqualung'),(9,'As Good as it Gets'),(10,'At Budokan'),(11,'Babel'),(12,'Barton Hollow'),(13,'Big Jet Plane [EP]'),(14,'Bright Morning Stars'),(15,'Bring Me Home'),(16,'California'),(17,'Celtica 1'),(18,'Ceremonial and War Dances'),(19,'CMT Crossroads'),(20,'Continued Silence EP'),(21,'Dixie Chicks'),(22,'Drunken Lullabies'),(23,'Earl Klugh'),(24,'Early Alchemy'),(25,'Electric Music For The Mind And The Mind'),(26,'Extended Play'),(27,'Fallen'),(28,'Fields of Fire'),(29,'Finally We Are No One'),(30,'Five Minutes With Arctic Monkeys'),(31,'Flying Cowboys'),(32,'Food In The Belly'),(33,'Footrot Flats: A Dog\'s Tale'),(34,'From Detroit to St Germain'),(35,'Fundamental'),(36,'Gael Force'),(37,'Greatest Hits'),(38,'Here Comes the Sun (1971)'),(39,'His Young Heart'),(40,'Hoea'),(41,'I Hope You Dance'),(42,'I\'m in the Mood for Dancing'),(43,'Lights of the Pacific: The Very Best Of'),(44,'Lily'),(45,'Listen'),(46,'Listen: The Very Best of Herbs'),(47,'Live In Texas'),(48,'Live! Not Enough Shouting'),(49,'Love This Giant'),(50,'Metals'),(51,'Music for Lovers'),(52,'Oceania'),(53,'One More from the Road '),(54,'Primitive Man'),(55,'Running on Empty'),(56,'Sarah Slean'),(57,'SAY YOU WILL'),(58,'Shamrock Diaries'),(59,'Shona laing'),(60,'Slow Train Coming'),(61,'Smilewound'),(62,'Songs from the Front Lawn'),(63,'Soul Divas'),(64,'Spanish Train & Other Stories'),(65,'Strange Mercy'),(66,'The Best of Arlo Guthrie'),(67,'The Best of Joe Cocker'),(68,'The Best of Nancy Wilson'),(69,'The Collection Vol.1'),(70,'The Collection Vol.2'),(71,'The Cross of Changes'),(72,'The Definitive Collection'),(73,'The Division Bell'),(74,'Three Decades of Males Disc 2'),(75,'Til We Outnumber \'Em: Woody Guthrie'),(76,'To Love Somebody (1969)'),(77,'Under The Covers: Vol. 2'),(78,'Walk Like An Egyptian'),(79,'Watermark'),(80,'Zombie ');
/*!40000 ALTER TABLE `albumDetails` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `albumDetails` with 80 row(s)
--

--
-- Table structure for table `artistDetails`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artistDetails` (
  `Artist_ID` int NOT NULL,
  `Artist` varchar(22) DEFAULT NULL,
  PRIMARY KEY (`Artist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistDetails`
--

LOCK TABLES `artistDetails` WRITE;
/*!40000 ALTER TABLE `artistDetails` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `artistDetails` VALUES (1,'A Flock of Seagulls'),(2,'Acoustic Alchemy'),(3,'Alison Krauss'),(4,'Angus & Julia Stone'),(5,'Arctic Monkeys'),(6,'Arlo Guthrie'),(7,'As Good as it Gets'),(8,'Average White Band'),(9,'Belinda Carlisle'),(10,'Big Country '),(11,'Black Lodge Singers'),(12,'Bob Dylan'),(13,'Chris de Burgh'),(14,'Chris Rea'),(15,'Country Joe & The Fish'),(16,'Daughter'),(17,'Dave Dobbyn & Herbs'),(18,'David Byrne'),(19,'Dixie Chicks'),(20,'Don McLean'),(21,'Earl Klugh'),(22,'Enigma'),(23,'Enya'),(24,'Evanescence'),(25,'Faith Hill'),(26,'Feist'),(27,'Fleetwood Mac'),(28,'Flogging Molly'),(29,'Gael Force'),(30,'Gin Wigmore'),(31,'Herbs'),(32,'Icehouse'),(33,'Imagine Dragons'),(34,'Jackson Browne'),(35,'James Taylor'),(36,'Jethro Tull'),(37,'Joe Cocker'),(38,'Lee Ann Womack'),(39,'Lynyrd Skynyrd'),(40,'Maria Muldaur'),(41,'Matthew Sweet'),(42,'Mother Earth'),(43,'Mum'),(44,'Mumford & Sons'),(45,'Nancy Wilson'),(46,'Nina Simone'),(47,'Oceania'),(48,'Owl City'),(49,'Pet Shop Boys'),(50,'Pink Floyd'),(51,'Rickie Lee Jones'),(52,'Ronan Keating'),(53,'Sarah Slean'),(54,'Shona laing'),(55,'Soul Divas'),(56,'St Germain'),(57,'St. Vincent'),(58,'Stevie Wonder'),(59,'Susanna Hoffs'),(60,'THE BANGLES'),(61,'The Civil Wars'),(62,'The Cranberries'),(63,'The Front Lawn'),(64,'The Nolans'),(65,'The Wailin\' Jennys'),(66,'Three Decades of Males'),(67,'Varios'),(68,'WAI.TAI'),(69,'Wendy Matthews'),(70,'Wilson Phillips'),(71,'Wolfstone'),(72,'Xavier Rudd');
/*!40000 ALTER TABLE `artistDetails` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `artistDetails` with 72 row(s)
--

--
-- Table structure for table `fileDetails`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileDetails` (
  `File_ID` int NOT NULL,
  `Filename` varchar(81) DEFAULT NULL,
  PRIMARY KEY (`File_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileDetails`
--

LOCK TABLES `fileDetails` WRITE;
/*!40000 ALTER TABLE `fileDetails` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `fileDetails` VALUES (1,'2-30.mp3'),(2,'A Commotion.mp3'),(3,'Alabama Blues.mp3'),(4,'Alice\'s Restaurant Massacree.mp3'),(5,'All The Young Dudes.mp3'),(6,'Alligator Sky.mp3'),(7,'American Heart.mp3'),(8,'American Pie.mp3'),(9,'Aqualung.mp3'),(10,'Ashes By Now.mp3'),(11,'Big Jet Plane (Radio Edit).mp3'),(12,'Bird Song.mp3'),(13,'Boogie On Reggae Woman.mp3'),(14,'Brazilian Stomp.mp3'),(15,'Bring Me Home.mp3'),(16,'C\'est La Mort.mp3'),(17,'Chicken on a Raft.mp3'),(18,'Don\'t Think Twice, It\'s All Right.mp3'),(19,'Eagle Plume Dancer.mp3'),(20,'Earth And Sky.mp3'),(21,'Everybody\'s Fool.mp3'),(22,'Fake Tales Of San Francisco.mp3'),(23,'Fear.mp3'),(24,'Fields of Gold.mp3'),(25,'Fire.mp3'),(26,'Fortune Teller.mp3'),(27,'Free Bird Live [Fox Theater].mp3'),(28,'French Letter.mp3'),(29,'Got The Love - 2009.mp3'),(30,'Great Southern Land.mp3'),(31,'Hallelujah.mp3'),(32,'Hard Travelin\' Hootenanny.mp3'),(33,'He Aha Ra Te Manu.mp3'),(34,'Hineraukatauri (Goddess of Music).mp3'),(35,'Hopeless Wanderer.mp3'),(36,'How do you plead.mp3'),(37,'How Sweet Can You Get - 2009.mp3'),(38,'If I Ever Leave This World Alive.mp3'),(39,'I\'ll Be Long Gone.mp3'),(40,'I\'m in the Mood for Dancing.mp3'),(41,'Leave a Light On.mp3'),(42,'Like someone in love.mp3'),(43,'Little Black Book.mp3'),(44,'Lost for Words.mp3'),(45,'Maggie.mp3'),(46,'Maggie.mp3'),(47,'Marijuana.mp3'),(48,'Marooned.mp3'),(49,'Mary.mp3'),(50,'Mary.mp3'),(51,'Messages.mp3'),(52,'Northern Lights.mp3'),(53,'Now There\'s That Fear Again.mp3'),(54,'One Golden Rule.mp3'),(55,'One Slip.mp3'),(56,'Parihaka.mp3'),(57,'Radioactive.mp3'),(58,'River.mp3'),(59,'Sarah Victoria.mp3'),(60,'Shower the People.mp3'),(61,'Shower the People.mp3'),(62,'Silent Warrior.mp3'),(63,'Simple Love [#].mp3'),(64,'Slice Of Heaven.mp3'),(65,'Slice of Heaven.mp3'),(66,'Slice of Heaven.mp3'),(67,'Slow Train.mp3'),(68,'Spanish Train.mp3'),(69,'Stay.mp3'),(70,'Stay.mp3'),(71,'Steal Your Heart Away.mp3'),(72,'Sweet Baby James.mp3'),(73,'Sweet Baby James.mp3'),(74,'Tell me.mp3'),(75,'Tell me.mp3'),(76,'The Forest Awakes.mp3'),(77,'The Horses.mp3'),(78,'The Mother.mp3'),(79,'The Sodom And Gomorrah Show.mp3'),(80,'The Times They Are A-Changin\'.mp3'),(81,'The Traveller.mp3'),(82,'The Woods.mp3'),(83,'Til We Outnumber \'Em (This Land Is You Land).mp3'),(84,'Turn! Turn! Turn!.mp3'),(85,'Turn! Turn! Turn!.mp3'),(86,'Unchain My Heart [90\'s Version].mp3'),(87,'Waiting For You.mp3'),(88,'We can let it happen tonight.mp3'),(89,'When Girls Collide.mp3'),(90,'When You Come Back Home.mp3'),(91,'You Probably Couldn\'t See For The Lights, But You Were Staring Straight At Me.mp3'),(92,'You Were Mine.mp3'),(93,'You\'re Just a Country Boy.mp3'),(94,'Zombie.mp3');
/*!40000 ALTER TABLE `fileDetails` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `fileDetails` with 94 row(s)
--

--
-- Table structure for table `genreDetails`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genreDetails` (
  `Genre_ID` int NOT NULL,
  `Genre` varchar(23) DEFAULT NULL,
  PRIMARY KEY (`Genre_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genreDetails`
--

LOCK TABLES `genreDetails` WRITE;
/*!40000 ALTER TABLE `genreDetails` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `genreDetails` VALUES (1,'Acoustic'),(2,'Alternative'),(3,'Alternative Metal'),(4,'Alternative Rock'),(5,'Avante-Garde'),(6,'Bluegrass'),(7,'Blues'),(8,'Brit Pop'),(9,'Celtic'),(10,'Country'),(11,'Dance'),(12,'Easy Listening - Female'),(13,'Easy Listening - Group'),(14,'Easy Listening - Male'),(15,'Ethnic'),(16,'Folk'),(17,'Folk Cont'),(18,'Folk Rock'),(19,'Folk UK'),(20,'Goa'),(21,'Indie'),(22,'Indie Rock'),(23,'Jazz'),(24,'Maori'),(25,'Mellow'),(26,'Native American'),(27,'New Age'),(28,'New Wave'),(29,'Nu-Metal'),(30,'Pop'),(31,'Post-Grunge'),(32,'Post-Rock'),(33,'Progressive Rock'),(34,'Psychadelic'),(35,'R&B'),(36,'Reggae'),(37,'Rock'),(38,'Rock Celtic'),(39,'Soul'),(40,'US Folk'),(41,'Vocal'),(42,'Woman'),(43,'World');
/*!40000 ALTER TABLE `genreDetails` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `genreDetails` with 43 row(s)
--

--
-- Table structure for table `musicDetails`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musicDetails` (
  `Song_ID` int NOT NULL,
  `Title_ID` int DEFAULT NULL,
  `File_ID` int DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  `Size_KB` int DEFAULT NULL,
  PRIMARY KEY (`Song_ID`),
  KEY `Title_ID` (`Title_ID`),
  KEY `File_ID` (`File_ID`),
  CONSTRAINT `musicDetails_ibfk_1` FOREIGN KEY (`Title_ID`) REFERENCES `titleDetails` (`Title_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `musicDetails_ibfk_2` FOREIGN KEY (`File_ID`) REFERENCES `fileDetails` (`File_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicDetails`
--

LOCK TABLES `musicDetails` WRITE;
/*!40000 ALTER TABLE `musicDetails` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `musicDetails` VALUES (1,1,1,60,1446),(2,2,2,233,6904),(3,3,3,439,6865),(4,4,4,1111,34731),(5,5,5,232,9081),(6,6,6,195,6176),(7,7,7,230,9069),(8,8,8,512,20045),(9,9,9,397,11596),(10,10,10,251,9851),(11,11,11,223,8776),(12,12,12,213,3338),(13,13,13,314,10894),(14,14,14,339,10605),(15,15,15,365,11428),(16,16,16,149,4094),(17,17,17,210,6583),(18,18,18,301,11766),(19,19,19,145,2269),(20,20,20,208,5984),(21,21,21,197,7893),(22,22,22,181,7271),(23,23,23,262,4101),(24,24,24,214,8382),(25,25,25,206,6465),(26,26,26,207,4866),(27,27,27,816,25506),(28,28,28,276,8646),(29,29,29,227,8874),(30,30,30,319,12468),(31,31,31,211,8263),(32,32,32,210,6588),(33,33,33,143,4444),(34,34,34,294,9222),(35,35,35,307,10236),(36,36,36,400,6251),(37,37,37,238,9330),(38,38,38,201,4722),(39,39,39,356,11141),(40,40,40,179,5601),(41,41,41,256,4006),(42,42,42,142,3368),(43,43,43,252,3951),(44,44,44,228,5366),(45,45,45,221,6914),(46,45,45,287,7862),(47,46,46,152,3575),(48,47,47,329,10384),(49,48,48,233,9109),(50,48,48,244,3818),(51,49,49,242,5686),(52,50,50,213,8359),(53,51,51,236,5550),(54,52,52,270,10569),(55,53,53,308,10086),(56,54,54,256,8028),(57,55,55,188,7414),(58,56,56,192,7553),(59,57,57,114,3692),(60,58,58,123,2906),(61,58,58,241,9426),(62,59,59,369,11546),(63,60,60,284,4444),(64,61,61,248,9693),(65,61,61,277,4347),(66,61,61,277,8667),(67,62,62,359,14107),(68,63,63,302,11841),(69,64,64,162,2551),(70,64,64,204,7990),(71,65,65,213,5011),(72,66,66,205,4015),(73,66,66,174,6818),(74,67,67,135,2884),(75,67,67,243,7608),(76,68,68,292,11442),(77,69,69,292,9158),(78,70,70,195,4594),(79,71,71,319,7496),(80,72,72,328,12854),(81,73,73,206,5677),(82,74,74,220,8959),(83,75,75,157,4929),(84,76,76,160,5025),(85,76,76,221,3463),(86,77,77,306,11972),(87,78,78,204,6488),(88,79,79,250,9784),(89,80,80,300,11870),(90,81,81,217,3408),(91,82,82,142,5771),(92,83,83,217,3409),(93,84,84,208,3258),(94,85,85,252,9874);
/*!40000 ALTER TABLE `musicDetails` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `musicDetails` with 94 row(s)
--

--
-- Table structure for table `musicToAlbum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musicToAlbum` (
  `Song_ID` int DEFAULT NULL,
  `Album_ID` int DEFAULT NULL,
  KEY `Song_ID` (`Song_ID`),
  KEY `Album_ID` (`Album_ID`),
  CONSTRAINT `musicToAlbum_ibfk_1` FOREIGN KEY (`Song_ID`) REFERENCES `musicDetails` (`Song_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `musicToAlbum_ibfk_2` FOREIGN KEY (`Album_ID`) REFERENCES `albumDetails` (`Album_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicToAlbum`
--

LOCK TABLES `musicToAlbum` WRITE;
/*!40000 ALTER TABLE `musicToAlbum` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `musicToAlbum` VALUES (1,45),(2,50),(3,34),(4,66),(5,77),(6,5),(7,6),(8,7),(9,8),(10,41),(10,37),(11,13),(12,14),(13,72),(14,23),(15,15),(16,12),(17,9),(18,10),(19,18),(20,40),(21,27),(22,30),(23,59),(24,17),(25,63),(26,32),(27,53),(28,43),(29,69),(30,54),(31,26),(32,75),(33,40),(34,52),(35,11),(36,34),(37,70),(38,22),(39,15),(40,42),(41,4),(42,68),(43,4),(44,1),(45,36),(46,48),(47,25),(48,73),(49,28),(50,56),(51,32),(52,65),(53,29),(54,58),(55,3),(56,43),(57,20),(58,79),(59,24),(60,19),(61,37),(62,71),(63,2),(64,74),(65,33),(66,46),(67,60),(68,64),(69,56),(70,55),(71,57),(72,19),(73,37),(74,78),(75,44),(76,49),(77,31),(78,32),(79,35),(80,10),(81,45),(82,39),(83,75),(84,16),(85,76),(85,38),(86,67),(87,24),(88,51),(89,61),(90,62),(91,47),(92,21),(93,2),(94,80);
/*!40000 ALTER TABLE `musicToAlbum` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `musicToAlbum` with 96 row(s)
--

--
-- Table structure for table `musicToArtist`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musicToArtist` (
  `Song_ID` int DEFAULT NULL,
  `Artist_ID` int DEFAULT NULL,
  KEY `Song_ID` (`Song_ID`),
  KEY `Artist_ID` (`Artist_ID`),
  CONSTRAINT `musicToArtist_ibfk_1` FOREIGN KEY (`Song_ID`) REFERENCES `musicDetails` (`Song_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `musicToArtist_ibfk_2` FOREIGN KEY (`Artist_ID`) REFERENCES `artistDetails` (`Artist_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicToArtist`
--

LOCK TABLES `musicToArtist` WRITE;
/*!40000 ALTER TABLE `musicToArtist` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `musicToArtist` VALUES (1,1),(2,26),(3,56),(4,6),(5,41),(5,59),(6,48),(7,25),(8,20),(9,36),(10,38),(11,4),(12,65),(13,58),(14,21),(15,42),(16,61),(17,7),(18,12),(19,11),(20,68),(21,24),(22,5),(23,54),(24,67),(25,55),(26,72),(27,39),(28,31),(29,8),(30,32),(31,30),(32,6),(33,68),(34,47),(35,44),(36,56),(37,8),(38,28),(39,42),(40,64),(41,9),(42,45),(43,9),(44,52),(45,29),(46,71),(47,15),(48,50),(49,10),(50,53),(51,72),(52,57),(53,43),(54,14),(55,50),(56,31),(57,33),(58,23),(59,2),(60,19),(60,35),(61,35),(62,22),(63,3),(64,66),(65,17),(65,31),(66,31),(67,12),(68,13),(69,53),(70,34),(71,27),(72,19),(72,35),(73,35),(74,60),(75,69),(76,18),(76,57),(77,51),(78,72),(79,49),(80,12),(81,1),(82,16),(83,6),(84,70),(85,46),(86,37),(87,2),(88,40),(89,43),(90,63),(91,5),(92,19),(93,3),(94,62);
/*!40000 ALTER TABLE `musicToArtist` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `musicToArtist` with 99 row(s)
--

--
-- Table structure for table `musicToGenre`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musicToGenre` (
  `Song_ID` int DEFAULT NULL,
  `Genre_ID` int DEFAULT NULL,
  KEY `Song_ID` (`Song_ID`),
  KEY `Genre_ID` (`Genre_ID`),
  CONSTRAINT `musicToGenre_ibfk_1` FOREIGN KEY (`Song_ID`) REFERENCES `musicDetails` (`Song_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `musicToGenre_ibfk_2` FOREIGN KEY (`Genre_ID`) REFERENCES `genreDetails` (`Genre_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicToGenre`
--

LOCK TABLES `musicToGenre` WRITE;
/*!40000 ALTER TABLE `musicToGenre` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `musicToGenre` VALUES (1,28),(2,16),(3,20),(4,16),(5,37),(6,30),(7,10),(8,14),(9,37),(10,10),(11,40),(12,16),(13,35),(14,23),(15,37),(16,40),(17,19),(18,17),(19,26),(19,15),(20,24),(20,15),(20,27),(21,3),(21,29),(22,22),(22,8),(23,9),(24,38),(25,39),(26,25),(27,37),(28,36),(29,39),(30,37),(31,43),(32,16),(33,24),(33,15),(33,27),(34,43),(35,18),(36,20),(37,39),(38,38),(39,27),(40,13),(41,12),(42,41),(43,12),(44,11),(45,9),(46,38),(47,34),(48,33),(49,2),(50,2),(51,25),(52,22),(53,32),(54,7),(55,33),(56,36),(57,22),(58,2),(59,1),(60,10),(61,37),(62,27),(63,6),(64,14),(65,30),(66,36),(67,18),(68,14),(69,2),(70,37),(71,7),(72,10),(73,37),(74,30),(75,42),(76,2),(77,6),(78,25),(79,11),(80,17),(81,28),(82,21),(83,16),(84,30),(85,23),(86,37),(87,1),(88,23),(89,22),(90,5),(91,22),(91,8),(92,10),(93,6),(94,4),(94,31);
/*!40000 ALTER TABLE `musicToGenre` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `musicToGenre` with 103 row(s)
--

--
-- Table structure for table `titleDetails`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titleDetails` (
  `Title_ID` int NOT NULL,
  `Title` varchar(77) DEFAULT NULL,
  PRIMARY KEY (`Title_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titleDetails`
--

LOCK TABLES `titleDetails` WRITE;
/*!40000 ALTER TABLE `titleDetails` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `titleDetails` VALUES (1,'2:30'),(2,'A Commotion'),(3,'Alabama Blues'),(4,'Alice\'s Restaurant Massacree'),(5,'All The Young Dudes (David Bowie)'),(6,'Alligator Sky'),(7,'American Heart'),(8,'American Pie'),(9,'Aqualung'),(10,'Ashes By Now'),(11,'Big Jet Plane (Radio Edit)'),(12,'Bird Song'),(13,'Boogie On Reggae Woman'),(14,'Brazilian Stomp'),(15,'Bring Me Home'),(16,'C\'est La Mort'),(17,'Chicken on a Raft'),(18,'Don\'t Think Twice, It\'s All Right'),(19,'Eagle Plume Dancer'),(20,'Earth & Sky'),(21,'Everybody\'s Fool'),(22,'Fake Tales Of San Francisco'),(23,'Fields of Gold'),(24,'Fire'),(25,'Fortune Teller'),(26,'Free Bird Live [Fox Theater]'),(27,'French Letter'),(28,'Got The Love'),(29,'Great Southern Land'),(30,'Hallelujah'),(31,'Hard Travelin\' Hootenanny'),(32,'He Aha Ra Te Manu'),(33,'Hey'),(34,'Hineraukatauri (Goddess of Music)'),(35,'Hopeless Wanderer'),(36,'How do you plead'),(37,'How Sweet Can You Get'),(38,'I\'ll Be Long Gone'),(39,'I\'m in the Mood for Dancing'),(40,'If I Ever Leave This World Alive'),(41,'Leave a Light On'),(42,'Like Someone In Love'),(43,'Little Black Book'),(44,'Lost For Words'),(45,'Maggie'),(46,'Marijuana'),(47,'Marooned'),(48,'Mary'),(49,'Messages'),(50,'Northern Lights'),(51,'Now There\'s That Fear Again'),(52,'One Golden Rule'),(53,'One Slip'),(54,'Parihaka'),(55,'Radioactive'),(56,'River'),(57,'Sarah Victoria'),(58,'Shower the People'),(59,'Silent Warrior'),(60,'Simple Love [#]'),(61,'Slice of Heaven'),(62,'Slow Train'),(63,'Spanish Train'),(64,'Stay'),(65,'Steal Your Heart Away'),(66,'Sweet Baby James'),(67,'Tell me'),(68,'The Forest Awakes'),(69,'The Horses'),(70,'The Mother'),(71,'The Sodom And Gomorrah Show'),(72,'The Times They Are A-Changin\''),(73,'The Traveller'),(74,'The Woods'),(75,'Til We Outnumber \'Em (This Land Is You Land)'),(76,'Turn! Turn! Turn!'),(77,'Unchain My Heart [90\'s Version]'),(78,'Waiting For You'),(79,'We can let it happen tonight'),(80,'When Girls Collide'),(81,'When You Come Back Home'),(82,'You Probably Couldn\'t See For The Lights, But You Were Staring Straight At Me'),(83,'You Were Mine'),(84,'You\'re Just a Country Boy'),(85,'Zombie');
/*!40000 ALTER TABLE `titleDetails` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `titleDetails` with 85 row(s)
--

--
-- Table structure for table `users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `Username` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Password` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `users` VALUES ('Admin','12345678'),('Graeme','12345678'),('Username','password'),('Visitor','password');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `users` with 4 row(s)
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET AUTOCOMMIT=@OLD_AUTOCOMMIT */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Thu, 05 Aug 2021 21:52:20 +0000
