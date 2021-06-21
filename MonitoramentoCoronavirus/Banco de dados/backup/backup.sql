-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: covid21
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agendamento`
--

DROP TABLE IF EXISTS `agendamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agendamento` (
  `codage` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Código do agendamento.',
  `horage` timestamp(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Horáro do agendamento.',
  `datage` date NOT NULL COMMENT 'Data do agendamento.',
  `codpac` int(10) NOT NULL COMMENT 'Código do Paciente',
  `codmed` int(10) NOT NULL COMMENT 'Código do médico',
  `codhos` int(10) NOT NULL COMMENT 'Código do Hospital',
  PRIMARY KEY (`codage`),
  KEY `FKAgendament20513` (`codpac`),
  KEY `FKAgendament28796` (`codmed`),
  KEY `FKAgendament770750` (`codhos`),
  CONSTRAINT `FKAgendament20513` FOREIGN KEY (`codpac`) REFERENCES `paciente` (`codpac`),
  CONSTRAINT `FKAgendament28796` FOREIGN KEY (`codmed`) REFERENCES `medico` (`codmed`),
  CONSTRAINT `FKAgendament770750` FOREIGN KEY (`codhos`) REFERENCES `hospital` (`codhos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabela de agendamento';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendamento`
--

LOCK TABLES `agendamento` WRITE;
/*!40000 ALTER TABLE `agendamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `agendamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria`
--

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria` (
  `codaud` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Codigo da auditoria',
  `desaud` varchar(60) NOT NULL COMMENT 'Descricao do processo',
  `dataud` date NOT NULL DEFAULT curdate() COMMENT 'Data da realização da mudanca',
  PRIMARY KEY (`codaud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital` (
  `codhos` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Código do hospital.',
  `nomhos` varchar(120) NOT NULL COMMENT 'Nome do hospital.',
  `quahos` int(10) NOT NULL COMMENT 'Quantidade de internados.',
  PRIMARY KEY (`codhos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabela de Hospitais';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico` (
  `codmed` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Código do médico.',
  `nommed` varchar(120) NOT NULL COMMENT 'Nome do médico.',
  `datmed` date NOT NULL COMMENT 'Data de nascimento do médico.',
  `crmmed` int(6) NOT NULL COMMENT 'Número de CRM(Conselho Regional de Medicina) do médico.',
  PRIMARY KEY (`codmed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabela de Médicos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `codpac` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Código do paciente',
  `nompac` varchar(120) NOT NULL COMMENT 'Nome do paciente.',
  `datpac` date NOT NULL COMMENT 'Data de nascimento do paciente.',
  `pespac` decimal(5,2) NOT NULL COMMENT 'Peso do Paciente',
  `altpac` decimal(3,2) NOT NULL COMMENT 'Altura do Paciente',
  `cpfpac` int(11) NOT NULL COMMENT 'CPF do paciente.',
  `sexpac` varchar(9) NOT NULL COMMENT 'Sexo do paciente.',
  `usupac` varchar(60) NOT NULL COMMENT 'Usuario  paciente',
  `senpac` varchar(60) NOT NULL COMMENT 'Senha do paciente',
  `ruapac` varchar(100) NOT NULL COMMENT 'Rua do paciente',
  `cidpac` varchar(100) NOT NULL COMMENT 'Cidade do paciente',
  `ceppac` int(14) NOT NULL COMMENT 'Cep do paciente',
  `estpac` varchar(60) NOT NULL COMMENT 'Estado do paciente',
  `nivel` int(1) NOT NULL DEFAULT 1 COMMENT 'Nivel de acesso (1-Paciente, 2-Medico)',
  PRIMARY KEY (`codpac`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='Tabela de pacientes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'evelyn Perondi','2000-06-27',60.00,1.00,1109976430,'Feminino','evelyn','evelyn','columbia,1740','São Miguel do Oeste',89900000,'SC',1),(2,'Jefferson Barbosa','0000-00-00',1.80,9.99,2147483647,'Masculino','Jefe','1234','columbia,1741','São Miguel do Oeste',89900000,'Santa Catarina',2),(3,'elizete barbosa','1990-06-05',60.00,1.00,2147483647,'Feminino','elizete','elizete','columbia,1740','São Miguel do Oeste',89900000,'SC',1),(4,'jair carlos barbosa','1980-06-18',60.00,1.00,2147483647,'Masculino','jair','jair','columbia,1740','São Miguel do Oeste',89900000,'SC',1),(5,'jack','2020-06-01',9.00,0.50,2147483647,'Masculino','jack','jack','columbia,1740','Maravilha',89900000,'SC',1),(6,'marcelo','2014-07-01',60.00,1.00,2147483647,'Masculino','marcelo','marcelo','columbia,1740','Itapiranga',89900000,'SC',1);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger crt_paciente after INSERT
on paciente
for each row
insert into auditoria (desaud) values ('Paciente Cadastrado!') */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger create_paciente after INSERT
on paciente
for each row
insert into auditoria (desaud) values ('Paciente Cadastrado!') */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger cdt_sintomas after INSERT
on paciente
for each row
insert into auditoria (desaud) values ('Sintomas Cadastrados!') */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `select_1`
--

