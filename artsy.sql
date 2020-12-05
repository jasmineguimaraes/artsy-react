-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Tempo de geração: 05-Dez-2020 às 01:47
-- Versão do servidor: 8.0.22
-- versão do PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `artsy`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `idcliente` int NOT NULL,
  `nomecompleto` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensagem` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `atendimento`
--

INSERT INTO `atendimento` (`idcliente`, `nomecompleto`, `email`, `mensagem`) VALUES
(4, 'fgdsa', 'fdsaf', 'gfdda'),
(7, '', '', ''),
(8, 'fdfdf', 'fdfdf', 'fdfdfdfdf'),
(9, 'dsadsa', 'dsads', 'dsadsd'),
(16, 'fbdusag', 'hjasmin', 'fdsafd'),
(18, 'dsdsd', 'dsd', 'dsdsds'),
(23, 'gfda vf', 'dfsvfgf', 'dfsagf'),
(24, 'g fds gfs', 'fdsa gf', ' gfds gfds'),
(26, 'dsads ', 'dsdsd', 'gfhsdg'),
(28, 'fdsafds ', 'fdsf ', 'fdsafds'),
(34, 'fgdsa', 'fdsaf', 'gfdda'),
(35, 'fdsafds ', 'fdsf ', 'fdsafdsdsadsad'),
(36, '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `idcliente` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `nomeproduto` varchar(100) NOT NULL,
  `valorunitario` float NOT NULL,
  `quantidade` int NOT NULL,
  `valortotal` float NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `totalMsg` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`idcliente`, `nome`, `telefone`, `endereco`, `nomeproduto`, `valorunitario`, `quantidade`, `valortotal`, `email`, `totalMsg`) VALUES
(1, 'jasmine', '3333333', 'rua', 'produto', 3, 4, 5, 'hjasmin', 3),
(2, 'chamon', '44444', 'ruas', 'prod', 4, 5, 6, 'dsd', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `idproduto` int NOT NULL,
  `local` varchar(50) NOT NULL,
  `quantidade` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`idproduto`, `local`, `quantidade`) VALUES
(5, 'sp', 15),
(5, 'rj', 10),
(1, 'sp', 2),
(2, 'sp', 5),
(3, 'rj', 10),
(4, 'rj', 8),
(7, 'rj', 10),
(4, 'sp', 8),
(6, 'rj', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `preco` float NOT NULL,
  `precofinal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `categoria`, `descricao`, `imagem`, `preco`, `precofinal`) VALUES
(1, 'Giz', 'Giz pastel seco 48 cores', 'crayon.jpg', 60, 48.5),
(2, 'canetas', 'Caneta Nanquim 0.4mm', 'caneta.jpg', 20, 15.5),
(3, 'Telas', 'Tela Grande para pintura', 'canvas.jpg', 40, 32.5),
(4, 'Tintas', 'Tinta Guache Kit 8 tubos', 'guache.jpg', 68, 60),
(5, 'Tintas', 'Aquarela em Pastilha 12 cores', 'watercolor.jpg', 55, 50),
(6, 'Tintas', 'Tinta acrílica brilhante', 'oil.jpg', 75, 58),
(7, 'Pinceis', 'Pincel Grande', 'brush.jpg', 22, 20.5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`idcliente`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`),
  ADD KEY `email` (`email`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `idcliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
