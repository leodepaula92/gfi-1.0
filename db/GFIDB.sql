-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Tempo de geração: 03/09/2025 às 23:22
-- Versão do servidor: 9.4.0
-- Versão do PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `GFIDB`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `CAD.Usuarios`
--

CREATE TABLE `CAD.Usuarios` (
  `ID_USER` int NOT NULL,
  `NOME_USER` varchar(250) DEFAULT NULL,
  `USER` varchar(20) DEFAULT NULL,
  `SENHA_USER` varchar(255) NOT NULL,
  `ID_PERFIL_USER` varchar(255) NOT NULL,
  `STATUS` char(1) NOT NULL DEFAULT 'A' COMMENT 'A = Ativo, I = Inativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `CAD.Usuarios`
--

INSERT INTO `CAD.Usuarios` (`ID_USER`, `NOME_USER`, `USER`, `SENHA_USER`, `ID_PERFIL_USER`, `STATUS`) VALUES
(1, 'root', 'root', '$2y$10$KKUwjl318JfTFV6QrnqbpeT15RAN.vbl3l/LQZiOzsdVZiFukwE5K', '1', 'A'),
(2, 'Leonardo de Paula', 'leo', '$2y$10$KKUwjl318JfTFV6QrnqbpeT15RAN.vbl3l/LQZiOzsdVZiFukwE5K', '2', 'A'),
(7, 'isabella', 'isa', '$2y$10$Qr0SdMqabcVEx31sGaiwY.Kr6UVQXhTGNIzC5X2tXY6VWMPwQg3mO', '3', 'A'),
(8, 'Pamella', 'pamella', '$2y$10$hnQIZfFtg9zntR79zSqEY.VbML8bXc0Dt/VQo/KZWAvNMJFZxF82y', '3', 'A'),
(9, 'Mateus', 'mateus', '$2y$10$aLedyNUZUrZw3hSu/YFKHu0X/Sbl/8QL0XHnifaJ61fu5X8WjFjz2', '4', 'A'),
(10, 'Milena', 'milena', '$2y$10$x7aJe5/zq15JM62PRY.FZOyujWIzfgz4CsU45RuMuV8B7bhG/c8Ee', '3', 'A'),
(11, 'jose', 'jose', '$2y$10$a26olOBDUhko0DyAaR8QFezZQ0x1u4WohYeujEHtf6X4ZQ6PB/yam', '1', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `CAD_Clientes`
--

CREATE TABLE `CAD_Clientes` (
  `ID_CLIENTE` int NOT NULL,
  `NOME_CLIENTE` varchar(250) NOT NULL,
  `USER_CLIENTE` varchar(20) NOT NULL,
  `SENHA_CLIENTE` varchar(255) NOT NULL,
  `ID_PERFIL_CLIENTE` varchar(255) NOT NULL,
  `TIPO_PESSOA_CLIENTE` varchar(1) DEFAULT NULL COMMENT 'Pode ser F para Física ou J para Jurídica',
  `CPF_CLIENTE` varchar(255) DEFAULT NULL,
  `CNPJ_CLIENTE` varchar(255) DEFAULT NULL,
  `CVPIX_CLIENTE` varchar(255) DEFAULT NULL,
  `TP_CV_PIX_CLIENTE` varchar(255) DEFAULT NULL,
  `STATUS_CLIENTE` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'Pode ser A para Ativo ou I para Inativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `CAD_Clientes`
--

INSERT INTO `CAD_Clientes` (`ID_CLIENTE`, `NOME_CLIENTE`, `USER_CLIENTE`, `SENHA_CLIENTE`, `ID_PERFIL_CLIENTE`, `TIPO_PESSOA_CLIENTE`, `CPF_CLIENTE`, `CNPJ_CLIENTE`, `CVPIX_CLIENTE`, `TP_CV_PIX_CLIENTE`, `STATUS_CLIENTE`) VALUES
(1, 'Leonardo de Paula da Silva', 'leo', '$2y$10$BN9i2Ofr.uRRMubfKj130.9rPRBu6q8HrMzmBOhjHeyPtTxyCo0ki', '4', 'F', '051.518.719-43', '', NULL, NULL, 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `CAD_Perfil`
--

CREATE TABLE `CAD_Perfil` (
  `ID_PERFIL` int NOT NULL,
  `PERFIL` varchar(250) DEFAULT NULL,
  `STATUS` char(1) NOT NULL DEFAULT 'A' COMMENT 'A = Ativo, I = Inativo',
  `ACESS_CAD_USUARIOS` varchar(1) DEFAULT NULL,
  `ACESS_CAD_PERFIL` varchar(1) DEFAULT NULL,
  `ACESS_CAD_CLIENTES` varchar(1) DEFAULT NULL,
  `ACESS_CAD_FUNCIONARIO` varchar(1) DEFAULT NULL,
  `ACESS_CAD_PAGAMENTOS` varchar(1) DEFAULT NULL,
  `ACESS_CAD_RECEBIMENTOS` varchar(1) DEFAULT NULL,
  `ACESS_CAD_OPERACOES` varchar(1) DEFAULT NULL,
  `ACESS_CAD_NF` varchar(1) DEFAULT NULL,
  `ACESS_PAGE_HISTÓRICO` varchar(1) DEFAULT NULL,
  `ACESS_CAD_PEDIDO` varchar(1) DEFAULT NULL,
  `ACESS_CAD_ORCAMENTO` varchar(1) DEFAULT NULL,
  `ACESS_PAGE_BI` varchar(1) DEFAULT NULL,
  `ACESS_PAGE_FUNCIONARIO` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `CAD_Perfil`
--

INSERT INTO `CAD_Perfil` (`ID_PERFIL`, `PERFIL`, `STATUS`, `ACESS_CAD_USUARIOS`, `ACESS_CAD_PERFIL`, `ACESS_CAD_CLIENTES`, `ACESS_CAD_FUNCIONARIO`, `ACESS_CAD_PAGAMENTOS`, `ACESS_CAD_RECEBIMENTOS`, `ACESS_CAD_OPERACOES`, `ACESS_CAD_NF`, `ACESS_PAGE_HISTÓRICO`, `ACESS_CAD_PEDIDO`, `ACESS_CAD_ORCAMENTO`, `ACESS_PAGE_BI`, `ACESS_PAGE_FUNCIONARIO`) VALUES
(1, 'Suporte', 'A', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S'),
(2, 'Administrador', 'A', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S'),
(3, 'Financeiro', 'A', 'N', 'N', 'S', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(4, 'Cliente', 'A', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N');

-- --------------------------------------------------------

--
-- Estrutura para tabela `chat_mensagens`
--

CREATE TABLE `chat_mensagens` (
  `id` int NOT NULL,
  `id_remetente` int NOT NULL,
  `id_destinatario` int NOT NULL,
  `id_usuario` int NOT NULL,
  `nome_usuario` varchar(250) NOT NULL,
  `mensagem` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `chat_mensagens`
--

INSERT INTO `chat_mensagens` (`id`, `id_remetente`, `id_destinatario`, `id_usuario`, `nome_usuario`, `mensagem`, `deleted_at`, `read_at`, `timestamp`) VALUES
(16, 7, 2, 7, 'isabella', 'oi', NULL, '2025-08-28 01:56:13', '2025-08-28 01:24:07'),
(17, 2, 7, 2, 'Leonardo de Paula', 'oi Isa', NULL, '2025-08-28 01:56:31', '2025-08-28 01:56:31'),
(18, 2, 7, 2, 'Leonardo de Paula', 'td bem', '2025-08-28 02:01:59', '2025-08-28 01:57:11', '2025-08-28 01:56:57'),
(19, 1, 7, 1, 'root', 'oi', NULL, '2025-08-28 03:28:14', '2025-08-28 03:28:07');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `CAD.Usuarios`
--
ALTER TABLE `CAD.Usuarios`
  ADD PRIMARY KEY (`ID_USER`),
  ADD UNIQUE KEY `USER` (`USER`);

--
-- Índices de tabela `CAD_Clientes`
--
ALTER TABLE `CAD_Clientes`
  ADD PRIMARY KEY (`ID_CLIENTE`),
  ADD UNIQUE KEY `USER_CLIENTE` (`USER_CLIENTE`);

--
-- Índices de tabela `CAD_Perfil`
--
ALTER TABLE `CAD_Perfil`
  ADD PRIMARY KEY (`ID_PERFIL`);

--
-- Índices de tabela `chat_mensagens`
--
ALTER TABLE `chat_mensagens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `CAD.Usuarios`
--
ALTER TABLE `CAD.Usuarios`
  MODIFY `ID_USER` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `CAD_Clientes`
--
ALTER TABLE `CAD_Clientes`
  MODIFY `ID_CLIENTE` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `CAD_Perfil`
--
ALTER TABLE `CAD_Perfil`
  MODIFY `ID_PERFIL` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `chat_mensagens`
--
ALTER TABLE `chat_mensagens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
