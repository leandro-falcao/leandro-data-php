-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Fev-2022 às 18:56
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `data`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos`
--

CREATE TABLE `enderecos` (
  `id` int(11) NOT NULL,
  `logradouro` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `enderecos`
--

INSERT INTO `enderecos` (`id`, `logradouro`, `numero`, `usuario_id`) VALUES
(15, 'sddsd', '34d', 20),
(16, 'ERERE33454', '454', 21),
(17, 'eqew', '23a', 22),
(18, 'dfdsf', '23a', 23),
(19, 'asd', '34e3', 24),
(20, 'dfd', '20a', 25),
(21, '', '', 26),
(22, 'ssd', 'sdw2', 27),
(23, 'wew', '34a', 28),
(24, 'le', '56a', 29),
(25, 'sdasd', '34a', 30),
(26, 'errrr', '23a', 31),
(27, 'oasidoiosd', '34e', 32),
(28, 'WEE', '23A', 33),
(29, 'WEWQE', '344', 34),
(30, 'WEEW', '23', 35),
(31, 'SADDD', '23A', 36),
(32, 'wewewe', '33a', 37),
(33, 'wewewe', '33a', 38),
(34, 'sssss', '23a', 39),
(35, 'ghg', '23f', 40),
(36, '', '', 41),
(37, 'WEWEWE', '23S', 42),
(38, 'WEWEWE', '23S', 43),
(39, 'ddsdsd', '56c', 44),
(40, 'ddsdsd', '56c', 45),
(41, 'ddsdsd', '56c', 46),
(42, 'ddsdsd', '56c', 47),
(43, 'ddsdsd', '56c', 48),
(44, 'ddsdsd', '56c', 49),
(45, 'ddsdsd', '56c', 50),
(46, 'ddsdsd', '56c', 51),
(47, 'ddsdsd', '56c', 52),
(48, 'ddsdsd', '56c', 53),
(49, 'ddsdsd', '56c', 54),
(50, 'ddsdsd', '56c', 55),
(51, 'ddsdsd', '56c', 56),
(52, 'ddsdsd', '56c', 57),
(53, 'ddsdsd', '56c', 58),
(54, 'ddsdsd', '56c', 59),
(55, 'ddsdsd', '56c', 60);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mae` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rg` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ddd` int(2) NOT NULL,
  `data` date NOT NULL,
  `telefone` int(9) NOT NULL,
  `sexo` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profissao` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renda` decimal(12,0) NOT NULL,
  `preferencia` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `mae`, `cpf`, `rg`, `ddd`, `data`, `telefone`, `sexo`, `profissao`, `renda`, `preferencia`) VALUES
