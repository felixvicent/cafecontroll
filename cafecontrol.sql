-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 02/03/2022 às 12:43
-- Versão do servidor: 10.1.32-MariaDB
-- Versão do PHP: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cafecontroll`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `address`
--

CREATE TABLE `address` (
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `street` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `complement` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `address`
--

INSERT INTO `address` (`user_id`, `id`, `street`, `number`, `complement`, `created_at`, `updated_at`) VALUES
(1, 51, 'rua manoel pedro vieira, 810', '810', 'casa 1', '2022-03-02 15:42:53', NULL),
(2, 52, 'paraguai', '2041', 'casa 1', '2022-03-02 15:42:53', NULL),
(3, 53, 'emilio daroz ', '107', 'casa 1', '2022-03-02 15:42:53', NULL),
(4, 54, 'rua lavinia moreira da silva', '145', 'casa 1', '2022-03-02 15:42:53', NULL),
(5, 55, 'padre anchieta', '121', 'casa 1', '2022-03-02 15:42:53', NULL),
(6, 56, 'rua amoroso costa', '254', 'casa 1', '2022-03-02 15:42:53', NULL),
(7, 57, 'alaor martins', '312', 'casa 1', '2022-03-02 15:42:53', NULL),
(8, 58, 'rua das violetas', '330', 'casa 1', '2022-03-02 15:42:53', NULL),
(9, 59, 'francisco carlos ', '105', 'casa 1', '2022-03-02 15:42:53', NULL),
(10, 60, 'torino', '95', 'casa 1', '2022-03-02 15:42:53', NULL),
(11, 61, 'rua erotidas', '64', 'casa 1', '2022-03-02 15:42:53', NULL),
(12, 62, 'r. orquideas', '169', 'casa 1', '2022-03-02 15:42:53', NULL),
(13, 63, 'rua joffre motta', '44', 'casa 1', '2022-03-02 15:42:53', NULL),
(14, 64, 'rua piauí', '17', 'casa 1', '2022-03-02 15:42:53', NULL),
(15, 65, 'fernandes marques', '1229', 'casa 1', '2022-03-02 15:42:53', NULL),
(16, 66, 'av. beta', '07', 'casa 1', '2022-03-02 15:42:53', NULL),
(17, 67, 'abagiba', '674', 'casa 1', '2022-03-02 15:42:53', NULL),
(18, 68, 'gumercindo araujo', '302', 'casa 1', '2022-03-02 15:42:53', NULL),
(19, 69, 'rua 01, quadra 35', '35b', 'casa 1', '2022-03-02 15:42:53', NULL),
(20, 70, 'rua piauí', '23d', 'casa 1', '2022-03-02 15:42:53', NULL),
(21, 71, 'rua leopoldina araãºjo', '380', 'casa 1', '2022-03-02 15:42:53', NULL),
(22, 72, 'rua conceiã§ã£o', '101', 'casa 1', '2022-03-02 15:42:53', NULL),
(23, 73, 'rua benedetto bonfilgi', '755', 'casa 1', '2022-03-02 15:42:53', NULL),
(24, 74, 'rua sã£o francisco', '17', 'casa 1', '2022-03-02 15:42:53', NULL),
(25, 75, 'rua dona zulmira', '479', 'casa 1', '2022-03-02 15:42:53', NULL),
(26, 76, 'rua mampituba', '740', 'casa 1', '2022-03-02 15:42:53', NULL),
(27, 77, 'dezeseis', '151', 'casa 1', '2022-03-02 15:42:53', NULL),
(28, 78, 'rua dos goitacazes', '375', 'casa 1', '2022-03-02 15:42:53', NULL),
(29, 79, 'av lucio jose de meneses', '930', 'casa 1', '2022-03-02 15:42:53', NULL),
(30, 80, 'caetano', '3457', 'casa 1', '2022-03-02 15:42:53', NULL),
(31, 81, 'um nova ', '335', 'casa 1', '2022-03-02 15:42:53', NULL),
(32, 82, 'sres area especial', '19', 'casa 1', '2022-03-02 15:42:53', NULL),
(33, 83, 'islandia', '99', 'casa 1', '2022-03-02 15:42:53', NULL),
(34, 84, 'independência', '700', 'casa 1', '2022-03-02 15:42:53', NULL),
(35, 85, 'sebastiã£o thomaz de oliveira', '25', 'casa 1', '2022-03-02 15:42:53', NULL),
(36, 86, 'nogueira', '185', 'casa 1', '2022-03-02 15:42:53', NULL),
(37, 87, 'tv londrina', '12', 'casa 1', '2022-03-02 15:42:53', NULL),
(38, 88, 'teofilo otoni', '222', 'casa 1', '2022-03-02 15:42:53', NULL),
(39, 89, 'joã£o rasmussen', '244', 'casa 1', '2022-03-02 15:42:53', NULL),
(40, 90, 'travessa elizeu araãºjo', '46', 'casa 1', '2022-03-02 15:42:53', NULL),
(41, 91, 'av. dr. joão pessoa', '185', 'casa 1', '2022-03-02 15:42:53', NULL),
(42, 92, 'travessa brandão', '4', 'casa 1', '2022-03-02 15:42:53', NULL),
(43, 93, 'coqueiros', 'SN', 'casa 1', '2022-03-02 15:42:53', NULL),
(44, 94, 'estrada m boi mirim', '820', 'casa 1', '2022-03-02 15:42:53', NULL),
(45, 95, 'travessa dos comerciarios ', '5', 'casa 1', '2022-03-02 15:42:53', NULL),
(46, 96, 'dos jacarandas', '30', 'casa 1', '2022-03-02 15:42:53', NULL),
(47, 97, 'dona ermelinda pereira', '413', 'casa 1', '2022-03-02 15:42:53', NULL),
(48, 98, 'rua projetada 02', '742', 'casa 1', '2022-03-02 15:42:53', NULL),
(49, 99, 'samambaia', '96', 'casa 1', '2022-03-02 15:42:53', NULL),
(50, 100, 'rua dos gerã¢nios', '110', 'casa 1', '2022-03-02 15:42:53', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `document` varchar(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `document`, `created_at`, `updated_at`) VALUES
(1, 'Robson', 'Santos', 'robson1@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(2, 'Alexandre', 'Santos', 'alexandre27@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(3, 'Willian', 'Santos', 'willian28@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(4, 'Eleno', 'Santos', 'eleno29@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(5, 'Lucas', 'Santos', 'lucas30@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(6, 'Mateus', 'Santos', 'mateus31@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(7, 'João', 'Santos', 'joão32@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(8, 'Felipe', 'Santos', 'felipe33@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(9, 'Anderson', 'Santos', 'anderson34@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(10, 'Elton', 'Santos', 'elton35@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(11, 'Leonardo', 'Santos', 'leonardo36@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(12, 'Regilton', 'Santos', 'regilton37@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(13, 'Sidney', 'Santos', 'sidney38@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(14, 'Lourival', 'Santos', 'lourival39@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(15, 'Henrique', 'Santos', 'henrique40@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(16, 'Daniel', 'Santos', 'daniel41@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(17, 'Pedro', 'Santos', 'pedro42@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(18, 'Andre Roberto', 'Santos', 'andre roberto43@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(19, 'Ozeias', 'Santos', 'ozeias44@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(20, 'Arnobio', 'Santos', 'arnobio45@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(21, 'Roniel', 'Santos', 'roniel46@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(22, 'Caíque', 'Santos', 'caíque47@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(23, 'Lucas', 'Santos', 'lucas48@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(24, 'Francisco', 'Santos', 'francisco49@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(25, 'Cristian', 'Santos', 'cristian50@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(26, 'Eduardo', 'Santos', 'eduardo51@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(27, 'Rodrigo', 'Santos', 'rodrigo52@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(28, 'Raphael', 'Santos', 'raphael53@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(29, 'Jose', 'Santos', 'jose54@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(30, 'Rodrigo', 'Santos', 'rodrigo55@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(31, 'Diego', 'Santos', 'diego56@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(32, 'Alexandre', 'Santos', 'alexandre57@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(33, 'Edimar', 'Santos', 'edimar58@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(34, 'Jackell', 'Santos', 'jackell59@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(35, 'Luis', 'Santos', 'luis60@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(36, 'Lucas', 'Santos', 'lucas61@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(37, 'Wander', 'Santos', 'wander62@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(38, 'Tairo', 'Santos', 'tairo63@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(39, 'Rubens', 'Santos', 'rubens64@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(40, 'Hugo', 'Santos', 'hugo65@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(41, 'Gustavo', 'Santos', 'gustavo66@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(42, 'Paulo', 'Santos', 'paulo67@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(43, 'Rodrigo', 'Santos', 'rodrigo68@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(44, 'Denio', 'Santos', 'denio69@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(45, 'Idalmir', 'Santos', 'idalmir70@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(46, 'Ataide', 'Santos', 'ataide71@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(47, 'Luiz', 'Santos', 'luiz72@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(48, 'Luciano', 'Santos', 'luciano73@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(49, 'Adir', 'Santos', 'adir74@email.com.br', NULL, '2022-03-02 15:41:10', NULL),
(50, 'Tainan', 'Santos', 'tainan75@email.com.br', NULL, '2022-03-02 15:41:10', NULL);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addr_user` (`user_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
