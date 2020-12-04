-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 06:06 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escola`
--
CREATE DATABASE IF NOT EXISTS `escola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `escola`;

-- --------------------------------------------------------

--
-- Table structure for table `cargo`
--

CREATE TABLE `cargo` (
  `codCargo` int(11) NOT NULL,
  `cargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cargo`
--

INSERT INTO `cargo` (`codCargo`, `cargo`) VALUES
(1, 'Professor'),
(2, 'Coordenador Pedagógico'),
(3, 'Coordenador de Informática'),
(4, 'Coordenador do Ensino Médio'),
(5, 'Coordenador de R.H.');

-- --------------------------------------------------------

--
-- Table structure for table `cargofuncionario`
--

CREATE TABLE `cargofuncionario` (
  `idFunc` int(11) NOT NULL,
  `codCargo` int(11) NOT NULL,
  `dataEntra` date NOT NULL,
  `dataSai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cargofuncionario`
--

INSERT INTO `cargofuncionario` (`idFunc`, `codCargo`, `dataEntra`, `dataSai`) VALUES
(2, 1, '2011-10-07', NULL),
(2, 4, '2011-11-07', '2015-07-02'),
(2, 2, '2012-09-07', '2015-09-04'),
(5, 1, '2014-08-04', NULL),
(5, 5, '2019-07-07', NULL),
(5, 4, '2015-07-08', NULL),
(5, 2, '2015-09-07', NULL),
(3, 1, '2008-03-07', NULL),
(3, 3, '2019-06-20', NULL),
(1, 1, '2006-11-05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `funcionario`
--

CREATE TABLE `funcionario` (
  `idFunc` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `dataEntra` date NOT NULL,
  `dataSai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `funcionario`
--

INSERT INTO `funcionario` (`idFunc`, `nome`, `dataEntra`, `dataSai`) VALUES
(1, 'Anderson', '2006-11-05', NULL),
(2, 'Amanda', '2011-10-07', NULL),
(3, 'Carlos', '2008-03-07', NULL),
(5, 'Agda', '2014-08-04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`codCargo`);

--
-- Indexes for table `cargofuncionario`
--
ALTER TABLE `cargofuncionario`
  ADD KEY `idFunc` (`idFunc`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFunc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargo`
--
ALTER TABLE `cargo`
  MODIFY `codCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFunc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
