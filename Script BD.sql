-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Dez-2020 às 14:59
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ipub`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamento`
--

CREATE TABLE `agendamento` (
  `id_agend` int(11) NOT NULL,
  `data_agend` date DEFAULT NULL,
  `horario_agend` time DEFAULT NULL,
  `pastor_fk` int(11) DEFAULT NULL,
  `membro_fk` int(11) DEFAULT NULL,
  `status_agend` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `agendamento`
--

INSERT INTO `agendamento` (`id_agend`, `data_agend`, `horario_agend`, `pastor_fk`, `membro_fk`, `status_agend`) VALUES
(3, '0000-00-00', '16:00:00', 4, NULL, 'confirmado'),
(4, '0000-00-00', '18:00:00', NULL, 15, 'em confirmação'),
(5, '0000-00-00', '16:00:00', NULL, NULL, 'confirmado'),
(6, '0000-00-00', '23:00:00', NULL, NULL, 'recusado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `n_chamado` int(11) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mensagem` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`n_chamado`, `nome`, `telefone`, `email`, `mensagem`) VALUES
(1, 'teste1', '1', 'teste1@teste1', 'teste1'),
(2, 'Rodolfo', '41983845832', 'rod@gmail.com', 'Olá, boa noite! Gostaria de pedir minha carteirinha de membro. O que irei precisar para isso?'),
(3, 'Amanda', '(41)3019-3481', 'amandand@yahoo.com', 'Oi, seria possível agendar um atendimento domiciliar?'),
(4, 'Robson', '(41)3094-3425', 'robsonn@gmail.com', 'Boa tarde, quais são os horários dos cultos?');

-- --------------------------------------------------------

--
-- Estrutura da tabela `membros`
--

CREATE TABLE `membros` (
  `ID` int(11) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `data_nasc` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `nivel` char(1) DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `membros`
--

INSERT INTO `membros` (`ID`, `nome`, `cpf`, `telefone`, `endereco`, `sexo`, `data_nasc`, `email`, `usuario`, `senha`, `nivel`) VALUES
(1, 'a', '1', '(1', 'a', 'M', '0000-00-00', 'a@a', NULL, NULL, '3'),
(2, 'teste2', '222.222.222-22', '(22)22222-2222', '2 de agosto', 'M', '22-22-2222', 'teste2@teste2.com', NULL, NULL, '3'),
(3, 'teste3', '333.333.333-33', '(33)33333-3333', '3 de agosto', 'F', '31/03/2003', 'teste3@teste3.com', NULL, NULL, '3'),
(4, 'teste4', '444.444.444-44', '(44)44444-4444', '4 de agosto', 'M', '14/04/2004', 'teste4@teste4.com', NULL, NULL, '3'),
(14, 'teste5', '555.555.555-55', '(55)55555-5555', '5 de agosto', 'F', '15/05/2005', 'teste5@teste5.com', NULL, NULL, '3'),
(15, 'Rosana Alves', '12437583432', '41983148573', 'Rua Bento Viana', 'F', '22/12/1975', 'ralves@hotmail.com', NULL, NULL, '3'),
(16, 'Marcio Almeida', '124.423.523-65', '(41)98853-3164', 'Avenida Paraná', 'M', '31/07/1997', 'marcioalmeida@gmail.com', NULL, NULL, '3'),
(20, 'Testando444', '444.444.444-44', '(44)44444-4444', '4 de maio', 'F', '14/04/1994', 'testando444@gmail.com', 'testando444', '444', '3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pastores`
--

CREATE TABLE `pastores` (
  `ID` int(11) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `data_nasc` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `nivel` char(1) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pastores`
--

INSERT INTO `pastores` (`ID`, `nome`, `cpf`, `telefone`, `endereco`, `sexo`, `data_nasc`, `email`, `usuario`, `senha`, `nivel`) VALUES
(1, 'teste1', '111.111.111-11', '(11)11111-1111', '1 de Agosto', 'M', '11/11/2011', 'teste1@teste1.com', NULL, NULL, '2'),
(2, 'João da Silva', '000.000.000-00', '(00)00000-0000', 'Avenida Brasil', 'M', '00/00/0000', 'joaodasilva@gmail.com', NULL, NULL, '2'),
(3, 'Antonio', '12463858332', '4130492857', '24 de Maio', 'M', '15/03/1980', 'antoniop@gmail.com', NULL, NULL, '2'),
(4, 'Maria', '124.392.659-53', '(41)3025-1244', 'Rua das Flores', 'F', '24/08/1968', 'mmaria@hotmail.com', NULL, NULL, '2'),
(5, 'Testando444', '444.444.444-44', '(44)44444-4444', '4 de maio', 'M', '14/04/1994', 'testando444@gmail.com', NULL, NULL, '2'),
(6, 'Testando555', '555.555.555-55', '(55)55555-5555', '5 de maio', 'M', '05/05/1995', 'testando555@gmail.com', 'testando555', '555', '2');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD PRIMARY KEY (`id_agend`),
  ADD KEY `fk_pagend` (`pastor_fk`),
  ADD KEY `fk_magend` (`membro_fk`);

--
-- Índices para tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`n_chamado`);

--
-- Índices para tabela `membros`
--
ALTER TABLE `membros`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `pastores`
--
ALTER TABLE `pastores`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamento`
--
ALTER TABLE `agendamento`
  MODIFY `id_agend` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `n_chamado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `membros`
--
ALTER TABLE `membros`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `pastores`
--
ALTER TABLE `pastores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD CONSTRAINT `fk_magend` FOREIGN KEY (`membro_fk`) REFERENCES `membros` (`ID`),
  ADD CONSTRAINT `fk_pagend` FOREIGN KEY (`pastor_fk`) REFERENCES `pastores` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
