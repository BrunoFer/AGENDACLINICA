-- phpMyAdmin SQL Dump
-- version 3.3.2deb1ubuntu1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Mar 01, 2013 as 05:52 PM
-- Versão do Servidor: 5.1.67
-- Versão do PHP: 5.3.2-1ubuntu4.18

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `dbExames`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
  `dataHora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idMedico` int(11) NOT NULL,
  `idExame` int(11) NOT NULL,
  `idPaciente` int(11) NOT NULL,
  `obs` text,
  `resultado` text,
  PRIMARY KEY (`dataHora`,`idMedico`,`idExame`,`idPaciente`),
  KEY `FK_MEDICO_AGENDA` (`idMedico`),
  KEY `FK_EXAME_AGENDA` (`idExame`),
  KEY `FK_PAC_AGENDA` (`idPaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `agenda`
--

INSERT INTO `agenda` (`dataHora`, `idMedico`, `idExame`, `idPaciente`, `obs`, `resultado`) VALUES
('2005-06-15 08:30:00', 1, 2, 2, '', ''),
('2008-08-30 09:10:00', 1, 2, 2, '', ''),
('2010-02-21 15:30:00', 8, 2, 13, '', ''),
('2011-01-14 12:00:00', 1, 2, 2, '', 'nada consta'),
('2013-03-01 10:00:00', 11, 9, 14, 'asdads', 'asdasd'),
('2013-03-01 11:00:00', 11, 9, 14, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exame`
--

CREATE TABLE IF NOT EXISTS `exame` (
  `idExame` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL DEFAULT '',
  `valor` float(9,3) NOT NULL,
  PRIMARY KEY (`idExame`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `exame`
--

INSERT INTO `exame` (`idExame`, `nome`, `valor`) VALUES
(2, 'eletrocardiograma', 100.000),
(3, 'mamografia', 98.000),
(5, 'fezes', 20.000),
(6, 'raioX', 50.000),
(7, 'radioterapia', 200.000),
(8, 'prostata', 157.000),
(9, 'Exame de Tomografia', 120000.000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `medico`
--

CREATE TABLE IF NOT EXISTS `medico` (
  `idMedico` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL DEFAULT '',
  `crm` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`idMedico`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `medico`
--

INSERT INTO `medico` (`idMedico`, `nome`, `crm`) VALUES
(1, 'renato assuncao', '12345678'),
(2, 'josé carlos', '444444'),
(4, 'oscar', '15849/26'),
(5, 'oswaldo', 'mg1243567'),
(6, 'guilherme', '231312312'),
(8, 'Alexandre Bossonelli', '15879562/1'),
(9, 'Paulo Ferrara', '8913212/5'),
(11, 'Fabrcio', '246153/5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

CREATE TABLE IF NOT EXISTS `paciente` (
  `idPaciente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL DEFAULT '',
  `dataNasc` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logradouro` varchar(60) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(60) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idPaciente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`idPaciente`, `nome`, `dataNasc`, `logradouro`, `numero`, `bairro`, `cidade`, `uf`) VALUES
(2, 'Gisele Diane da Costa', '1988-06-24 00:00:00', 'av. 27 de abril', '84', 'centro', 'alfredo vasconcelos', 'MG'),
(4, 'Renan Ribeiro Cardoso', '2000-01-24 00:00:00', 'rua minas gerais', '100', 'Sao Pedro', 'barbacena', 'MG'),
(7, 'Bruno Ferreira da Costa', '1989-09-28 00:00:00', 'avenida 27 de abril', '84', 'centro', 'alfredo vasconcelos', 'MG'),
(10, 'Guilherme Jose Anselmo Moreira', '1990-09-07 00:00:00', 'Rua sem fim', '888', 'Santo Antonio', 'Barbacena', 'MG'),
(12, 'Pedro Augusto', '2001-02-21 15:00:00', 'Av. agostinho II', '101', 'Sao Jose', 'Uberlandia', 'MG'),
(13, 'nada com nada', '1987-12-25 00:00:00', '', '', '', '', 'MG'),
(14, 'Fabricio', '1989-09-28 00:00:00', 'adgsh', 'jashdg', 'jgsdjq', 'shgd', 'AC');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(15) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `authority` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`username`, `password`, `authority`) VALUES
('bruno', '123456', 'ROLE_ADMIN');

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `FK_EXAME_AGENDA` FOREIGN KEY (`idExame`) REFERENCES `exame` (`idExame`),
  ADD CONSTRAINT `FK_MEDICO_AGENDA` FOREIGN KEY (`idMedico`) REFERENCES `medico` (`idMedico`),
  ADD CONSTRAINT `FK_PAC_AGENDA` FOREIGN KEY (`idPaciente`) REFERENCES `paciente` (`idPaciente`);
