-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.24-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para churras_dos_crias
CREATE DATABASE IF NOT EXISTS `churras_dos_crias` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `churras_dos_crias`;

-- Copiando estrutura para tabela churras_dos_crias.churras
CREATE TABLE IF NOT EXISTS `churras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_lugar` int(11) DEFAULT NULL,
  `edicao` int(11) DEFAULT 0,
  `titulo` varchar(50) DEFAULT NULL,
  `ingresso` double DEFAULT NULL,
  `data_planejada` date DEFAULT NULL,
  `data_acontecimento` date DEFAULT NULL,
  `dh_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `dh_edicao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_churras_lugares` (`id_lugar`),
  CONSTRAINT `FK_churras_lugares` FOREIGN KEY (`id_lugar`) REFERENCES `lugares` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela churras_dos_crias.churras_participante
CREATE TABLE IF NOT EXISTS `churras_participante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_churras` int(11) DEFAULT NULL,
  `id_participante` int(11) DEFAULT NULL,
  `dh_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `dh_edicao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_churras_participante_churras` (`id_churras`),
  KEY `FK_churras_participante_participantes` (`id_participante`),
  CONSTRAINT `FK_churras_participante_churras` FOREIGN KEY (`id_churras`) REFERENCES `churras` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_churras_participante_participantes` FOREIGN KEY (`id_participante`) REFERENCES `participantes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela churras_dos_crias.itens
CREATE TABLE IF NOT EXISTS `itens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_churras` int(11) DEFAULT NULL,
  `nome` varchar(80) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `dh_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `dh_edicao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_itens_churras` (`id_churras`),
  CONSTRAINT `FK_itens_churras` FOREIGN KEY (`id_churras`) REFERENCES `churras` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela churras_dos_crias.lugares
CREATE TABLE IF NOT EXISTS `lugares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `dh_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `dh_edicao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela churras_dos_crias.operadores
CREATE TABLE IF NOT EXISTS `operadores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` int(11) NOT NULL DEFAULT 0,
  `login` varchar(128) DEFAULT NULL,
  `senha` varchar(128) DEFAULT NULL,
  `dh_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `dh_edicao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela churras_dos_crias.participantes
CREATE TABLE IF NOT EXISTS `participantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `dh_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `dh_edicao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
