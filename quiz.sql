-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/06/2025 às 01:02
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
  `correct_answer` int(11) NOT NULL,
  `topico` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `game_questions`
--

INSERT INTO `game_questions` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer`, `topico`) VALUES
(1, 'O que é um algoritmo?', 'Um software pronto para uso', 'Uma sequência aleatória de códigos', 'Uma sequência de passos bem definidos para resolver um problema', 'Um hardware que executa programas', 3, ''),
(2, 'Qual das opções a seguir representa um exemplo de algoritmo no cotidiano?', 'Jogar futebol', 'Dormir à noite', 'Preparar um café seguindo uma receita', 'Assistir a um filme', 3, ''),
(3, 'Qual característica define que um algoritmo deve terminar em algum momento?', 'Eficiência', 'Clareza', 'Entrada e saída', 'Finitude', 4, ''),
(4, 'Qual das alternativas abaixo não é uma característica essencial de um algoritmo?', 'Clareza', 'Ter interface gráfica', 'Ser finito', 'Ter entradas e saídas', 2, ''),
(5, 'O que é pseudocódigo?', 'Um código-fonte pronto para execução', 'Um programa compilado', 'Uma forma simplificada de representar algoritmos', 'Um erro de sintaxe', 3, ''),
(6, 'O que acontece quando um algoritmo é seguido corretamente?', 'Gera sempre um resultado diferente', 'Pode travar o sistema', 'Produz um resultado esperado', 'Substitui o sistema operacional', 3, ''),
(7, 'Qual das opções representa um algoritmo simples?', 'Pintar um quadro aleatoriamente', 'Ler dois números e somá-los', 'Conversar com amigos', 'Assistir televisão', 2, ''),
(8, 'Por que a eficiência é importante em algoritmos?', 'Para deixá-los mais bonitos', 'Para economizar tempo e recursos computacionais', 'Para gerar gráficos visuais', 'Para criar vídeos', 2, ''),
(9, 'Qual elemento não é obrigatório em um algoritmo, mas é desejável?', 'Finitude', 'Clareza', 'Eficiência', 'Entrada de dados', 3, ''),
(10, 'O que um algoritmo precisa ter obrigatoriamente?', 'Interface gráfica', 'Efeitos sonoros', 'Instruções claras e bem definidas', 'Conexão com a internet', 3, ''),
(11, 'O que define um algoritmo como eficiente?', 'Ele usa muitas variáveis', 'Ele realiza tarefas com o menor uso possível de tempo e recursos', 'Ele tem várias instruções repetidas', 'Ele é grande e complexo', 2, ''),
(12, 'Qual é a principal aplicação dos algoritmos na computação?', 'Produzir imagens em 3D', 'Criar redes sociais', 'Resolver problemas e executar tarefas', 'Melhorar o sinal de internet', 3, ''),
(13, 'Qual das opções representa uma saída de um algoritmo?', 'Teclado', 'Mouse', 'Resultado de um cálculo', 'Código-fonte', 3, ''),
(14, 'O que significa “entrada” em um algoritmo?', 'A primeira linha do código', 'O nome do algoritmo', 'Os dados fornecidos para o algoritmo', 'O nome da linguagem usada', 3, ''),
(15, 'Qual das alternativas apresenta um algoritmo com passos claros e definidos?', 'Fazer o que quiser com ingredientes', 'Aquecer água, colocar pó de café, passar o café, servir', 'Esperar o tempo passar', 'Improvisar uma receita', 2, ''),
(16, 'Um algoritmo precisa obrigatoriamente de:', 'Conexão com a internet', 'Dados de entrada e resultados de saída', 'Interface com o usuário', 'Animações', 2, ''),
(17, 'Qual das opções melhor descreve o papel do pseudocódigo?', 'Criar gráficos', 'Mostrar o resultado final do algoritmo', 'Representar algoritmos de forma simplificada e compreensível', 'Gerar código binário', 3, ''),
(18, 'Qual é o último passo de um algoritmo corretamente executado?', 'Entrada de dados', 'Processamento das instruções', 'Geração de saída', 'Inicialização', 3, ''),
(19, 'Quando dizemos que um algoritmo é finito, isso significa que ele:', 'Pode rodar infinitamente', 'Sempre falha no final', 'Termina após um número limitado de passos', 'Não pode ser executado', 3, ''),
(20, 'A principal importância de um algoritmo bem definido é:', 'Tornar o código maior', 'Diminuir o desempenho do sistema', 'Aumentar o uso de memória', 'Garantir que a tarefa seja feita corretamente e com eficiência', 4, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  `answer3` text NOT NULL,
  `answer4` text NOT NULL,
  `correct_answer` int(11) NOT NULL,
  `dificuldade` varchar(50) NOT NULL,
  `topico` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer`, `dificuldade`, `topico`) VALUES
