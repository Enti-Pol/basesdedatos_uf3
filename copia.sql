-- MySQL dump 10.18  Distrib 10.3.27-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pokenti
-- ------------------------------------------------------
-- Server version	10.3.27-MariaDB-0+deb10u1

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
-- Table structure for table `poke_stats`
--

DROP TABLE IF EXISTS `poke_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poke_stats` (
  `id_poke_stat` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actual_hp` int(11) NOT NULL,
  `total_hp` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `dmg` int(11) NOT NULL,
  `special_dmg` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `special_defense` int(11) NOT NULL,
  `speed` int(11) NOT NULL,
  `id_pokemon` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_poke_stat`),
  KEY `id_pokemon` (`id_pokemon`),
  CONSTRAINT `poke_stats_ibfk_1` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemons` (`id_pokemon`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poke_stats`
--

LOCK TABLES `poke_stats` WRITE;
/*!40000 ALTER TABLE `poke_stats` DISABLE KEYS */;
INSERT INTO `poke_stats` VALUES (1,45,45,1,49,65,49,65,45,1),(2,60,60,1,62,80,63,80,60,2),(3,60,60,1,62,80,63,80,60,3),(4,80,80,1,82,100,83,100,80,4),(5,58,58,1,64,80,58,65,80,5),(6,78,78,1,84,109,78,85,100,6),(7,44,44,1,48,50,65,64,43,7),(8,59,59,1,63,65,80,80,58,8),(9,79,79,1,83,85,100,105,78,9),(10,45,45,1,30,20,35,20,45,10),(11,50,50,1,20,25,55,25,30,11),(12,60,60,1,45,90,50,80,70,12),(13,40,40,1,35,20,30,20,50,13),(14,45,45,1,25,25,50,25,35,14),(15,65,65,1,90,45,40,80,75,15),(16,40,40,1,45,35,40,35,56,16),(17,63,63,1,60,50,55,50,71,17),(18,83,83,1,80,70,75,70,101,18);
/*!40000 ALTER TABLE `poke_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon_catched`
--

DROP TABLE IF EXISTS `pokemon_catched`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokemon_catched` (
  `id_pokemon_catched` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modified_name` varchar(24) DEFAULT NULL,
  `id_pokemon` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_pokemon_catched`),
  KEY `id_pokemon` (`id_pokemon`),
  CONSTRAINT `pokemon_catched_ibfk_1` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemons` (`id_pokemon`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_catched`
--

LOCK TABLES `pokemon_catched` WRITE;
/*!40000 ALTER TABLE `pokemon_catched` DISABLE KEYS */;
INSERT INTO `pokemon_catched` VALUES (1,NULL,1),(2,NULL,2),(3,NULL,3),(4,NULL,4),(5,NULL,5),(6,NULL,6);
/*!40000 ALTER TABLE `pokemon_catched` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemons`
--

DROP TABLE IF EXISTS `pokemons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokemons` (
  `id_pokemon` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL,
  `pokedex_number` int(10) unsigned NOT NULL,
  `evolution` int(10) unsigned NOT NULL,
  `id_type` int(10) unsigned NOT NULL,
  `id_type2` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_pokemon`),
  KEY `id_type` (`id_type`),
  KEY `id_type2` (`id_type2`),
  CONSTRAINT `pokemons_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `types` (`id_type`),
  CONSTRAINT `pokemons_ibfk_2` FOREIGN KEY (`id_type2`) REFERENCES `types` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemons`
--

LOCK TABLES `pokemons` WRITE;
/*!40000 ALTER TABLE `pokemons` DISABLE KEYS */;
INSERT INTO `pokemons` VALUES (1,'Bulbasaur',1,2,13,18),(2,'Ivysaur',2,3,13,18),(3,'Venusaur',3,0,13,18),(4,'Charmander',4,5,8,1),(5,'Charmeleon',5,6,8,1),(6,'Charizard',6,0,8,19),(7,'Squirte',7,8,3,1),(8,'Wartortle',8,9,3,1),(9,'Blastoise',9,0,3,1),(10,'Caterpie',10,11,4,1),(11,'Metapod',11,12,4,1),(12,'Butterfree',12,0,4,19),(13,'Weedle',13,14,4,18),(14,'Kakuna',14,15,4,18),(15,'Beedrill',15,0,4,18),(16,'Pidgey',16,17,12,19),(17,'Pidgeotto',17,18,12,19),(18,'Pidgeot',18,0,12,19);
/*!40000 ALTER TABLE `pokemons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemons_in_team`
--

DROP TABLE IF EXISTS `pokemons_in_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokemons_in_team` (
  `id_pokemon_in_team` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_catched` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_pokemon_in_team`),
  KEY `id_catched` (`id_catched`),
  CONSTRAINT `pokemons_in_team_ibfk_1` FOREIGN KEY (`id_catched`) REFERENCES `pokemon_catched` (`id_pokemon_catched`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemons_in_team`
--

LOCK TABLES `pokemons_in_team` WRITE;
/*!40000 ALTER TABLE `pokemons_in_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `pokemons_in_team` ENABLE KEYS */;
UNLOCK TABLES;
