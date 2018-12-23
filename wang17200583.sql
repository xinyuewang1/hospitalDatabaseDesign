-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: wang17200583
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidates` (
  `idcandidates` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) NOT NULL,
  PRIMARY KEY (`idcandidates`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates`
--

LOCK TABLES `candidates` WRITE;
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` VALUES ('C1','Amar','Agha','4 Simmonscourt Road, Dublin 4','(01) 797 4746'),('C10','John','Burke',NULL,'(01) 8093092'),('C11','Ernest','Agha','','(010)23453453'),('C12','j','j','j','j'),('C13','test','test','test','test'),('C2','Nadeem','Ajmal','Pearse St, Dublin 2','(01) 809 2691'),('C3','David','Allcutt',NULL,'(01) 809 3342'),('C4','Michael','Allen','Eastmoreland Ln, Dublin 4','(01) 809 3093'),('C5','Mayilone','Arumugasamy',NULL,'(01) 809 3091'),('C6','Ciaran','Bolger','Earlsfort Terrac, Saint Kevin\'s, Dublin 2','(01) 809 3279'),('C7','Peter','Branagan','Grand Canal Square, Docklands, Dublin 2','(01) 809 2103'),('C8','Oscar','Breathnach',NULL,'(01) 809 2683'),('C9','Linda','Brewer','127/128 St Stephen\'s Green, Dublin 2','(01) 7974718');
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidateskills`
--