(1, 'O que é um algoritmo?', 'Um tipo de programa de computador.', 'Uma sequência finita de passos para resolver um problema.', 'Uma linguagem de programação.', 'Um hardware de computador.', 2, 'Fácil', 'algoritimos'),
(2, 'Qual a principal função de um algoritmo na computação?', 'Apenas para criar jogos.', 'Ser a base de qualquer software ou aplicação.', 'Exclusivamente para cálculos matemáticos.', 'Controlar o funcionamento de um mouse.', 2, 'Fácil', 'algoritimos'),
(3, 'Qual exemplo do cotidiano é citado no texto como um algoritmo?', 'Assistir a um filme.', 'Fazer compras no supermercado.', 'Uma receita de comida.', 'Dirigir um carro.', 3, 'Fácil', 'algoritimos'),
(4, 'Uma das características de um algoritmo é ser \"finito\". O que isso significa?', 'Ele pode ser executado infinitamente.', 'Ele deve ter um número limitado de passos.', 'Ele é muito complexo.', 'Ele não tem começo nem fim.', 2, 'Fácil', 'algoritimos'),
(5, 'Um algoritmo deve ter \"definição clara\". O que isso implica?', 'Que ele deve ser escrito em inglês.', 'Que cada passo deve ser compreendido por um computador.', 'Que cada passo deve ser descrito sem ambiguidades.', 'Que cada passo deve ser impresso em papel.', 3, 'Fácil', 'algoritimos'),
(6, 'Quais são os dois elementos que todo algoritmo recebe e gera, respectivamente?', 'Programas e erros.', 'Hardware e software.', 'Entradas (dados) e saídas (resultados).', 'Início e Fim.', 3, 'Fácil', 'algoritimos'),
(7, 'Por que a \"eficiência\" é uma característica desejável em um algoritmo?', 'Para torná-lo mais bonito.', 'Para que ele resolva problemas mais rapidamente, com menos recursos.', 'Para que ele seja mais difícil de entender.', 'Para que ele use mais memória RAM.', 2, 'Fácil', 'algoritimos'),
(8, 'No exemplo do cálculo da média de três números, qual é o primeiro passo do algoritmo?', 'Escrever Média.', 'Fim.', 'Ler número1.', 'Calcular a média.', 3, 'Fácil', 'algoritimos'),
(9, 'No algoritmo para fazer café, qual é o primeiro passo após o \"Início\"?', 'Colocar o pó de café.', 'Aquecer água até ferver.', 'Despejar a água quente.', 'Servir o café.', 2, 'Fácil', 'algoritimos'),
(10, 'O que o pseudocódigo busca evitar?', 'A lógica de programação.', 'A sintaxe exata de uma linguagem de programação.', 'O entendimento do algoritmo.', 'A resolução de problemas.', 2, 'Fácil', 'algoritimos'),
(11, 'O que o pseudocódigo mistura para facilitar o entendimento do algoritmo?', 'Matemática e física.', 'Lógica de programação com o idioma natural.', 'Códigos binários e números.', 'Imagens e sons.', 2, 'Fácil', 'algoritimos'),
(12, 'Qual a principal utilidade do pseudocódigo?', 'Criar programas prontos.', 'Servir como um esboço para ser convertido em linguagem de programação real.', 'Apenas para documentação.', 'Para testar a velocidade de um computador.', 2, 'Fácil', 'algoritimos'),
(13, 'No pseudocódigo de soma de dois números, qual o passo final?', 'Ler número1.', 'Somar os números.', 'Escrever Soma.', 'Início.', 3, 'Fácil', 'algoritimos'),
(14, 'Qual a importância da construção de algoritmos bem definidos?', 'Apenas para aumentar o tamanho do código.', 'Para desenvolver sistemas eficientes e confiáveis.', 'Para dificultar a manutenção do software.', 'Para consumir mais recursos computacionais.', 2, 'Fácil', 'algoritimos'),
(15, 'O que um bom algoritmo pode otimizar?', 'Apenas a aparência do programa.', 'O desempenho de um programa e reduzir o consumo de recursos.', 'O número de bugs em um programa.', 'O tempo de compilação.', 2, 'Fácil', 'algoritimos'),
(16, 'A lógica por trás dos algoritmos é fundamental para:', 'Decorar códigos.', 'Resolver problemas de maneira mais eficiente.', 'Escrever textos longos.', 'Desenhar imagens em computadores.', 2, 'Fácil', 'algoritimos'),
(17, 'Qual a característica de um algoritmo que garante que ele será executado dentro de um tempo limitado?', 'Entradas e saídas.', 'Definição clara.', 'Finito.', 'Eficiência.', 3, 'Fácil', 'algoritimos'),
(18, 'O que acontece se uma receita (algoritmo) for seguida corretamente?', 'O resultado será sempre diferente.', 'O resultado será sempre o mesmo.', 'A receita será alterada.', 'A tarefa não será concluída.', 2, 'Fácil', 'algoritimos'),
(19, 'Qual das opções não é uma característica fundamental para que algo seja considerado um algoritmo?', 'Finito.', 'Entradas e saídas.', 'Eficiência.', 'Definição clara.', 3, 'Fácil', 'algoritimos'),
(20, 'No exemplo do cálculo da média, qual é a operação matemática realizada?', 'Subtração e multiplicação.', 'Adição e divisão.', 'Apenas adição.', 'Apenas divisão.', 2, 'Fácil', 'algoritimos'),
(21, 'O que os algoritmos permitem descrever?', 'Apenas problemas complexos.', 'Soluções de maneira clara e precisa.', 'Novas linguagens de programação.', 'O funcionamento do hardware.', 2, 'Fácil', 'algoritimos'),
(22, 'Para qual profissional a habilidade de entender e praticar a construção de algoritmos é essencial?', 'Um artista plástico.', 'Um médico.', 'Um programador ou profissional da área de tecnologia.', 'Um cozinheiro.', 3, 'Fácil', 'algoritimos'),
(23, 'Se um algoritmo não tem uma \"definição clara\", o que pode acontecer?', 'Ele será mais eficiente.', 'Ele será mais fácil de entender.', 'Pode haver ambiguidades e dificultar sua execução.', 'Ele não precisará de entradas.', 3, 'Fácil', 'algoritimos'),
(24, 'Qual o papel das \"entradas\" em um algoritmo?', 'Gerar resultados.', 'Fornecer os dados necessários para a execução.', 'Definir o final do algoritmo.', 'Mostrar os passos do algoritmo.', 2, 'Fácil', 'algoritimos'),
(25, 'O que o \"Fim\" representa em um algoritmo ou pseudocódigo?', 'O início do processo.', 'O ponto de parada, indicando o término da execução.', 'Um erro no algoritmo.', 'Uma nova etapa.', 2, 'Fácil', 'algoritimos'),
(26, 'Qual o objetivo de um algoritmo?', 'Criar problemas.', 'Resolver um problema ou executar uma tarefa específica.', 'Apenas exibir informações.', 'Formatar um texto.', 2, 'Fácil', 'algoritimos'),
(27, 'Por que os algoritmos são considerados a \"espinha dorsal\" da programação?', 'Porque são difíceis de aprender.', 'Porque são a base para a criação de qualquer software.', 'Porque são usados apenas em programas antigos.', 'Porque consomem muitos recursos.', 2, 'Fácil', 'algoritimos'),
(28, 'Onde os algoritmos podem ser aplicados?', 'Somente na programação.', 'Somente no dia a dia.', 'Em uma infinidade de contextos, na programação e no dia a dia.', 'Apenas em cálculos científicos.', 3, 'Fácil', 'algoritimos'),
(29, 'O que um algoritmo bem definido pode evitar durante a execução?', 'Aumento de desempenho.', 'Erros.', 'Redução de recursos.', 'Clareza.', 2, 'Fácil', 'algoritimos'),
(30, 'No algoritmo de cálculo da média, o que a seta \"←\" significa?', 'Divisão.', 'Atribuição (recebe o valor de).', 'Comparação.', 'Multiplicação.', 2, 'Fácil', 'algoritimos'),
(31, 'Qual a ordem correta dos passos básicos para um algoritmo de cálculo da média?', 'Calcular, Ler, Escrever.', 'Escrever, Calcular, Ler.', 'Ler, Calcular, Escrever.', 'Início, Fim, Meio.', 3, 'Fácil', 'algoritimos'),
(32, 'O que o texto compara uma \"receita de instruções\" a?', 'Um manual de carro.', 'Um algoritmo.', 'Um dicionário.', 'Um livro de história.', 2, 'Fácil', 'algoritimos'),
(33, 'Qual a principal vantagem de usar pseudocódigo?', 'Ele pode ser executado diretamente pelo computador.', 'Ele ajuda a entender a lógica sem se prender à sintaxe da linguagem.', 'Ele é mais rápido de escrever do que um algoritmo real.', 'Ele substitui a necessidade de uma linguagem de programação.', 2, 'Fácil', 'algoritimos'),
(34, 'Se um algoritmo não tiver um número finito de passos, o que pode acontecer?', 'Ele terminará rapidamente.', 'Ele pode entrar em um loop infinito e nunca terminar.', 'Ele será mais fácil de depurar.', 'Ele não precisará de entradas.', 2, 'Fácil', 'algoritimos'),
(35, 'A frase \"resolver problemas de maneira mais eficiente\" está relacionada a qual característica do algoritmo?', 'Definição clara.', 'Finito.', 'Entradas e saídas.', 'Eficiência.', 4, 'Fácil', 'algoritimos'),
(36, 'Qual o significado de \"ambiguidades\" em relação à definição clara de um algoritmo?', 'Clareza.', 'Duplos sentidos ou falta de precisão.', 'Facilidade de execução.', 'Rapidez.', 2, 'Fácil', 'algoritimos'),
(37, 'O que a construção de algoritmos bem definidos é crucial para?', 'Criar problemas.', 'O desenvolvimento de sistemas ineficientes.', 'O desenvolvimento de sistemas eficientes e confiáveis.', 'Apenas para diversão.', 3, 'Fácil', 'algoritimos'),
(38, 'Qual a característica que garante que um algoritmo produzirá um resultado?', 'Ser finito.', 'Ter entradas e saídas.', 'Ser ambíguo.', 'Ser complexo.', 2, 'Fácil', 'algoritimos'),
(39, 'No exemplo do algoritmo para preparar um café, qual a \"entrada\" implícita?', 'O café pronto.', 'A água, o pó de café e a cafeteira.', 'A espera.', 'O servir.', 2, 'Fácil', 'algoritimos'),
(40, 'O que significa \"otimizar o desempenho de um programa\" no contexto de algoritmos?', 'Torná-lo mais lento.', 'Fazer com que ele execute mais tarefas ao mesmo tempo.', 'Fazer com que ele funcione melhor e mais rapidamente.', 'Aumentar o consumo de energia.', 3, 'Fácil', 'algoritimos'),
(41, 'Qual é a primeira etapa na construção de um algoritmo?', 'Codificação do programa.', 'Definição do problema a ser resolvido.', 'Teste do software.', 'Criação da interface gráfica.', 2, 'Fácil', 'Algoritmos'),
(42, 'Um algoritmo é uma \"sequência finita\". O que isso impede?', 'Que ele seja executado apenas uma vez.', 'Que ele continue para sempre em um loop infinito.', 'Que ele aceite muitas entradas.', 'Que ele tenha poucos passos.', 2, 'Fácil', 'Algoritmos'),
(43, 'O que significa um algoritmo ser \"bem definido\"?', 'Ele é complicado de entender.', 'Cada passo é claro e não ambíguo.', 'Ele pode ter vários resultados possíveis.', 'Ele é escrito em uma linguagem específica.', 2, 'Fácil', 'Algoritmos'),
(44, 'Qual a relação entre um algoritmo e um programa de computador?', 'Um algoritmo é um programa de computador.', 'Um programa de computador é uma implementação de um algoritmo.', 'Eles não têm relação.', 'Um algoritmo é uma parte do hardware.', 2, 'Fácil', 'Algoritmos'),
(45, 'Se um algoritmo não recebe entradas, o que ele não pode fazer?', 'Gerar saídas.', 'Executar passos.', 'Ser finito.', 'Ter um tópico.', 1, 'Fácil', 'Algoritmos'),
(46, 'O que as \"saídas\" de um algoritmo representam?', 'Os dados iniciais.', 'Os resultados da execução.', 'Os erros encontrados.', 'As instruções a serem seguidas.', 2, 'Fácil', 'Algoritmos'),
(47, 'Por que o pseudocódigo é considerado uma \"receita de bolo\" para algoritmos?', 'Porque ele é comestível.', 'Porque ele define os passos e ingredientes para o sucesso.', 'Porque ele é complexo como um bolo.', 'Porque ele sempre tem o mesmo sabor.', 2, 'Fácil', 'Algoritmos'),
(48, 'Qual o objetivo de descrever um algoritmo em pseudocódigo antes de codificá-lo?', 'Para torná-lo mais rápido.', 'Para entender a lógica sem se preocupar com a sintaxe.', 'Para que apenas especialistas o entendam.', 'Para que ele seja mais seguro.', 2, 'Fácil', 'Algoritmos'),
(49, 'O que o texto sugere que se deve fazer para se tornar um bom programador?', 'Decorar linguagens de programação.', 'Entender e praticar a construção de algoritmos.', 'Apenas usar programas prontos.', 'Comprar um computador potente.', 2, 'Fácil', 'Algoritmos'),
(50, 'Qual das seguintes opções é um exemplo de algoritmo no dia a dia?', 'Dormir.', 'Ler um livro.', 'Seguir um manual de instruções para montar um móvel.', 'Cantar uma música.', 3, 'Fácil', 'Algoritmos'),
(51, 'A ausência de \"ambiguidades\" em um algoritmo garante o quê?', 'Que ele será muito lento.', 'Que ele será executado de forma consistente e previsível.', 'Que ele será muito caro.', 'Que ele precisará de mais recursos.', 2, 'Fácil', 'Algoritmos'),
(52, 'Um algoritmo deve ser capaz de ser executado em um \"tempo limitado\". Qual característica garante isso?', 'Entradas e saídas.', 'Finito.', 'Eficiência.', 'Definição clara.', 2, 'Fácil', 'Algoritmos'),
(53, 'O que a \"lógica\" por trás dos algoritmos ajuda a resolver?', 'Problemas de hardware.', 'Problemas de forma eficiente.', 'Problemas de design gráfico.', 'Problemas de rede.', 2, 'Fácil', 'Algoritmos'),
(54, 'Qual o papel da \"receita de comida\" como analogia para algoritmo?', 'Ela mostra que algoritmos são apenas para cozinhar.', 'Ela ilustra como algoritmos são sequências de passos para um resultado.', 'Ela sugere que algoritmos são sempre deliciosos.', 'Ela indica que algoritmos são difíceis de seguir.', 2, 'Fácil', 'Algoritmos'),
(55, 'Um algoritmo é a \"espinha dorsal\" da programação porque:', 'Ele é a parte mais longa de um programa.', 'Ele forma a base essencial de qualquer software.', 'Ele é difícil de mudar.', 'Ele é feito de ossos.', 2, 'Fácil', 'Algoritmos'),
(56, 'No exemplo de cálculo da média, o que \"Escrever Média\" representa?', 'Uma entrada de dados.', 'Uma saída de dados.', 'Uma operação matemática.', 'O início do algoritmo.', 2, 'Fácil', 'Algoritmos'),
(57, 'O que significa dizer que algoritmos são \"aplicáveis em uma infinidade de contextos\"?', 'Eles só funcionam em contextos muito específicos.', 'Eles podem ser usados em diversas áreas, não apenas na programação.', 'Eles são usados apenas em contextos militares.', 'Eles são exclusivos para jogos.', 2, 'Fácil', 'Algoritmos'),
(58, 'Qual é o benefício de um algoritmo eficiente?', 'Ele consome mais energia.', 'Ele resolve problemas mais rapidamente com menos recursos.', 'Ele é mais difícil de ser compreendido.', 'Ele é usado apenas em supercomputadores.', 2, 'Fácil', 'Algoritmos'),
(59, 'O que o pseudocódigo fornece que uma linguagem de programação pura não faz no estágio inicial?', 'Velocidade de execução.', 'Sintaxe exata.', 'Flexibilidade para rascunhar a lógica.', 'Apenas erros.', 3, 'Fácil', 'Algoritmos'),
(60, 'Por que o entendimento de algoritmos é fundamental para um desenvolvedor?', 'Para decorar códigos rapidamente.', 'Para resolver problemas de forma eficaz e otimizar programas.', 'Para escrever documentos longos.', 'Para usar a internet.', 2, 'Fácil', 'Algoritmos'),
(61, 'Qual a principal diferença entre um algoritmo e um software?', 'Um algoritmo é físico, um software é lógico.', 'Um algoritmo é a lógica, o software é a implementação executável.', 'Não há diferença.', 'Um software é uma sequência de passos, um algoritmo não.', 2, 'Fácil', 'Algoritmos'),
(62, 'O que um algoritmo sempre deve ter para ser considerado completo?', 'Um designer gráfico.', 'Um começo e um fim.', 'Muitas linhas de código.', 'Um nome complicado.', 2, 'Fácil', 'Algoritmos'),
(63, 'Se um algoritmo está \"otimizando o desempenho\", o que ele está fazendo?', 'Tornando-o mais lento.', 'Melhorando sua velocidade e uso de recursos.', 'Aumentando seus erros.', 'Diminuindo sua clareza.', 2, 'Fácil', 'Algoritmos'),
(64, 'Qual a importância de um algoritmo reduzir o \"consumo de recursos\"?', 'Para gastar mais dinheiro.', 'Para que o programa seja mais leve e rápido.', 'Para que ele seja mais complexo.', 'Para que ele demore mais para executar.', 2, 'Fácil', 'Algoritmos'),
(65, 'O que é um \"passo\" em um algoritmo?', 'Uma parte do hardware.', 'Uma instrução individual a ser executada.', 'Um tipo de dado.', 'Um erro de programação.', 2, 'Fácil', 'Algoritmos'),
(66, 'O que acontece se um algoritmo não for \"finito\"?', 'Ele sempre terminará rapidamente.', 'Ele pode nunca terminar sua execução.', 'Ele será mais fácil de depurar.', 'Ele não precisará de entradas.', 2, 'Fácil', 'Algoritmos'),
(67, 'Qual o objetivo principal do pseudocódigo na fase de planejamento de um programa?', 'Escrever o código final.', 'Testar a compatibilidade do hardware.', 'Projetar a lógica antes da codificação.', 'Criar a interface do usuário.', 3, 'Fácil', 'Algoritmos'),
(68, 'O que a \"receita de café\" demonstra sobre os algoritmos?', 'Que são apenas para bebidas.', 'Que são sequências de passos bem definidos com um resultado específico.', 'Que são sempre quentes.', 'Que são difíceis de seguir.', 2, 'Fácil', 'Algoritmos'),
(69, 'Um algoritmo é uma \"receita de instruções\" que leva a quê?', 'À confusão.', 'A um resultado desejado.', 'A mais problemas.', 'A um loop infinito.', 2, 'Fácil', 'Algoritmos'),
(70, 'O que é fundamental para a computação, formando a base de qualquer software?', 'Apenas a linguagem de programação.', 'O hardware mais recente.', 'Os algoritmos.', 'A internet.', 3, 'Fácil', 'Algoritmos'),
(71, 'No exemplo de cálculo da média, o que a linha \"Média ← (número1 + número2 + número3) / 3\" representa?', 'Uma entrada.', 'Uma saída.', 'Um processamento (cálculo).', 'O fim do algoritmo.', 3, 'Fácil', 'Algoritmos'),
(72, 'Por que é importante que os passos de um algoritmo sejam \"claros\"?', 'Para que ninguém mais os entenda.', 'Para evitar ambiguidades e garantir a execução correta.', 'Para torná-lo mais longo.', 'Para que ele seja mais rápido.', 2, 'Fácil', 'Algoritmos'),
(73, 'Qual é a característica que permite que um algoritmo receba informações externas?', 'Finito.', 'Saídas.', 'Entradas.', 'Eficiência.', 3, 'Fácil', 'Algoritmos'),
(74, 'O que acontece se um algoritmo é mal definido?', 'Ele sempre funcionará perfeitamente.', 'Ele pode gerar resultados inesperados ou erros.', 'Ele será mais rápido.', 'Ele não precisará de testes.', 2, 'Fácil', 'Algoritmos'),
(75, 'A \"resolução de problemas computacionais\" é diretamente ligada a qual conceito?', 'Hardware.', 'Sistemas operacionais.', 'Algoritmos.', 'Periféricos.', 3, 'Fácil', 'Algoritmos'),
(76, 'O que o \"Início\" e o \"Fim\" demarcam em um algoritmo?', 'As partes mais importantes.', 'O ciclo de vida do algoritmo.', 'O começo e o término da execução.', 'Apenas comentários.', 3, 'Fácil', 'Algoritmos'),
(77, 'O que um algoritmo bem definido pode fazer para um programa?', 'Aumentar seu tamanho.', 'Otimizar o desempenho e evitar erros.', 'Diminuir sua legibilidade.', 'Torná-lo mais complexo.', 2, 'Fácil', 'Algoritmos'),
(78, 'Qual a principal diferença entre um algoritmo e uma linguagem de programação?', 'Um algoritmo é abstrato, a linguagem é concreta para implementação.', 'Um algoritmo é escrito em código, a linguagem não.', 'Não há diferença.', 'Uma linguagem de programação é um tipo de algoritmo.', 1, 'Fácil', 'Algoritmos'),
(79, 'Por que é importante que um algoritmo tenha um número \"finito\" de passos?', 'Para que ele possa ser executado eternamente.', 'Para garantir que ele termine em um tempo razoável.', 'Para que ele seja mais complexo.', 'Para que ele nunca produza um resultado.', 2, 'Fácil', 'Algoritmos'),
(80, 'O que um algoritmo gera após processar as entradas?', 'Mais entradas.', 'Saídas (resultados).', 'Erros obrigatórios.', 'O código-fonte.', 2, 'Fácil', 'Algoritmos'),
(81, 'Qual a característica que torna um algoritmo previsível em seus resultados?', 'Ser muito longo.', 'Ser ambíguo.', 'Ter definição clara.', 'Ser ineficiente.', 3, 'Fácil', 'Algoritmos'),
(82, 'No cotidiano, a ação de \"trocar uma lâmpada\" pode ser vista como um algoritmo. Qual seria a primeira etapa?', 'Ligar o interruptor.', 'Pegar uma escada.', 'Desrosquear a lâmpada queimada.', 'Comprar uma lâmpada nova.', 2, 'Fácil', 'Algoritmos'),
(83, 'O que o pseudocódigo facilita para o programador?', 'Apenas a depuração de erros.', 'A comunicação da lógica do algoritmo.', 'A escrita de programas muito longos.', 'A ignorância de como o algoritmo funciona.', 2, 'Fácil', 'Algoritmos'),
(84, 'Qual a importância de um algoritmo reduzir o \"consumo de recursos\"?', 'Ele torna o software mais lento.', 'Ele otimiza o uso de memória e processamento.', 'Ele aumenta a necessidade de hardware.', 'Ele dificulta a execução em diferentes máquinas.', 2, 'Fácil', 'Algoritmos'),
(85, 'Um algoritmo é uma \"receita de instruções\". Qual é a meta dessa receita?', 'Criar mais problemas.', 'Alcançar um resultado desejado.', 'Deixar a tarefa pela metade.', 'Ignorar as etapas.', 2, 'Fácil', 'Algoritmos'),
(86, 'O que significa que um algoritmo tem \"entradas\"?', 'Ele só pode receber dados de um tipo específico.', 'Ele precisa de dados para iniciar o processamento.', 'Ele não interage com o usuário.', 'Ele produz dados para outros algoritmos.', 2, 'Fácil', 'Algoritmos'),
(87, 'A lógica de um algoritmo é fundamental para:', 'Apenas a criação de jogos.', 'Qualquer tipo de resolução de problemas.', 'Somente cálculos matemáticos.', 'A organização de arquivos no computador.', 2, 'Fácil', 'Algoritmos'),
(88, 'Qual o papel da \"eficiência\" para um algoritmo em sistemas reais?', 'Aumentar o tempo de resposta.', 'Reduzir o desempenho.', 'Garantir a rapidez e o uso otimizado de recursos.', 'Tornar o sistema mais complexo.', 3, 'Fácil', 'Algoritmos'),
(89, 'O que as \"saídas\" de um algoritmo indicam?', 'Os dados que ele recebeu.', 'O que ele produziu como resultado.', 'As instruções que ele executou.', 'Os erros de sintaxe.', 2, 'Fácil', 'Algoritmos'),
(90, 'Por que o conceito de algoritmo é aplicável \"no dia a dia\"?', 'Porque só podemos seguir algoritmos em computadores.', 'Porque muitas tarefas cotidianas seguem sequências lógicas de passos.', 'Porque as pessoas agem de forma aleatória.', 'Porque os algoritmos são invisíveis.', 2, 'Fácil', 'Algoritmos'),
(91, 'O que um algoritmo bem planejado ajuda a evitar durante a execução de um programa?', 'Aumento de velocidade.', 'Bugs e falhas.', 'Clareza no código.', 'Eficiência.', 2, 'Fácil', 'Algoritmos'),
(92, 'Qual a principal diferença entre um algoritmo e um fluxograma?', 'Um algoritmo é uma descrição textual, um fluxograma é uma representação gráfica.', 'Um algoritmo é gráfico, um fluxograma é textual.', 'Não há diferença.', 'Um fluxograma é uma parte do algoritmo.', 1, 'Fácil', 'Algoritmos'),
(93, 'Se um algoritmo é \"finito\", ele deve ser capaz de ser executado dentro de:', 'Um tempo ilimitado.', 'Um tempo limitado.', 'Um espaço ilimitado.', 'Um espaço de memória enorme.', 2, 'Fácil', 'Algoritmos'),
(94, 'O que o termo \"passos bem definidos\" em um algoritmo garante?', 'Que os passos são opcionais.', 'Que não há ambiguidade na execução de cada instrução.', 'Que o algoritmo é muito longo.', 'Que ele precisa de muita energia.', 2, 'Fácil', 'Algoritmos'),
(95, 'Qual é a habilidade essencial para qualquer programador mencionada no texto?', 'Aprender muitos idiomas.', 'Entender e praticar a construção de algoritmos.', 'Ser bom em matemática avançada.', 'Apenas copiar códigos prontos.', 2, 'Fácil', 'Algoritmos'),
(96, 'O que o pseudocódigo serve como?', 'Um programa executável.', 'Um esboço para a codificação em linguagem real.', 'Um tipo de hardware.', 'Um sistema operacional.', 2, 'Fácil', 'Algoritmos'),
(97, 'No algoritmo para preparar um café, \"Esperar o café ser filtrado\" é um exemplo de:', 'Entrada.', 'Saída.', 'Processamento ou ação.', 'Início do algoritmo.', 3, 'Fácil', 'Algoritmos'),
(98, 'Qual a importância de algoritmos para o \"desenvolvimento de sistemas eficientes\"?', 'Eles tornam os sistemas mais lentos.', 'Eles garantem que os sistemas funcionem bem e usem poucos recursos.', 'Eles aumentam a complexidade dos sistemas.', 'Eles tornam os sistemas instáveis.', 2, 'Fácil', 'Algoritmos'),
(99, 'O que é uma \"tarefa específica\" em relação a um algoritmo?', 'Algo que o algoritmo não pode fazer.', 'Um problema amplo e genérico.', 'Uma ação ou conjunto de ações com um objetivo claro.', 'Um erro de execução.', 3, 'Fácil', 'Algoritmos'),
(100, 'Se um algoritmo não tiver \"entradas\", ele será:', 'Mais eficiente.', 'Impossível de ser executado.', 'Menos útil, pois não pode processar dados externos.', 'Sempre correto.', 3, 'Fácil', 'Algoritmos'),
(101, 'A frase \"reduzir o consumo de recursos\" significa que um algoritmo:', 'Usa mais energia.', 'Consome menos memória e processamento.', 'É mais caro de desenvolver.', 'É menos seguro.', 2, 'Fácil', 'Algoritmos'),
(102, 'Qual a principal finalidade da \"sequência finita de passos\" em um algoritmo?', 'Para que ele nunca termine.', 'Para garantir que ele chegue a um fim e produza um resultado.', 'Para que ele seja difícil de entender.', 'Para que ele seja executado infinitamente.', 2, 'Fácil', 'Algoritmos'),
(103, 'A \"lógica por trás dos algoritmos\" é crucial para:', 'Apenas decorar linguagens de programação.', 'Desenvolver habilidades de resolução de problemas.', 'Evitar o uso de computadores.', 'Apenas criar interfaces de usuário.', 2, 'Fácil', 'Algoritmos'),
(104, 'O que a \"definição clara\" de um algoritmo evita?', 'Resultados consistentes.', 'Ambiguidade e incerteza na execução.', 'Rapidez na execução.', 'Eficiência no uso de recursos.', 2, 'Fácil', 'Algoritmos'),
(105, 'Um algoritmo é a \"base de qualquer software ou aplicação\". O que isso implica?', 'Que software e aplicação são a mesma coisa que algoritmo.', 'Que todo software é construído a partir de algoritmos.', 'Que algoritmos são apenas para sistemas operacionais.', 'Que algoritmos são um acessório do software.', 2, 'Fácil', 'Algoritmos'),
(106, 'No exemplo do mundo real de fazer café, o que \"Servir o café\" representa?', 'Uma entrada.', 'Uma saída (o produto final).', 'Uma etapa de processamento.', 'O início do algoritmo.', 2, 'Fácil', 'Algoritmos'),
(107, 'Por que o pseudocódigo é útil para iniciantes em programação?', 'Porque ele é uma linguagem de programação complexa.', 'Porque ele permite focar na lógica antes da sintaxe complexa.', 'Porque ele exige um compilador especial.', 'Porque ele é usado apenas em projetos avançados.', 2, 'Fácil', 'Algoritmos'),
(108, 'O que a \"eficiência\" em um algoritmo proporciona?', 'Maior consumo de energia.', 'Soluções mais lentas.', 'Melhor aproveitamento dos recursos computacionais.', 'Maior complexidade na escrita.', 3, 'Fácil', 'Algoritmos'),
(109, 'Um algoritmo é uma \"receita de instruções\" porque:', 'Ele é apenas para culinária.', 'Ele fornece um conjunto de passos detalhados para uma tarefa.', 'Ele é secreto e não pode ser compartilhado.', 'Ele é difícil de decifrar.', 2, 'Fácil', 'Algoritmos'),
(110, 'Qual das seguintes é uma característica obrigatória de um algoritmo?', 'Ser executado em um celular.', 'Ter um número finito de passos.', 'Ser escrito em Python.', 'Ser usado apenas por programadores.', 2, 'Fácil', 'Algoritmos'),
(111, 'O que as \"saídas\" de um algoritmo permitem?', 'Que ele receba mais dados.', 'Que ele apresente os resultados de seu trabalho.', 'Que ele continue indefinidamente.', 'Que ele ignore o problema.', 2, 'Fácil', 'Algoritmos'),
(112, 'O que é a \"resolução de um problema\" para um algoritmo?', 'Um desafio que ele não pode superar.', 'O objetivo final de sua execução.', 'Uma entrada de dados.', 'Uma característica desnecessária.', 2, 'Fácil', 'Algoritmos'),
(113, 'Por que é importante que os algoritmos sejam \"confiáveis\"?', 'Para que eles falhem frequentemente.', 'Para que produzam resultados corretos e consistentes.', 'Para que sejam caros.', 'Para que sejam imprevisíveis.', 2, 'Fácil', 'Algoritmos'),
(114, 'O que o texto afirma que a construção de algoritmos é para o desenvolvimento de sistemas?', 'Desnecessária.', 'Fundamental e crucial.', 'Um complemento opcional.', 'Apenas para sistemas pequenos.', 2, 'Fácil', 'Algoritmos'),
(115, 'Qual é o termo para a representação simplificada de algoritmos, sem sintaxe exata de linguagem?', 'Código de máquina.', 'Linguagem de alto nível.', 'Pseudocódigo.', 'Assembly.', 3, 'Fácil', 'Algoritmos'),
(116, 'Se um algoritmo não gera \"saídas\", o que ele não pode fazer?', 'Receber entradas.', 'Processar informações.', 'Apresentar um resultado ao usuário.', 'Ter um início.', 3, 'Fácil', 'Algoritmos'),
(117, 'A lógica por trás dos algoritmos ajuda a resolver problemas de maneira \"eficiente\", o que significa:', 'De forma lenta e demorada.', 'De forma rápida e com o mínimo de recursos.', 'De forma complexa e confusa.', 'De forma imprevisível.', 2, 'Fácil', 'Algoritmos'),
(118, 'O que é a \"sequência\" em um algoritmo?', 'A ordem dos passos.', 'A quantidade de dados.', 'A complexidade do problema.', 'A linguagem de programação.', 1, 'Fácil', 'Algoritmos'),
(119, 'O que significa que um algoritmo deve ter \"passos bem definidos\"?', 'Que eles podem ser interpretados de várias maneiras.', 'Que cada instrução é clara e sem ambiguidade.', 'Que os passos são opcionais.', 'Que eles são apenas para especialistas.', 2, 'Fácil', 'Algoritmos'),
(120, 'Para que serve a \"conclusão\" do texto sobre algoritmos?', 'Para introduzir um novo tema.', 'Para resumir a importância e aplicabilidade dos algoritmos.', 'Para complicar o assunto.', 'Para dar exemplos práticos.', 2, 'Fácil', 'Algoritmos'),
(121, 'Qual notação é utilizada para descrever a complexidade assintótica de tempo e espaço de um algoritmo?', 'Notação Lambda (λ-notation).', 'Notação Big O (O-notation).', 'Notação Omega (Ω-notation).', 'Notação Theta (Θ-notation).', 2, 'Difícil', 'Algoritmos'),
(122, 'Um algoritmo de ordenação tem complexidade de tempo O(n log n). Qual das seguintes opções representa um algoritmo com essa característica?', 'Selection Sort.', 'Insertion Sort.', 'Merge Sort.', 'Bubble Sort.', 3, 'Difícil', 'Algoritmos'),
(123, 'Qual é a principal desvantagem do algoritmo Bubble Sort em comparação com algoritmos de ordenação mais avançados para grandes conjuntos de dados?', 'Requer memória auxiliar excessiva.', 'Possui complexidade de tempo quadrática (O(n²)) no pior caso.', 'É instável.', 'Não é um algoritmo de comparação.', 2, 'Difícil', 'Algoritmos'),
(124, 'Em um grafo, qual algoritmo é mais adequado para encontrar o caminho mais curto entre um único vértice de origem e todos os outros vértices, onde as arestas possuem pesos não-negativos?', 'Floyd-Warshall.', 'Bellman-Ford.', 'Kruskal.', 'Dijkstra.', 4, 'Difícil', 'Algoritmos'),
(125, 'O que caracteriza um algoritmo de \"Programação Dinâmica\"?', 'Resolve o problema dividindo-o em subproblemas independentes e combinando os resultados.', 'Toma a melhor escolha local na esperança de encontrar uma solução global ótima.', 'Armazena os resultados de subproblemas para evitar recálculos e resolver problemas sobrepostos.', 'Envolve tentativa e erro sistemáticos para encontrar uma solução.', 3, 'Difícil', 'Algoritmos'),
(126, 'Qual a complexidade de tempo no pior caso para buscar um elemento em uma Árvore Binária de Busca (BST) não balanceada com n nós?', 'O(log n).', 'O(1).', 'O(n).', 'O(n log n).', 3, 'Difícil', 'Algoritmos'),
(127, 'Um problema é NP-completo. O que isso implica sobre a existência de um algoritmo que o resolva eficientemente (em tempo polinomial)?', 'Tal algoritmo certamente existe e é fácil de encontrar.', 'Tal algoritmo não existe.', 'Não se sabe se tal algoritmo existe, mas a maioria acredita que não.', 'Um algoritmo de tempo exponencial é sempre a melhor opção.', 3, 'Difícil', 'Algoritmos'),
(128, 'Em qual cenário o algoritmo de busca em largura (BFS) é mais adequado que a busca em profundidade (DFS) para encontrar o caminho mais curto em um grafo não ponderado?', 'Quando o grafo é muito denso.', 'Quando o caminho mais curto é garantido como o mais profundo.', 'Quando se busca o caminho com o menor número de arestas.', 'Quando a conectividade é mais importante que a distância.', 3, 'Difícil', 'Algoritmos'),
(129, 'Qual o principal desafio ao projetar algoritmos paralelos?', 'Aumentar a complexidade do código sequencial.', 'Gerenciar a comunicação e sincronização entre os processos.', 'Reduzir a quantidade de hardware necessário.', 'Eliminar a necessidade de compilação.', 2, 'Difícil', 'Algoritmos'),
(130, 'O algoritmo Quick Sort tem uma complexidade de tempo no pior caso de O(n²). Quando isso ocorre?', 'Quando os elementos estão aleatoriamente ordenados.', 'Quando a escolha do pivô sempre resulta em partições desbalanceadas.', 'Quando o número de elementos é pequeno.', 'Quando o algoritmo é implementado recursivamente.', 2, 'Difícil', 'Algoritmos'),
(131, 'Qual estrutura de dados é fundamental para a implementação eficiente de algoritmos de busca de caminho mínimo como Dijkstra?', 'Pilha (Stack).', 'Fila (Queue).', 'Pilha de Prioridade (Priority Queue).', 'Lista Encadeada (Linked List).', 3, 'Difícil', 'Algoritmos'),
(132, 'O que significa um algoritmo ser \"estável\" no contexto de ordenação?', 'Ele sempre termina em tempo polinomial.', 'Ele preserva a ordem relativa de elementos com chaves iguais.', 'Ele não usa memória auxiliar.', 'Ele é executado rapidamente.', 2, 'Difícil', 'Algoritmos'),
(133, 'Qual dos seguintes problemas pode ser resolvido eficientemente usando um algoritmo guloso (greedy algorithm)?', 'O problema do Caixeiro Viajante.', 'O problema da Mochila (0/1 Knapsack Problem).', 'O problema da Árvore Geradora Mínima (Minimum Spanning Tree).', 'O problema da Subsequência Comum Mais Longa.', 3, 'Difícil', 'Algoritmos'),
(134, 'Em que situação a programação dinâmica é mais eficiente do que a recursão pura?', 'Quando o problema não pode ser dividido em subproblemas.', 'Quando os subproblemas são independentes e não se sobrepõem.', 'Quando há subproblemas sobrepostos e uma ótima subestrutura.', 'Quando a recursão é muito superficial.', 3, 'Difícil', 'Algoritmos'),
(135, 'Para que serve a \"Notação Big Omega (Ω-notation)\" na análise de algoritmos?', 'Para descrever o limite superior apertado do tempo de execução.', 'Para descrever o limite inferior do tempo de execução (melhor caso).', 'Para descrever a complexidade média do tempo de execução.', 'Para descrever a complexidade de espaço.', 2, 'Difícil', 'Algoritmos'),
(136, 'Qual é o principal critério para a escolha de um algoritmo de hash?', 'Seu consumo de memória.', 'A facilidade de implementação da função de hash.', 'A capacidade de minimizar colisões e distribuir uniformemente as chaves.', 'A velocidade de criptografia.', 3, 'Difícil', 'Algoritmos'),
(137, 'O que é \"poda de alfa-beta\" em algoritmos de jogos (Game Theory)?', 'Um método de balanceamento de árvores.', 'Uma técnica de otimização para reduzir o número de nós avaliados em árvores de jogo (Minimax).', 'Um algoritmo para gerar números aleatórios.', 'Um tipo de estrutura de dados para grafos.', 2, 'Difícil', 'Algoritmos'),
(138, 'Qual a principal diferença entre BFS e DFS em termos de estrutura de dados auxiliar utilizada?', 'BFS usa fila, DFS usa pilha.', 'BFS usa pilha, DFS usa fila.', 'Ambos usam filas.', 'Ambos usam pilhas.', 1, 'Difícil', 'Algoritmos'),
(139, 'No contexto de criptografia, qual o papel dos algoritmos de chave pública (assimétricos)?', 'Gerar hashes de mensagens.', 'Garantir que a mesma chave seja usada para criptografar e descriptografar.', 'Permitir que diferentes chaves (pública e privada) sejam usadas para criptografia e descriptografia.', 'Ordenar grandes volumes de dados.', 3, 'Difícil', 'Algoritmos'),
(140, 'Qual o problema intrínseco aos algoritmos de força bruta para problemas complexos?', 'A incapacidade de encontrar uma solução.', 'O alto consumo de memória.', 'O tempo de execução exponencial, inviável para grandes entradas.', 'A necessidade de hardware especializado.', 3, 'Difícil', 'Algoritmos'),
(141, 'Quando um algoritmo guloso falha em encontrar a solução ótima global para um problema de otimização?', 'Quando a escolha local ótima sempre leva à solução global ótima.', 'Quando o problema exibe uma ótima subestrutura.', 'Quando a natureza do problema não permite que a escolha local ótima seja parte de uma solução global ótima.', 'Quando é um problema de árvore geradora mínima.', 3, 'Difícil', 'Algoritmos'),
(142, 'Qual é a complexidade de tempo no pior caso para inserção ou remoção em uma Árvore AVL (autobalanceada) com n nós?', 'O(n).', 'O(log n).', 'O(n log n).', 'O(1).', 2, 'Difícil', 'Algoritmos'),
(143, 'O que um algoritmo de \"Divisão e Conquista\" tipicamente envolve?', 'Solucionar um problema resolvendo subproblemas de tamanho crescente.', 'Dividir o problema em subproblemas, resolver recursivamente e combinar os resultados.', 'Tomar decisões localmente ótimas.', 'Converter o problema em um problema de fluxo máximo.', 2, 'Difícil', 'Algoritmos'),
(144, 'Qual o principal fator que distingue um problema P de um problema NP-completo?', 'Se ele pode ser resolvido em tempo constante.', 'Se ele pode ser resolvido em tempo polinomial por um algoritmo determinístico.', 'Se ele não pode ser verificado em tempo polinomial.', 'Se ele pode ser resolvido por força bruta.', 2, 'Difícil', 'Algoritmos'),
(145, 'Em algoritmos de grafos, o que o \"grau de um vértice\" representa?', 'Sua cor.', 'O número de arestas incidentes a ele.', 'Sua distância do vértice de origem.', 'Seu peso.', 2, 'Difícil', 'Algoritmos'),
(146, 'Qual o conceito de \"memoização\" em programação dinâmica?', 'Armazenar todas as entradas possíveis.', 'Armazenar os resultados de chamadas de função custosas e retornar o resultado armazenado quando as mesmas entradas ocorrem novamente.', 'Otimizar o uso de memória RAM.', 'Usar um algoritmo guloso.', 2, 'Difícil', 'Algoritmos'),
(147, 'Por que o algoritmo de ordenação Counting Sort é considerado um algoritmo não-comparativo?', 'Porque ele usa comparações implícitas.', 'Porque ele ordena os elementos contando as ocorrências de cada valor.', 'Porque ele é baseado em trocas de elementos.', 'Porque ele é mais lento que os comparativos.', 2, 'Difícil', 'Algoritmos'),
(148, 'Qual algoritmo é mais adequado para encontrar todos os pares de caminhos mais curtos em um grafo ponderado?', 'Dijkstra (repetidamente).', 'Bellman-Ford.', 'Floyd-Warshall.', 'Prim.', 3, 'Difícil', 'Algoritmos'),
(149, 'O que a \"função de hash\" busca realizar?', 'Criptografar dados simetricamente.', 'Mapear dados de tamanho arbitrário para um valor de tamanho fixo.', 'Ordenar dados em ordem crescente.', 'Descomprimir arquivos.', 2, 'Difícil', 'Algoritmos'),
(150, 'Qual o principal problema da recursão profunda sem otimização de memória em alguns algoritmos?', 'Maior velocidade de execução.', 'Overflow de pilha (Stack Overflow).', 'Menor consumo de energia.', 'Simplicidade na implementação.', 2, 'Difícil', 'Algoritmos'),
(151, 'O que é um \"algoritmo determinístico\"?', 'Um algoritmo que usa números aleatórios.', 'Um algoritmo que sempre produz o mesmo resultado para a mesma entrada e segue um caminho único.', 'Um algoritmo que pode ter múltiplos resultados para a mesma entrada.', 'Um algoritmo que nunca termina.', 2, 'Difícil', 'Algoritmos'),
(152, 'Qual o propósito da \"heurística\" em algoritmos de busca complexos?', 'Garantir a solução ótima em todos os casos.', 'Acelerar a busca, sacrificando a otimalidade em troca de rapidez.', 'Apenas para validar entradas.', 'Para tornar o algoritmo mais difícil de entender.', 2, 'Difícil', 'Algoritmos'),
(153, 'No problema da mochila fracionária (Fractional Knapsack), qual paradigma de projeto de algoritmo garante a solução ótima?', 'Programação Dinâmica.', 'Divisão e Conquista.', 'Algoritmo Guloso.', 'Backtracking.', 3, 'Difícil', 'Algoritmos'),
(154, 'O que a \"Notação Big Theta (Θ-notation)\" descreve na análise de algoritmos?', 'O limite superior (pior caso).', 'O limite inferior (melhor caso).', 'O limite superior e inferior apertados (comportamento médio e pior/melhor).', 'Apenas a complexidade de espaço.', 3, 'Difícimos', 'Algoritmos'),
(155, 'Qual é a desvantagem do algoritmo Bellman-Ford em comparação com Dijkstra para grafos com arestas não-negativas?', 'Não pode lidar com arestas negativas.', 'Sua complexidade de tempo é geralmente maior.', 'Ele não encontra o caminho mais curto.', 'Ele não detecta ciclos negativos.', 2, 'Difícil', 'Algoritmos'),
(156, 'Um algoritmo de busca binária é eficiente para qual tipo de estrutura de dados?', 'Lista encadeada não ordenada.', 'Array ordenado.', 'Pilha.', 'Fila.', 2, 'Difícil', 'Algoritmos'),
(157, 'O que o \"Princípio da Ótima Subestrutura\" implica para um problema que pode ser resolvido com Programação Dinâmica?', 'A solução ótima para o problema contém soluções ótimas para seus subproblemas.', 'A solução ótima é encontrada tomando a melhor escolha local.', 'O problema não pode ser dividido em partes menores.', 'Os subproblemas são independentes.', 1, 'Difícil', 'Algoritmos'),
(158, 'Qual algoritmo é comumente usado para encontrar a Árvore Geradora Mínima (MST) de um grafo?', 'Prim ou Kruskal.', 'Dijkstra ou Bellman-Ford.', 'BFS ou DFS.', 'Floyd-Warshall.', 1, 'Difícil', 'Algoritmos'),
(159, 'O que são \"colisões\" em tabelas hash e qual a técnica para resolvê-las?', 'Quando a tabela está vazia; rehashing.', 'Quando duas chaves diferentes são mapeadas para o mesmo índice; endereçamento aberto ou encadeamento.', 'Quando a tabela está cheia; compressão.', 'Quando a chave não é um número; normalização.', 2, 'Difícil', 'Algoritmos'),
(160, 'Qual a principal diferença entre um problema P e um problema NP?', 'Problemas P são mais difíceis que problemas NP.', 'Problemas NP não podem ser verificados em tempo polinomial.', 'Problemas P podem ser resolvidos em tempo polinomial, problemas NP podem ser verificados em tempo polinomial.', 'Problemas P são apenas teóricos.', 3, 'Difícil', 'Algoritmos'),
(161, 'Qual é o conceito de \"backtracking\" como paradigma de projeto de algoritmo?', 'Dividir o problema em subproblemas independentes.', 'Construir soluções incrementalmente e, se uma parcial levar a um impasse, desfazer (backtrack) e tentar outra opção.', 'Tomar a melhor escolha local em cada etapa.', 'Armazenar resultados de subproblemas para reutilização.', 2, 'Difícil', 'Algoritmos'),
(162, 'Um algoritmo é \"instável\" no contexto de ordenação. O que isso significa?', 'Ele pode falhar durante a execução.', 'Ele não mantém a ordem relativa de elementos com chaves iguais.', 'Ele é muito lento.', 'Ele usa muita memória.', 2, 'Difícil', 'Algoritmos'),
(163, 'Qual a complexidade de tempo no pior caso para o algoritmo de ordenação Heap Sort?', 'O(n).', 'O(n log n).', 'O(n²).', 'O(log n).', 2, 'Difícil', 'Algoritmos'),
(164, 'Qual a importância de \"balancear\" árvores de busca, como nas árvores AVL ou Red-Black?', 'Para torná-las mais fáceis de visualizar.', 'Para garantir que as operações de busca, inserção e remoção permaneçam em O(log n).', 'Para que elas ocupem menos espaço em disco.', 'Para que elas aceitem apenas números pares.', 2, 'Difícil', 'Algoritmos'),
(165, 'O que o \"Princípio da Optimalidade de Bellman\" estabelece na Programação Dinâmica?', 'Que a solução ótima de um problema depende de escolhas futuras.', 'Que qualquer subcaminho de um caminho ótimo é, por si só, um caminho ótimo.', 'Que a escolha local ótima leva à solução global ótima.', 'Que a memória é ilimitada.', 2, 'Difícil', 'Algoritmos'),
(166, 'Em um grafo, o que representa um \"ciclo negativo\" e qual algoritmo pode detectá-lo?', 'Um caminho que começa e termina no mesmo vértice; Dijkstra.', 'Um ciclo onde a soma dos pesos das arestas é negativa; Bellman-Ford.', 'Um ciclo sem arestas; BFS.', 'Um ciclo de comprimento ímpar; DFS.', 2, 'Difícil', 'Algoritmos'),
(167, 'Qual o trade-off principal entre um algoritmo de força bruta e um algoritmo heurístico?', 'Força bruta é mais rápida; heurístico é mais lento.', 'Força bruta garante a solução ótima, mas é lento; heurístico é mais rápido, mas pode não ser ótimo.', 'Força bruta usa menos memória; heurístico usa mais.', 'Força bruta é mais fácil de implementar; heurístico é mais difícil.', 2, 'Difícil', 'Algoritmos'),
(168, 'O que é um \"algoritmo probabilístico\"?', 'Um algoritmo que sempre retorna a mesma saída para a mesma entrada.', 'Um algoritmo que faz escolhas aleatórias durante sua execução para encontrar uma solução, com alta probabilidade.', 'Um algoritmo que não termina.', 'Um algoritmo que só funciona com números primos.', 2, 'Difícil', 'Algoritmos'),
(169, 'Qual o significado de \"overfitting\" em algoritmos de Machine Learning?', 'Quando o modelo não aprende nada.', 'Quando o modelo aprende muito bem os dados de treinamento, mas falha em generalizar para dados novos.', 'Quando o modelo é muito simples.', 'Quando o modelo é muito rápido.', 2, 'Difícil', 'Algoritmos'),
(170, 'Em qual cenário um \"caminhamento em profundidade (DFS)\" é preferível a um \"caminhamento em largura (BFS)\"?', 'Para encontrar o caminho mais curto em grafos não ponderados.', 'Para detectar ciclos em grafos.', 'Para encontrar o caminho com o menor número de arestas.', 'Para encontrar um nó em um nível mais próximo da raiz.', 2, 'Difícil', 'Algoritmos'),
(171, 'Qual a principal técnica para resolver o problema do caixeiro viajante (TSP) na prática, devido à sua complexidade NP-completa?', 'Algoritmos gulosos.', 'Algoritmos exatos com poda (branch and bound) ou heurísticas e meta-heurísticas.', 'Programação dinâmica sem memoização.', 'Divisão e conquista simples.', 2, 'Difícil', 'Algoritmos'),
(172, 'O que é um \"algoritmo de criptografia de chave simétrica\"?', 'Usa chaves diferentes para criptografar e descriptografar.', 'Usa a mesma chave para criptografar e descriptografar.', 'Não usa chaves.', 'É usado apenas para hash.', 2, 'Difícil', 'Algoritmos'),
(173, 'Para que serve a \"análise amortizada\" da complexidade de algoritmos?', 'Para analisar o pior caso de uma única operação.', 'Para analisar o custo médio de uma sequência de operações, onde operações raras e caras são compensadas por muitas operações baratas.', 'Para analisar o melhor caso de um algoritmo.', 'Para ignorar o consumo de memória.', 2, 'Difícil', 'Algoritmos'),
(174, 'O que caracteriza um algoritmo de \"stream processing\"?', 'Processa dados em lotes grandes.', 'Processa dados contínuos à medida que chegam, sem armazenar tudo.', 'Processa dados apenas offline.', 'Processa dados criptografados.', 2, 'Difícil', 'Algoritmos'),
(175, 'Qual o principal desafio ao aplicar algoritmos de Machine Learning em dados não estruturados?', 'A falta de capacidade de processamento.', 'A dificuldade de extrair features relevantes e convertê-las em formato utilizável.', 'A simplicidade dos algoritmos.', 'A pouca quantidade de dados disponíveis.', 2, 'Difícil', 'Algoritmos'),
(176, 'O que é \"balanceamento de carga\" em algoritmos de sistemas distribuídos?', 'Distribuir a carga de trabalho uniformemente entre os recursos para otimizar o desempenho.', 'Apenas aumentar a capacidade de um único servidor.', 'Reduzir a segurança dos dados.', 'Desativar servidores ociosos.', 1, 'Difícil', 'Algoritmos'),
(177, 'Qual o impacto de um algoritmo com alta complexidade polinomial (e.g., O(n^5)) para grandes entradas?', 'Ele será sempre mais rápido que um O(n log n).', 'Ele se tornará impraticável para grandes entradas devido ao tempo de execução excessivo.', 'Ele usará menos memória.', 'Ele é mais fácil de implementar.', 2, 'Difícil', 'Algoritmos'),
(178, 'O que é \"tolerância a falhas\" em algoritmos de sistemas distribuídos?', 'A capacidade do sistema de continuar funcionando mesmo com falhas em alguns componentes.', 'A incapacidade de detectar erros.', 'A dependência de um único ponto de falha.', 'A diminuição do desempenho após uma falha.', 1, 'Difícil', 'Algoritmos'),
(179, 'Em algoritmos de processamento de linguagem natural (PLN), o que é \"tokenização\"?', 'O processo de traduzir o texto para outro idioma.', 'O processo de dividir o texto em unidades menores (palavras, frases).', 'O processo de analisar a gramática de uma frase.', 'O processo de gerar texto aleatório.', 2, 'Difícil', 'Algoritmos'),
(180, 'Qual o principal benefício de um algoritmo de ordenação in-place?', 'Ele é sempre mais rápido.', 'Ele não requer memória auxiliar significativa (além da necessária para a entrada).', 'Ele é mais complexo de implementar.', 'Ele pode ordenar apenas números inteiros.', 2, 'Difícil', 'Algoritmos'),
(181, 'Qual o conceito de \"concorrência\" em algoritmos e sistemas?', 'Executar várias tarefas sequencialmente.', 'Executar várias tarefas em sobreposição de tempo, potencialmente em paralelo, para melhorar o desempenho ou responsividade.', 'Executar apenas uma tarefa por vez.', 'Sincronizar dados entre diferentes bases.', 2, 'Difícil', 'Algoritmos'),
(182, 'No contexto de algoritmos de Machine Learning, o que é \"feature engineering\"?', 'O processo de escolher o melhor algoritmo para um problema.', 'O processo de transformar dados brutos em características (features) que os modelos podem aprender.', 'O processo de treinar um modelo.', 'O processo de avaliar o desempenho do modelo.', 2, 'Difícil', 'Algoritmos'),
(183, 'O que um \"problema de otimização\" busca em termos de algoritmo?', 'Encontrar qualquer solução válida.', 'Encontrar a melhor solução possível (máximo ou mínimo) para um problema.', 'Apenas classificar dados.', 'Detectar erros em dados.', 2, 'Difícil', 'Algoritmos'),
(184, 'Qual a principal desvantagem da busca em profundidade (DFS) em grafos com muitos caminhos longos?', 'Pode não encontrar o caminho mais curto.', 'Pode ficar \"presa\" em um caminho muito longo antes de explorar outros.', 'É ineficiente para detectar ciclos.', 'Não usa memória.', 2, 'Difícil', 'Algoritmos'),
(185, 'O que significa um algoritmo ser \"generativo\" em Machine Learning?', 'Ele aprende a classificar dados.', 'Ele aprende a gerar novos dados semelhantes aos dados de treinamento.', 'Ele aprende a prever valores numéricos.', 'Ele apenas agrupa dados.', 2, 'Difícil', 'Algoritmos'),
(186, 'Qual a principal aplicação do algoritmo de Kruskal?', 'Encontrar o caminho mais curto entre dois vértices.', 'Encontrar a Árvore Geradora Mínima (MST).', 'Detectar ciclos negativos em grafos.', 'Ordenar elementos em uma lista.', 2, 'Difícil', 'Algoritmos'),
(187, 'Em algoritmos de visão computacional, o que é \"segmentação de imagem\"?', 'Mudar a cor da imagem.', 'Dividir uma imagem em múltiplas regiões ou objetos.', 'Aumentar a resolução da imagem.', 'Compactar a imagem.', 2, 'Difícil', 'Algoritmos'),
(188, 'Qual a principal função de um algoritmo de \"escalonamento de processos\" em um sistema operacional?', 'Gerenciar a memória RAM.', 'Decidir qual processo será executado pela CPU e por quanto tempo.', 'Controlar os dispositivos de entrada e saída.', 'Formatar discos rígidos.', 2, 'Difícil', 'Algoritmos');
INSERT INTO `questions` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer`, `dificuldade`, `topico`) VALUES
(189, 'O que o \"Princípio da Localidade de Referência\" influencia no design de algoritmos e estruturas de dados?', 'A complexidade de tempo de Big O.', 'O desempenho da cache de memória.', 'A dificuldade de implementação.', 'A quantidade de entradas necessárias.', 2, 'Difícil', 'Algoritmos'),
(190, 'Qual o principal benefício de usar algoritmos de \"hashing criptográfico\"?', 'Apenas organizar dados.', 'Garantir a integridade dos dados e autenticidade da mensagem (não reversível).', 'Criptografar dados de forma reversível.', 'Ordenar grandes bases de dados.', 2, 'Difícil', 'Algoritmos'),
(191, 'O que é \"backtracking\" em algoritmos de busca?', 'Um método para ir sempre para frente na busca.', 'Uma técnica para explorar soluções parciais e \"voltar\" se não levarem a uma solução válida.', 'Um algoritmo de ordenação de dados.', 'Um tipo de algoritmo de compressão.', 2, 'Difícil', 'Algoritmos'),
(192, 'Qual a diferença crucial entre a complexidade de tempo no pior caso e a complexidade de tempo média?', 'Pior caso é sempre O(n), média é O(1).', 'Pior caso garante um limite superior; média descreve o desempenho esperado em entradas típicas.', 'Não há diferença significativa.', 'Pior caso usa menos memória.', 2, 'Difícil', 'Algoritmos'),
(193, 'Em algoritmos de Inteligência Artificial, o que representa um \"estado\" em um problema de busca?', 'Um passo no algoritmo.', 'Uma configuração específica do problema que o algoritmo pode alcançar.', 'Um tipo de dado de entrada.', 'Um erro de execução.', 2, 'Difícil', 'Algoritmos'),
(194, 'O que é a \"paralelização\" de um algoritmo?', 'Torná-lo sequencial.', 'Dividir o algoritmo em partes que podem ser executadas simultaneamente em múltiplos processadores.', 'Reduzir o número de entradas.', 'Aumentar sua complexidade.', 2, 'Difícil', 'Algoritmos'),
(195, 'Qual o principal objetivo de um algoritmo de \"compressão de dados\"?', 'Aumentar o tamanho do arquivo.', 'Reduzir o tamanho dos dados, mantendo a informação o máximo possível.', 'Criptografar os dados.', 'Tornar os dados mais complexos.', 2, 'Difícil', 'Algoritmos'),
(196, 'O que um \"grafo direcionado acíclico (DAG)\" é importante em quais tipos de algoritmos?', 'Aqueles que requerem ciclos.', 'Aqueles que representam dependências ou fluxos de trabalho (ex: agendamento de tarefas).', 'Aqueles que não têm vértices.', 'Aqueles que sempre têm múltiplos caminhos.', 2, 'Difícil', 'Algoritmos'),
(197, 'Qual o principal uso de algoritmos de \"reconhecimento de padrões\"?', 'Apenas organizar arquivos.', 'Identificar regularidades ou estruturas em dados.', 'Criptografar informações.', 'Criar novas linguagens de programação.', 2, 'Difícil', 'Algoritmos'),
(198, 'No contexto de sistemas de recomendação, o que é \"filtragem colaborativa\"?', 'Recomendar itens baseados em características do item.', 'Recomendar itens baseados nas preferências de usuários com gostos semelhantes.', 'Recomendar itens aleatoriamente.', 'Recomendar itens que ninguém mais gostou.', 2, 'Difícil', 'Algoritmos'),
(199, 'Qual o papel do \"gradiente descendente\" em algoritmos de Machine Learning (e.g., redes neurais)?', 'Para tornar o modelo mais lento.', 'Para ajustar os parâmetros do modelo minimizando uma função de custo.', 'Para gerar novos dados de treinamento.', 'Para aumentar a complexidade do modelo.', 2, 'Difícil', 'Algoritmos'),
(200, 'O que significa um algoritmo ser \"online\" em vez de \"offline\"?', 'Online precisa de conexão à internet; offline não.', 'Online processa a entrada à medida que chega; offline precisa de toda a entrada antes de começar.', 'Online é mais lento; offline é mais rápido.', 'Online não usa memória.', 2, 'Difícil', 'Algoritmos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `game_questions`
--
ALTER TABLE `game_questions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `game_questions`
--
ALTER TABLE `game_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