DROP TABLE IF EXISTS `select_1`;
/*!50001 DROP VIEW IF EXISTS `select_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `select_1` (
  `codpac` tinyint NOT NULL,
  `nompac` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `select_2`
--

DROP TABLE IF EXISTS `select_2`;
/*!50001 DROP VIEW IF EXISTS `select_2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `select_2` (
  `nompac` tinyint NOT NULL,
  `ceppac` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `select_3`
--

DROP TABLE IF EXISTS `select_3`;
/*!50001 DROP VIEW IF EXISTS `select_3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `select_3` (
  `ceppac` tinyint NOT NULL,
  `cidpac` tinyint NOT NULL,
  `count(si.covsin)` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sintoma`
--

DROP TABLE IF EXISTS `sintoma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sintoma` (
  `codsin` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Código dos sintomas.',
  `falsin` varchar(3) NOT NULL COMMENT 'Falta de ar',
  `febsin` varchar(3) NOT NULL COMMENT 'sintomas de febre',
  `tossin` varchar(3) NOT NULL COMMENT 'sintomas de tosse',
  `dorsin` varchar(3) NOT NULL COMMENT 'Sintomas de dor no corpo',
  `garsin` varchar(3) NOT NULL COMMENT 'Sintomas de dor de garganta',
  `calsin` varchar(3) NOT NULL COMMENT 'Sintomas de calafrio',
  `diasin` varchar(3) NOT NULL COMMENT 'Sintomas de Diarreia',
  `corsin` varchar(3) NOT NULL COMMENT 'Sintomas de coriza',
  `codpac` int(10) NOT NULL,
  `datsin` date NOT NULL DEFAULT curdate() COMMENT 'Data do relatorio dos sintomas',
  `covsin` varchar(20) NOT NULL COMMENT 'Sintomas de covid',
  PRIMARY KEY (`codsin`),
  KEY `FKSintoma207187` (`codpac`),
  CONSTRAINT `FKSintoma207187` FOREIGN KEY (`codpac`) REFERENCES `paciente` (`codpac`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='Tabela de sintomas do corona virus';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sintoma`
--

LOCK TABLES `sintoma` WRITE;
/*!40000 ALTER TABLE `sintoma` DISABLE KEYS */;
INSERT INTO `sintoma` VALUES (1,'Sim','Não','Não','Não','Sim','','Sim','Sim',1,'2021-06-18','Aguardando Resultado'),(2,'Sim','Não','Não','Sim','Não','','Sim','Sim',3,'2021-06-18','Positivo'),(3,'Sim','Sim','Sim','Sim','Sim','','Sim','Sim',4,'2021-06-19','Positivo'),(4,'Sim','Sim','Sim','Sim','Sim','','Sim','Sim',5,'2021-06-19','Positivo'),(5,'Sim','Sim','Sim','Sim','Sim','','Sim','Sim',6,'2021-06-19','Positivo');
/*!40000 ALTER TABLE `sintoma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `select_1`
--

/*!50001 DROP TABLE IF EXISTS `select_1`*/;
/*!50001 DROP VIEW IF EXISTS `select_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `select_1` AS select `pa`.`codpac` AS `codpac`,`pa`.`nompac` AS `nompac` from (`paciente` `pa` join `sintoma` `si` on(`si`.`codpac` = `pa`.`codpac`)) where timestampdiff(YEAR,`pa`.`datpac`,curdate()) > 40 and `si`.`diasin` = 'Sim' order by `pa`.`nompac` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `select_2`
--

/*!50001 DROP TABLE IF EXISTS `select_2`*/;
/*!50001 DROP VIEW IF EXISTS `select_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `select_2` AS select `pa`.`nompac` AS `nompac`,`pa`.`ceppac` AS `ceppac` from (`paciente` `pa` join `sintoma` `si` on(`si`.`codpac` = `pa`.`codpac`)) where `pa`.`sexpac` = 'Masculino' and `si`.`covsin` = 'Positivo' and (`pa`.`cidpac` = 'Maravilha' or `pa`.`cidpac` = 'Descanso' or `pa`.`cidpac` = 'Pinhalzinho' or `pa`.`cidpac` = 'Chapecó' or `pa`.`cidpac` = 'Itapiranga') order by `pa`.`ceppac` desc,`pa`.`nompac` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `select_3`
--

/*!50001 DROP TABLE IF EXISTS `select_3`*/;
/*!50001 DROP VIEW IF EXISTS `select_3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `select_3` AS select `pa`.`ceppac` AS `ceppac`,`pa`.`cidpac` AS `cidpac`,count(`si`.`covsin`) AS `count(si.covsin)` from (`paciente` `pa` join `sintoma` `si` on(`si`.`codpac` = `pa`.`codpac`)) where `si`.`covsin` = 'Aguardando Resultado' having count(`si`.`covsin`) > 4 and count(`si`.`covsin`) < 11 order by count(`si`.`covsin`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-20 21:01:06
