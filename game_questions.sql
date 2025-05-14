-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/05/2025 às 23:05
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `quiz`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_questions`
--

CREATE TABLE `game_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer1` varchar(255) NOT NULL,
  `answer2` varchar(255) NOT NULL,
  `answer3` varchar(255) NOT NULL,
  `answer4` varchar(255) NOT NULL,
  `correct_answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `game_questions`
--

INSERT INTO `game_questions` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer`) VALUES
(1, 'O que é um algoritmo?', 'Um software pronto para uso', 'Uma sequência aleatória de códigos', 'Uma sequência de passos bem definidos para resolver um problema', 'Um hardware que executa programas', 3),
(2, 'Qual das opções a seguir representa um exemplo de algoritmo no cotidiano?', 'Jogar futebol', 'Dormir à noite', 'Preparar um café seguindo uma receita', 'Assistir a um filme', 3),
(3, 'Qual característica define que um algoritmo deve terminar em algum momento?', 'Eficiência', 'Clareza', 'Entrada e saída', 'Finitude', 4),
(4, 'Qual das alternativas abaixo não é uma característica essencial de um algoritmo?', 'Clareza', 'Ter interface gráfica', 'Ser finito', 'Ter entradas e saídas', 2),
(5, 'O que é pseudocódigo?', 'Um código-fonte pronto para execução', 'Um programa compilado', 'Uma forma simplificada de representar algoritmos', 'Um erro de sintaxe', 3),
(6, 'O que acontece quando um algoritmo é seguido corretamente?', 'Gera sempre um resultado diferente', 'Pode travar o sistema', 'Produz um resultado esperado', 'Substitui o sistema operacional', 3),
(7, 'Qual das opções representa um algoritmo simples?', 'Pintar um quadro aleatoriamente', 'Ler dois números e somá-los', 'Conversar com amigos', 'Assistir televisão', 2),
(8, 'Por que a eficiência é importante em algoritmos?', 'Para deixá-los mais bonitos', 'Para economizar tempo e recursos computacionais', 'Para gerar gráficos visuais', 'Para criar vídeos', 2),
(9, 'Qual elemento não é obrigatório em um algoritmo, mas é desejável?', 'Finitude', 'Clareza', 'Eficiência', 'Entrada de dados', 3),
(10, 'O que um algoritmo precisa ter obrigatoriamente?', 'Interface gráfica', 'Efeitos sonoros', 'Instruções claras e bem definidas', 'Conexão com a internet', 3),
(11, 'O que define um algoritmo como eficiente?', 'Ele usa muitas variáveis', 'Ele realiza tarefas com o menor uso possível de tempo e recursos', 'Ele tem várias instruções repetidas', 'Ele é grande e complexo', 2),
(12, 'Qual é a principal aplicação dos algoritmos na computação?', 'Produzir imagens em 3D', 'Criar redes sociais', 'Resolver problemas e executar tarefas', 'Melhorar o sinal de internet', 3),
(13, 'Qual das opções representa uma saída de um algoritmo?', 'Teclado', 'Mouse', 'Resultado de um cálculo', 'Código-fonte', 3),
(14, 'O que significa “entrada” em um algoritmo?', 'A primeira linha do código', 'O nome do algoritmo', 'Os dados fornecidos para o algoritmo', 'O nome da linguagem usada', 3),
(15, 'Qual das alternativas apresenta um algoritmo com passos claros e definidos?', 'Fazer o que quiser com ingredientes', 'Aquecer água, colocar pó de café, passar o café, servir', 'Esperar o tempo passar', 'Improvisar uma receita', 2),
(16, 'Um algoritmo precisa obrigatoriamente de:', 'Conexão com a internet', 'Dados de entrada e resultados de saída', 'Interface com o usuário', 'Animações', 2),
(17, 'Qual das opções melhor descreve o papel do pseudocódigo?', 'Criar gráficos', 'Mostrar o resultado final do algoritmo', 'Representar algoritmos de forma simplificada e compreensível', 'Gerar código binário', 3),
(18, 'Qual é o último passo de um algoritmo corretamente executado?', 'Entrada de dados', 'Processamento das instruções', 'Geração de saída', 'Inicialização', 3),
(19, 'Quando dizemos que um algoritmo é finito, isso significa que ele:', 'Pode rodar infinitamente', 'Sempre falha no final', 'Termina após um número limitado de passos', 'Não pode ser executado', 3),
(20, 'A principal importância de um algoritmo bem definido é:', 'Tornar o código maior', 'Diminuir o desempenho do sistema', 'Aumentar o uso de memória', 'Garantir que a tarefa seja feita corretamente e com eficiência', 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `game_questions`
--
ALTER TABLE `game_questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `game_questions`
--
ALTER TABLE `game_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