DROP TABLE IF EXISTS `candidateskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidateskills` (
  `idcandidate` varchar(45) NOT NULL,
  `skillcode` varchar(45) NOT NULL,
  PRIMARY KEY (`idcandidate`,`skillcode`),
  KEY `skillcode_idx` (`skillcode`),
  CONSTRAINT `idcandidatefk` FOREIGN KEY (`idcandidate`) REFERENCES `candidates` (`idcandidates`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `skillcodefk` FOREIGN KEY (`skillcode`) REFERENCES `skills` (`skillcode`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidateskills`
--

LOCK TABLES `candidateskills` WRITE;
/*!40000 ALTER TABLE `candidateskills` DISABLE KEYS */;
INSERT INTO `candidateskills` VALUES ('C1','Dan'),('C2','Dan'),('C1','End'),('C1','Exc'),('C9','Exc'),('C4','GeM'),('C3','Ger'),('C9','Ger'),('C10','GeS'),('C4','GeS'),('C5','GeS'),('C8','GeS'),('C3','Neu'),('C6','Neu'),('C7','Onc'),('C8','Onc'),('C1','PlS'),('C2','PlS'),('C7','Pls'),('C8','Pls'),('C7','Res');
/*!40000 ALTER TABLE `candidateskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospitals` (
  `idhospital` varchar(60) NOT NULL,
  `hospitalname` varchar(45) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idhospital`),
  UNIQUE KEY `address_UNIQUE` (`address`),
  UNIQUE KEY `telephone_UNIQUE` (`telephone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES ('D01','St. Vincent\'s University Hospital','196 Merrion Rd, Dublin 4',' (01) 221 4000'),('D02','Royal Hospital, Donnybrook',' 70 Morehampton Rd, Dublin 4',' (01) 406 6600'),('D03','St. Luke\'s Hospital, Rathgar','6 Highfield Rd, Rathfarnham, Rathgar, Co. Dublin',' (01) 406 5000'),('D04','Beacon Hospital','Beacon Court, Bracken Road, Sandyford Industrial Estate, Dublin 18',' (01) 293 6600'),('D05','National Maternity Hospital, Dublin','Holles St, Grand Canal Dock, Dublin','(01) 637 3100'),('D06','Coombe Women & Infants University Hospital','Cork St, Merchants Quay, Dublin 8','(01) 408 5200'),('D07','Rotunda Hospital','Parnell Square E, Rotunda, Dublin 1',' (01) 817 1700'),('D08','Mater Misericordiae University Hospital','Eccles St, Inns Quay, Dublin 7','(01) 803 2000'),('D09','St Vincent\'s Private Hospital','4 Merrion Rd, Dublin Southside, Dublin 4','(01) 263 8000'),('D10','Beaumont Hospital, Dublin','Beaumont Rd, Beaumont, Dublin','(01) 809 3000');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviews`
--

DROP TABLE IF EXISTS `interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interviews` (
  `idinterviews` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `candidate` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'scheduling' COMMENT 'scheduling, confirmed, finished, offered, refused',
  `date` date NOT NULL,
  PRIMARY KEY (`idinterviews`),
  KEY `candidatefk_idx` (`candidate`),
  KEY `fk_position_idx` (`position`),
  CONSTRAINT `candidatefk` FOREIGN KEY (`candidate`) REFERENCES `candidates` (`idcandidates`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_position` FOREIGN KEY (`position`) REFERENCES `positions` (`idpositions`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviews`
--

LOCK TABLES `interviews` WRITE;
/*!40000 ALTER TABLE `interviews` DISABLE KEYS */;
INSERT INTO `interviews` VALUES ('I1','P1','C1','offered','2017-09-28'),('I10','P3','C9','confirmed','2017-07-01'),('I11','P8','C8','confirmed','2017-05-29'),('I12','P9','C7','scheduling','2017-11-12'),('I13','P9','C8','finished','2017-05-03'),('I14','P11','C7','confirmed','2017-01-09'),('I15','P12','C7','confirmed','2017-03-26'),('I2','P5','C4','offered','2017-07-16'),('I3','P5','C5','finished','2017-10-12'),('I4','P4','C9','confirmed','2017-10-21'),('I5','P4','C3','refused','2017-09-24'),('I6','P5','C8','offered','2017-10-24'),('I7','P5','C10','finished','2017-09-04'),('I8','P2','C1','offered','2017-12-31'),('I9','P8','C7','scheduling','2017-12-16');
/*!40000 ALTER TABLE `interviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `wang17200583`.`interviews_BEFORE_INSERT` BEFORE INSERT ON `interviews` FOR EACH ROW
BEGIN
declare msg varchar(200);
call wang17200583.q_candidate_position_for_interview(new.`position`);

if not new.`candidate` = any (select * from foo)
then 
	set msg = concat('Candidate does not meet position requirement.');
    signal sqlstate '45000' set message_text = msg;
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positions` (
  `idpositions` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `hospital` varchar(45) NOT NULL,
  PRIMARY KEY (`idpositions`),
  KEY `fk_hospital_idx` (`hospital`),
  CONSTRAINT `fk_hospital` FOREIGN KEY (`hospital`) REFERENCES `hospitals` (`idhospital`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES ('P1','admin','D01'),('P10','admin','D10'),('P11','doctor','D10'),('P12','nursing','D03'),('P2','doctor','D02'),('P3','nursing','D03'),('P4','admin','D04'),('P5','doctor','D05'),('P6','nursing','D06'),('P7','admin','D07'),('P8','doctor','D08'),('P9','nursing','D09');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionskill`
--

DROP TABLE IF EXISTS `positionskill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positionskill` (
  `idposition` varchar(45) NOT NULL,
  `skill` varchar(45) NOT NULL,
  PRIMARY KEY (`idposition`,`skill`),
  KEY `skill_skill_fk_idx` (`skill`),
  CONSTRAINT `fk_position_skill` FOREIGN KEY (`idposition`) REFERENCES `positions` (`idpositions`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `skill_skill_fk` FOREIGN KEY (`skill`) REFERENCES `skills` (`skillcode`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionskill`
--

LOCK TABLES `positionskill` WRITE;
/*!40000 ALTER TABLE `positionskill` DISABLE KEYS */;
INSERT INTO `positionskill` VALUES ('P1','Dan'),('P2','End'),('P1','Exc'),('P3','Exc'),('P12','GeM'),('P3','Ger'),('P4','Ger'),('P5','GeS'),('P10','Mus'),('P6','Mus'),('P6','Neu'),('P7','Neu'),('P7','Nur'),('P8','Onc'),('P9','Onc'),('P1','PlS'),('P9','PlS'),('P11','Res');
/*!40000 ALTER TABLE `positionskill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `skillcode` varchar(45) NOT NULL,
  `skillname` varchar(45) NOT NULL,
  `skill_description` tinytext,
  PRIMARY KEY (`skillcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES ('Dan','Dancing','Any kind of dance if good.'),('End','Endocrinology','A branch of biology and medicine dealing with the endocrine system, its diseases, and its specific secretions known as hormones.'),('Exc','Microsoft Excel','Microsoft Office'),('GeM','General Medicine','Dealing with the prevention, diagnosis, and treatment of adult diseases. '),('Ger','Geriatrics','A speciality that focuses on health care of elderly people.'),('GeS','General Surgery','Digestive system surgery, or gastrointestinal surgery, can be divided into upper GI surgery and lower GI surgery.'),('Mus','Singing',NULL),('Neu','Neurosurgery','medical specialty concerned with the prevention, diagnosis, surgical treatment, and rehabilitation of disorders which affect any portion of the nervous system including the brain, spinal cord, peripheral nerves, and extra-cranial cerebrovascular system.'),('Nur','Nursing','A profession within the health care sector focused on the care of individuals, families, and communities so they may attain, maintain, or recover optimal health and quality of life.'),('Onc','Oncology','A branch of medicine that deals with the prevention, diagnosis, and treatment of cancer.'),('PlS','Plastic Surgery','A surgical specialty involving the restoration, reconstruction, or alteration of the human body.'),('Res','Respiratory','Respiratory physicians provide the necessary support and care for such acutely unwell patients.');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'wang17200583'
--

--
-- Dumping routines for database 'wang17200583'
--
/*!50003 DROP PROCEDURE IF EXISTS `insert_candidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_candidate`(
	in `in_idcandidates` varchar(45),
    in `in_firstname` varchar(45),
    in `in_surname` varchar(45),
    in `in_address` varchar(45),
    in `in_telephone`varchar(45)
)
BEGIN
insert into candidates (
	`idcandidates`,`firstname`,`surname`,`address`,`telephone`
)
values (
	`in_idcandidates`,`in_firstname`,`in_surname`,`in_address`,`in_telephone`
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_candidateskill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_candidateskill`(
	in `in_idcandidate` varchar(45),
    in `in_skillcode` varchar(45)
)
BEGIN
insert into candidateskills (
	`idcandidate`,`skillcode`
)
values (
	`in_idcandidate`,`in_skillcode`
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_candidate_auto_increment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_candidate_auto_increment`(
    in `in_firstname` varchar(45),
    in `in_surname` varchar(45),
    in `in_address` varchar(45),
    in `in_telephone`varchar(45)
)
BEGIN
declare id varchar(45);
set id = concat('C', (select if (count(*)=0, 1, count(*)+1) from candidates));
insert into candidates (
	`idcandidates`,`firstname`,`surname`,`address`,`telephone`
)
values (
	id,`in_firstname`,`in_surname`,`in_address`,`in_telephone`
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_hospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_hospital`(
	in `in_idhospital` varchar(45),
    in `in_hospitalname` varchar(45),
    in `in_address` varchar(45),
    in `in_telephone`varchar(45)
)
BEGIN
insert into hospitals (
	`idhospital`,`hospitalname`,`address`,`telephone`
)
values (
	`in_idhospital`,`in_hospitalname`,`in_address`,`in_telephone`
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_interviews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_interviews`(
	in `in_idinterviews` varchar(45),
    in `in_position` varchar(45),
    in `in_candidate` varchar(45),
    in `in_status` varchar(45),
    in `in_date`date
)
BEGIN
insert into interviews (
	`idinterviews`,`position`,`candidate`,`status`,`date`
)
values (
	`in_idinterviews`,`in_position`,`in_candidate`,`in_status`,`in_date`
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_positions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_positions`(
	in `in_idpositions` varchar(45),
    in `in_type` varchar(45),
    in `in_hospital` varchar(45),
    in `in_skills` varchar(45)
)
BEGIN
insert into positions (
	`idpositions`,`type`,`hospital`,`skills`
)
values (
	`in_idpositions`,`in_type`,`in_surname`,`in_hospital`,`in_skills`
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_skills`(
	in `in_skillcode` varchar(45),
    in `in_skillname` varchar(45),
    in `in_skill_description` varchar(300)
)
BEGIN
insert into skills (
	`skillcode`,`skillname`,`skill_description`
)
values (
	`in_skillcode`,`in_skillname`,`in_skill_description`
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q_candidate_a_skill_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q_candidate_a_skill_position`(in `in_position` varchar(45))
BEGIN
select distinct c.*,skill as MatchSkill
from candidates c, candidateskills cs, positionskill ps
where ps.skill = cs.skillcode
and cs.idcandidate = c.idcandidates
and `in_position` = ps.idposition ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q_candidate_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q_candidate_id`(in `in_id` varchar(45))
BEGIN
select *
	from candidates
    where `in_id` = `idcandidates`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q_candidate_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q_candidate_name`(in `in_name` varchar(45))
BEGIN
select *
	from candidates
    where `in_name` = `surname` or `in_name` = `firstname`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q_candidate_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q_candidate_position`(in `position_id` varchar(45))
BEGIN
select c.*
from positionskill ps, candidateskills cs, candidates c
where `position_id` = ps.idposition
and ps.skill = cs.skillcode
and cs.idcandidate = c.idcandidates
group by c.idcandidates
having count(c.idcandidates) = ( select count(*) 
								from positionskill ps 
                                where `position_id` = ps.idposition)
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q_candidate_position_for_interview` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q_candidate_position_for_interview`(in `position_id` varchar(45))
BEGIN
DROP TEMPORARY TABLE IF EXISTS foo;
CREATE TEMPORARY TABLE foo 
select cs.idcandidate  
from positionskill ps, candidateskills cs, candidates c
where `position_id` = ps.idposition
and ps.skill = cs.skillcode
and cs.idcandidate = c.idcandidates
group by c.idcandidates
having count(c.idcandidates) = ( select count(*) 
								from positionskill ps 
                                where `position_id` = ps.idposition)
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q_hospital_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q_hospital_id`(in `hospital_id` varchar(60))
BEGIN
select *
	from hospitals
    where `hospital_id` = `idhospital`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q_hospital_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q_hospital_name`(in `hospital_name` varchar(45))
BEGIN
select *
	from hospitals
    where `hospital_name` = `hospitalname`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q_interview_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q_interview_date`(in `in_date` date)
BEGIN
select *
from interviews
where `in_date` = date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q_name&id_interview>=2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q_name&id_interview>=2`()
BEGIN
select c.idcandidates, c.firstname, c.surname, count(*) as InterviewTime
from candidates c, interviews i
where i.candidate = c.idcandidates
group by c.idcandidates, c.firstname, c.surname
having  count(i.candidate) >= 2
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q_numPosition_nursing` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q_numPosition_nursing`()
BEGIN
select count(*)
from positionskill
where skill = 'Nur';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q_position_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q_position_id`(in `in_position` varchar(45))
BEGIN
select *
from positions
where `in_position` = idpositions;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q_position_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q_position_skill`(in `in_skill` varchar(45))
BEGIN
select p.*
from positions p, positionskill ps
where `in_skill` = ps.skill
and ps.idposition = p.idpositions;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q_S_position_hospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q_S_position_hospital`()
BEGIN
select *
from positions
order by hospital asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `t_candidate_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `t_candidate_position`(in `position_id` varchar(45))
BEGIN
if
(select c.*
from positionskill ps, candidateskills cs, candidates c
where `position_id` = ps.idposition
and ps.skill = cs.skillcode
and cs.idcandidate = c.idcandidates
group by c.idcandidates
having count(c.idcandidates) = ( select count(*) 
								from positionskill ps 
                                where `position_id` = ps.idposition)) is null
then signal sqlstate '45000' set message_text = 'ouch';
end if;

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

-- Dump completed on 2017-11-15 19:45:00