(21, 'leand', 'asd@ds.com', 'maria maria', '33464578151', '2688218', 61, '2022-01-26', 945632453, 'M', 'programador', '2301', 'redmi note 10'),
(22, 'leand', 'leandrofalcaoads@gmail.com', '', '', '', 0, '0000-00-00', 0, '', '', '0', ''),
(23, 'sdsd', 'fgfg@hhh', '', '', '', 0, '0000-00-00', 0, '', '', '0', ''),
(24, 'asds', 'asds@eff', '', '', '', 0, '0000-00-00', 0, '', '', '0', ''),
(25, 'wqe', 'leandrofalcaoads@gmail.com', '', '1346578151', '', 0, '0000-00-00', 0, '', '', '0', ''),
(26, 'leand3323', '', '', '', '', 0, '0000-00-00', 0, '', '', '0', ''),
(27, 'le12121', 'sd@fd', '', '03464578151', '2688218', 0, '0000-00-00', 0, '', '', '0', ''),
(28, 'le123444', 'leandrofalcaoads@gmail.com', '', '034.645.781', '233243', 23, '0000-00-00', 0, '', '', '0', ''),
(29, 'leasdad', 'leandrofalcaoads@gmail.com', '', '034445151', '23333', 23, '0000-00-00', 0, '', '', '0', ''),
(30, 'le2323', 'leandrofalcaoads@gmail.com', '', '03474578151', '2688218', 32, '0000-00-00', 2147483647, '', '', '0', ''),
(31, 'leaaaaaandrrrrroooo', 'leandrofalcaoads@gmail.com', '', '03464578151', '2321334', 23, '0000-00-00', 23, '', '', '333', ''),
(32, 'rttr', 'leandrofalcaoads@gmail.com', '', '0346078151', '2688218', 43, '0000-00-00', 3434343, '', '', '23434', ''),
(33, 'LE2333', 'LE3@GF', 'PATR MA', '04578151', '2334422', 24, '0000-00-00', 2147483647, '', '', '2323', ''),
(34, 'IUIU', 'UI@T', 'PATR MA', '0378151', '2554554', 32, '0000-00-00', 2147483647, 'M', '', '23233', ''),
(35, 'LEANDRO-PROFISSAO', 'DASD@E', 'TRTR', '036578151', '2688218', 21, '0000-00-00', 766734343, 'M', 'Desenvolvedor de software', '2323', ''),
(36, 'LEANDRO', 'SDS@DF', 'GRDFD', '03465578151', '2665656', 21, '0000-00-00', 2147483647, 'M', '', '12123', ''),
(37, 'çççççççççççççç', 'sd@eewe', 'wewe', '99999999999', '9999999', 99, '0000-00-00', 2147483647, 'M', '', '98898', ''),
(38, 'rrrrrrr', 'sd@eewe', 'wewe', '99999999999', '9999999', 99, '0000-00-00', 2147483647, 'M', '', '98898', ''),
(39, 'LLLLLLL', 'asa@LKLK', 'redd', '34444444444', '433333', 33, '0000-00-00', 2147483647, 'M', 'Desenvolvedor de software', '333333', ''),
(40, 'GGGGGGGG', 'leandrofalcaoads@gmail.com', 'hyh', '99999999999', '5555555', 23, '0000-00-00', 32323232, 'M', 'Desenvolvedor de software', '66767', ''),
(41, 'LLLLL', 'fgg@frr', '', '', '', 0, '0000-00-00', 0, 'M', 'Desenvolvedor de software', '0', ''),
(42, 'L2L2L2L2L2L2L2', 'SDS@DF', 'wewe', '12123434324', '1231231', 34, '0000-00-00', 233123213, 'F', 'juiz', '21233', 'huawei p30'),
(43, 'L3L3L3L3L3', 'SDS@DF', 'wewe', '12123434324', '1231231', 34, '1687-09-18', 233123213, 'F', 'juiz', '21233', 'redminote 10'),
(44, 'LLLLL444', 'sd@ee', 'eedd', '23232232323', '2323232', 54, '1996-06-10', 2147483647, 'M', 'Desenvolvedor de software', '12213213', 'iphone7'),
(45, 'AAAAAAAALL444', 'sd@ee', 'eedd', '23232232323', '2323232', 54, '1902-06-10', 2147483647, 'M', 'Desenvolvedor de software', '12213213', 'iphone7'),
(46, 'WWEEWWWWpppKAAAwwQQFVVBBBBAAAAALL4zx44', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1737-09-10', 2147483647, 'M', 'juiz', '12213213', 'iphone7'),
(47, 'IIIIIIWWWWpppKAAAwwQQFVVBBBBAAAAALL4zx44', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1813-09-10', 2147483647, 'M', 'Nutricionista', '12213213', 'positivo hit p10'),
(48, 'IIIIIIWWWWpppKAAAwwQQFVVBBBBAAAAALL4zx44', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1813-09-10', 2147483647, 'M', 'Nutricionista', '12213213', 'positivo hit p10'),
(49, 'IIIIIIWWWWpppKAAAwwQQFVVBBBBAAAAALL4zx44', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1813-09-10', 2147483647, 'M', 'Nutricionista', '12213213', 'positivo hit p10'),
(50, 'FFFFwwQQFVVBBBBAAAAALL4zx44', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1813-09-10', 2147483647, 'M', 'Nutricionista', '12213213', 'positivo hit p10'),
(51, 'FFFFwwQQFVVBBBBAAAAALL4zx44', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1813-09-10', 2147483647, 'M', 'Nutricionista', '12213213', 'positivo hit p10'),
(52, 'HHFFwwQQFVVBBBBAAAAALL4zx44', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1813-09-10', 2147483647, 'M', 'Nutricionista', '12213213', 'positivo hit p10'),
(53, 'HHFFwwQQFVVBBBBAAAAALL4zx44', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1813-09-10', 2147483647, 'M', 'Nutricionista', '12213213', 'positivo hit p10'),
(54, 'L6L6L6', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1813-09-10', 2147483647, 'M', 'Nutricionista', '12213213', 'positivo hit p10'),
(55, 'L6L6L6', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1813-09-10', 2147483647, 'M', 'Nutricionista', '12213213', 'positivo hit p10'),
(56, 'L7L7L7', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1813-09-10', 2147483647, 'M', 'Nutricionista', '12213213', 'positivo hit p10'),
(57, '99L', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1813-09-10', 2147483647, 'M', 'Nutricionista', '12213213', 'positivo hit p10'),
(58, '99L', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1813-09-10', 2147483647, 'M', 'Nutricionista', '12213213', 'positivo hit p10'),
(59, '99L', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1813-09-10', 2147483647, 'M', 'Nutricionista', '12213213', 'positivo hit p10'),
(60, 'AASs', 'sd@ee', 'eedd', '23232232323', '2323232', 344, '1813-09-10', 2147483647, 'M', 'Nutricionista', '12213213', 'positivo hit p10');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `enderecos`
--
ALTER TABLE `enderecos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
