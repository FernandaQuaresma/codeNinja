-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/05/2025 às 02:57
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
  `dificuldade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer`, `dificuldade`) VALUES
(1, 'O que caracteriza um algoritmo?', 'Uma sequência de instruções sem propósito específico.', 'Uma sequência finita de passos bem definidos para resolver um problema.', 'Um conjunto de comandos em uma linguagem de programação.', 'Um processo de execução automática.', 2, 'fácil'),
(2, 'Qual a principal característica de um algoritmo?', 'Ele deve ser infinito.', 'Ele deve ter um número finito de etapas.', 'Ele não deve ter entradas nem saídas.', 'Ele deve ser executado por qualquer linguagem de programação.', 2, 'fácil'),
(3, 'Qual é o objetivo principal de um algoritmo eficiente?', 'Gerar um número mínimo de variáveis.', 'Resolver o problema com o menor uso de recursos.', 'Reduzir a quantidade de comandos no código.', 'Ser executado em qualquer ambiente computacional.', 2, 'fácil'),
(4, 'O que é pseudocódigo?', 'Um código executável escrito em uma linguagem de baixo nível.', 'Uma descrição informal e simplificada de um algoritmo.', 'Um tipo de código utilizado apenas em algoritmos complexos.', 'Uma versão otimizada de um código de programação.', 2, 'fácil'),
(5, 'Em que áreas os algoritmos podem ser aplicados?', 'Apenas em linguagens de programação.', 'Apenas em problemas matemáticos.', 'Em diversas áreas, incluindo computação e atividades cotidianas.', 'Exclusivamente em sistemas operacionais.', 3, 'fácil'),
(6, 'Qual é uma característica que não define um algoritmo?', 'Definição clara de passos.', 'Execução finita.', 'Ambiguidade nas etapas.', 'Entradas e saídas definidas.', 3, 'fácil'),
(7, 'Por que é importante que um algoritmo seja bem definido?', 'Para garantir que o problema será resolvido de maneira precisa e eficaz.', 'Para reduzir a quantidade de variáveis utilizadas.', 'Para garantir que o código final será pequeno.', 'Para assegurar que o programa funcionará apenas em um tipo específico de dispositivo.', 1, 'fácil'),
(8, 'Como podemos descrever um algoritmo de forma acessível?', 'Através de um código executável.', 'Usando uma linguagem de baixo nível.', 'Combinando lógica de programação com linguagem natural, como no pseudocódigo.', 'Somente por meio de diagramas de fluxo.', 3, 'fácil'),
(9, 'Qual é o resultado de um algoritmo que soma dois números?', 'O valor de um dos números.', 'A soma dos dois números fornecidos como entrada.', 'A multiplicação dos dois números fornecidos.', 'O número de passos realizados no algoritmo.', 2, 'fácil'),
(10, 'O que é necessário para que um algoritmo seja considerado eficaz?', 'Ele deve ser executado sem interrupções.', 'Ele deve resolver o problema de forma rápida e com uso mínimo de recursos.', 'Ele deve ter um número infinito de passos.', 'Ele deve ser aplicável a todas as situações possíveis.', 2, 'fácil'),
(11, 'Qual é a função das entradas em um algoritmo?', 'São os dados fornecidos ao algoritmo para que ele execute as operações necessárias.', 'São os resultados que o algoritmo vai gerar.', 'São os parâmetros de execução do código de máquina.', 'Não têm importância, pois os algoritmos funcionam independentemente de entradas.', 1, 'fácil'),
(12, 'Em um algoritmo, o que são as saídas?', 'São os passos intermediários do algoritmo.', 'São os resultados finais ou soluções geradas pelo algoritmo.', 'São dados que o algoritmo não pode manipular.', 'São apenas variáveis usadas dentro do algoritmo.', 2, 'fácil'),
(13, 'Qual é a consequência de um algoritmo ter um número infinito de passos?', 'O algoritmo será executado indefinidamente.', 'O algoritmo funcionará mais rápido.', 'O algoritmo gerará um erro.', 'O algoritmo nunca será concluído.', 1, 'fácil'),
(14, 'Quando dizemos que um algoritmo é \"bem definido\", o que estamos afirmando?', 'O algoritmo tem uma descrição ambígua, mas executa a tarefa.', 'O algoritmo tem etapas claras e não deixa margem para interpretações diferentes.', 'O algoritmo pode ser traduzido para qualquer linguagem de programação diretamente.', 'O algoritmo tem um número ilimitado de passos.', 2, 'fácil'),
(15, 'Qual é a função do pseudocódigo em relação aos algoritmos?', 'Substituir o código de programação.', 'Servir como um esboço simplificado para descrever um algoritmo.', 'Testar automaticamente a execução do algoritmo.', 'Traduzir um algoritmo para código de máquina.', 2, 'fácil'),
(16, 'Qual a diferença entre um algoritmo e um programa de computador?', 'O algoritmo é uma descrição da solução e o programa é a implementação real em código.', 'O algoritmo pode ser executado em qualquer computador, mas o programa não.', 'O algoritmo é escrito em código de máquina, enquanto o programa não.', 'O algoritmo nunca é executado, ao contrário do programa.', 1, 'fácil'),
(17, 'Qual das alternativas a seguir não representa uma forma comum de descrever um algoritmo?', 'Pseudocódigo.', 'Fluxograma.', 'Código de máquina.', 'Diagrama de classe.', 4, 'fácil'),
(18, 'Qual deve ser a saída de um algoritmo ao ser executado?', 'O algoritmo deve produzir uma solução ou resultado ao final.', 'O algoritmo deve fazer uma pausa ao terminar.', 'O algoritmo deve fazer novas entradas.', 'O algoritmo deve ser reexecutado indefinidamente.', 1, 'fácil'),
(19, 'O que significa um algoritmo ser \"eficiente\"?', 'O algoritmo executa a tarefa rapidamente, com baixo consumo de recursos.', 'O algoritmo possui muitos passos e variáveis.', 'O algoritmo tem um alto grau de complexidade matemática.', 'O algoritmo é executado em qualquer dispositivo computacional.', 1, 'fácil'),
(20, 'O que é necessário para que um algoritmo seja considerado correto?', 'Ele deve ter uma descrição mínima.', 'Ele deve ser implementado em uma linguagem de programação específica.', 'Ele deve produzir os resultados esperados para todas as entradas possíveis.', 'Ele deve ser executado em tempo ilimitado.', 3, 'fácil'),
(21, 'Qual é a primeira etapa de um algoritmo?', 'Escrever o código em uma linguagem de programação.', 'Definir as entradas e saídas do problema.', 'Identificar a solução do problema.', 'Executar o algoritmo em um computador.', 2, 'fácil'),
(22, 'Em que tipo de problema a utilização de algoritmos se torna mais relevante?', 'Em problemas simples, que podem ser resolvidos sem programação.', 'Em problemas complexos, onde a solução precisa ser definida com clareza e precisão.', 'Em problemas que não exigem nenhuma entrada ou saída.', 'Em problemas que não envolvem dados.', 2, 'fácil'),
(23, 'O que significa um algoritmo ser executado de forma finita?', 'Ele será executado por tempo ilimitado.', 'Ele será executado apenas uma vez.', 'Ele será executado dentro de um número limitado de passos.', 'Ele nunca será executado.', 3, 'fácil'),
(24, 'Qual é a principal vantagem de utilizar pseudocódigo?', 'Ele executa o algoritmo sem necessidade de compilação.', 'Ele é facilmente convertido para qualquer linguagem de programação.', 'Ele pode ser entendido por qualquer pessoa, independentemente de seu conhecimento em programação.', 'Ele permite a execução em diferentes sistemas operacionais.', 3, 'fácil'),
(25, 'O que acontece se um algoritmo tiver um número infinito de passos?', 'Ele vai terminar em algum momento.', 'Ele não irá gerar nenhum resultado.', 'Ele nunca será concluído.', 'Ele vai gerar um erro lógico.', 3, 'fácil'),
(26, 'Qual é o principal objetivo de um algoritmo de ordenação?', 'Agrupar os dados de maneira aleatória.', 'Colocar os dados em qualquer ordem.', 'Organizar os dados de acordo com um critério específico.', 'Excluir os dados desnecessários.', 3, 'fácil'),
(27, 'O que deve ser feito para que um algoritmo seja considerado correto?', 'Ele deve ser executado rapidamente.', 'Ele deve produzir o resultado esperado para todas as entradas.', 'Ele deve ser escrito em pseudocódigo.', 'Ele deve ser curto e eficiente.', 2, 'fácil'),
(28, 'Qual é a definição de \"entrada\" em um algoritmo?', 'É o resultado gerado pelo algoritmo.', 'São os dados fornecidos ao algoritmo para que ele execute suas operações.', 'É a quantidade de memória utilizada pelo algoritmo.', 'São as instruções que o algoritmo segue.', 2, 'fácil'),
(29, 'Quando dizemos que um algoritmo é eficiente, o que estamos afirmando?', 'Ele resolve o problema com o menor número de passos possíveis.', 'Ele resolve o problema de maneira mais complexa e detalhada.', 'Ele utiliza mais memória do que os algoritmos comuns.', 'Ele é executado apenas em computadores rápidos.', 1, 'fácil'),
(30, 'Qual é a principal diferença entre um algoritmo e um programa de computador?', 'Um algoritmo é uma sequência de passos a seguir para resolver um problema, enquanto o programa é sua implementação em código.', 'Um programa de computador não possui entradas nem saídas.', 'Um algoritmo é escrito apenas em linguagem de programação.', 'Um programa de computador pode ser executado em qualquer computador, mas o algoritmo não pode.', 1, 'fácil'),
(31, 'O que significa a característica de \"finito\" de um algoritmo?', 'O algoritmo possui uma quantidade ilimitada de entradas.', 'O algoritmo pode ser executado por tempo indeterminado.', 'O algoritmo sempre gera um número finito de resultados.', 'O algoritmo deve ter um número limitado de passos antes de terminar sua execução.', 4, 'fácil'),
(32, 'O que ocorre quando um algoritmo não é bem definido?', 'Ele será mais rápido.', 'Ele pode gerar resultados errados ou inesperados.', 'Ele pode ser executado em qualquer computador.', 'Ele irá otimizar automaticamente os recursos utilizados.', 2, 'fácil'),
(33, 'Qual das alternativas abaixo é uma característica desejável de um algoritmo?', 'Ele deve ser executado de forma indefinida.', 'Ele deve ser vago e flexível.', 'Ele deve ser claro, preciso e eficaz.', 'Ele deve ter um número infinito de entradas e saídas.', 3, 'fácil'),
(34, 'O que é necessário para transformar um algoritmo em um programa executável?', 'Ele deve ser escrito em pseudocódigo.', 'Ele deve ser traduzido para uma linguagem de programação específica.', 'Ele precisa ser executado em diferentes dispositivos.', 'Ele deve ser validado por uma ferramenta automatizada.', 2, 'fácil'),
(35, 'O que deve ser feito ao descrever um algoritmo?', 'A descrição deve ser vaga e aberta a interpretações.', 'A descrição deve ser clara, precisa e sem ambiguidades.', 'A descrição deve ser executada diretamente em código de máquina.', 'A descrição deve ser feita apenas para programadores experientes.', 2, 'fácil'),
(36, 'Qual é o principal propósito de um algoritmo de busca?', 'Eliminar todos os dados irrelevantes.', 'Encontrar um valor ou conjunto de valores dentro de um conjunto de dados.', 'Ordenar os dados de forma crescente ou decrescente.', 'Gerar novos dados a partir dos dados existentes.', 2, 'fácil'),
(37, 'O que é a saída de um algoritmo?', 'Os dados fornecidos ao algoritmo.', 'A sequência de operações que o algoritmo executa.', 'O resultado final ou a solução do problema após a execução do algoritmo.', 'O tempo necessário para a execução do algoritmo.', 3, 'fácil'),
(38, 'Qual é a vantagem de se usar fluxogramas para representar algoritmos?', 'Eles podem ser executados sem necessidade de codificação.', 'Eles facilitam a visualização do fluxo de execução e das operações do algoritmo.', 'Eles são rápidos de escrever e não precisam de validação.', 'Eles permitem que qualquer programa seja executado automaticamente.', 2, 'fácil'),
(39, 'Qual é a função do algoritmo de criptografia?', 'Armazenar dados de forma segura.', 'Proteger dados ao transformá-los em uma forma ilegível, salvo para quem tenha a chave correta.', 'Reduzir o tamanho dos dados para facilitar o armazenamento.', 'Aumentar a velocidade de execução dos programas.', 2, 'fácil'),
(40, 'O que um bom algoritmo deve garantir?', 'Que ele funcionará apenas em um tipo de dispositivo.', 'Que ele seja executado de forma rápida, precisa e sem erros.', 'Que ele nunca precisará de modificações.', 'Que ele seja escrito sem considerar o ambiente de execução.', 2, 'fácil'),
(41, 'Qual é a principal vantagem do algoritmo de ordenação Quicksort em relação ao algoritmo Bubble Sort?', 'Quicksort possui complexidade de tempo média melhor, O(n log n), enquanto Bubble Sort tem O(n²).', 'Bubble Sort é mais eficiente em grandes volumes de dados.', 'Quicksort é mais simples de implementar do que Bubble Sort.', 'Bubble Sort tem menor complexidade de espaço que Quicksort.', 1, 'difícil'),
(42, 'O que caracteriza a busca binária como um algoritmo eficiente?', 'Ela exige que os dados estejam em ordem e possui complexidade de O(log n).', 'Ela é eficiente apenas em listas pequenas e não ordenadas.', 'Ela funciona em tempo linear, O(n).', 'Ela sempre retorna o valor mais próximo ao buscado.', 1, 'difícil'),
(43, 'O que significa a notação Big O para o algoritmo de ordenação Merge Sort?', 'O algoritmo tem tempo de execução O(n log n) no pior caso.', 'Merge Sort é sempre O(n²) independentemente do tipo de entrada.', 'Merge Sort tem complexidade O(log n) em todos os casos.', 'Merge Sort é mais eficiente do que QuickSort para grandes dados.', 1, 'difícil'),
(44, 'Em um algoritmo de grafos, o que é a complexidade de tempo de uma busca em profundidade (DFS) em um grafo denso?', 'O tempo de execução é O(n²), onde n é o número de vértices.', 'O tempo de execução é O(n + m), onde n é o número de vértices e m é o número de arestas.', 'O tempo de execução é O(n log n).', 'O tempo de execução é O(m log n), onde m é o número de arestas e n é o número de vértices.', 2, 'difícil'),
(45, 'Qual é a principal diferença entre um algoritmo recursivo e um algoritmo iterativo?', 'Recursão usa mais memória devido à pilha de chamadas, enquanto a iteração geralmente usa menos memória.', 'Recursão é sempre mais eficiente em termos de tempo que iteração.', 'Iteração é sempre mais eficiente que recursão em todos os casos.', 'Recursão não é adequada para resolver problemas com grandes entradas.', 1, 'difícil'),
(46, 'Qual é a complexidade de tempo no pior caso para o algoritmo de ordenação Heapsort?', 'O pior caso é O(n log n).', 'O pior caso é O(n²).', 'O pior caso é O(n).', 'O pior caso é O(log n).', 1, 'difícil'),
(47, 'O que significa a notação Big O O(n log n) em relação a um algoritmo?', 'Significa que o tempo de execução do algoritmo cresce linearmente com o tamanho da entrada.', 'Significa que o tempo de execução do algoritmo cresce de forma proporcional ao logaritmo do tamanho da entrada.', 'Significa que o tempo de execução do algoritmo cresce de forma linear e logarítmica combinadas.', 'Significa que o tempo de execução do algoritmo é constante independentemente da entrada.', 3, 'difícil'),
(48, 'Quais são as características de um algoritmo guloso (greedy)?', 'Ele sempre seleciona a melhor escolha em cada etapa sem considerar as consequências futuras.', 'Ele avalia todas as opções possíveis antes de tomar uma decisão.', 'Ele resolve o problema de forma recursiva e dinâmica.', 'Ele é eficaz apenas em problemas com soluções inteiras.', 1, 'difícil'),
(49, 'Qual é a principal desvantagem do algoritmo de Dijkstra para encontrar o caminho mais curto?', 'Ele não funciona em grafos com arestas negativas.', 'Ele tem uma complexidade maior do que o algoritmo de Bellman-Ford.', 'Ele requer uma matriz de adjacência para ser implementado.', 'Ele não encontra o caminho mais curto quando os vértices estão desconectados.', 1, 'difícil'),
(50, 'Em uma árvore binária de pesquisa (BST), qual é a complexidade de tempo para buscar um elemento no pior caso?', 'O pior caso é O(log n), quando a árvore está balanceada.', 'O pior caso é O(n), quando a árvore é degenerate (sem balanceamento).', 'O pior caso é O(n²).', 'O pior caso é O(log n) independente do balanceamento da árvore.', 2, 'difícil'),
(51, 'O que caracteriza um algoritmo de programação dinâmica?', 'Ele resolve problemas dividindo-os em subproblemas e armazena as soluções para evitar cálculos repetidos.', 'Ele resolve problemas iterativamente sem utilizar armazenamento de soluções parciais.', 'Ele usa recursão para encontrar todas as soluções possíveis.', 'Ele é mais eficiente que algoritmos gulosos em todos os cenários.', 1, 'difícil'),
(52, 'Qual a vantagem do uso do algoritmo de Kruskal em relação ao algoritmo de Prim?', 'Kruskal pode ser mais eficiente para grafos esparsos.', 'Prim é sempre mais eficiente que Kruskal para todos os tipos de grafos.', 'Kruskal exige menos memória para grafos grandes.', 'Prim utiliza uma abordagem recursiva, enquanto Kruskal usa iteração.', 1, 'difícil'),
(53, 'O que é a busca em largura (BFS) em grafos?', 'Ela explora o grafo a partir de um vértice, visitando todos os vértices de um nível antes de passar para o próximo nível.', 'Ela explora o grafo recursivamente, indo o mais fundo possível antes de retornar.', 'Ela explora todos os caminhos do grafo em ordem aleatória.', 'Ela apenas busca os vértices conectados diretamente ao vértice inicial.', 1, 'difícil'),
(54, 'Em que situação a técnica de backtracking é mais eficiente?', 'Quando um problema pode ser dividido em várias sub-soluções independentes.', 'Quando o problema tem uma única solução, e todas as possibilidades precisam ser verificadas.', 'Quando é necessário garantir a solução ótima em problemas de otimização.', 'Quando a solução do problema não pode ser encontrada por métodos iterativos.', 2, 'difícil'),
(55, 'Qual é a principal desvantagem de usar a técnica de divisão e conquista (divide and conquer)?', 'Ela requer mais memória devido ao armazenamento de subproblemas.', 'Ela não é adequada para problemas com soluções iterativas.', 'Ela só funciona para problemas que podem ser facilmente paralelizados.', 'Ela não pode ser usada para problemas de otimização.', 1, 'difícil'),
(56, 'Qual é a complexidade de tempo para inserir um elemento em uma tabela de dispersão (hash table) no melhor caso?', 'O melhor caso é O(1), quando não há colisões.', 'O melhor caso é O(n), quando a tabela está completamente cheia.', 'O melhor caso é O(log n), quando a tabela está balanceada.', 'O melhor caso é O(n log n), quando as funções de dispersão são otimizadas.', 1, 'difícil'),
(57, 'No algoritmo de programação dinâmica, o que é a técnica de memoization?', 'Armazenamento das soluções parciais dos subproblemas para evitar cálculos redundantes.', 'Execução recursiva para calcular todas as soluções possíveis.', 'Divisão do problema em subproblemas independentes que podem ser resolvidos de forma paralela.', 'Estratégia de busca que calcula as soluções apenas quando necessário.', 1, 'difícil'),
(58, 'Qual é a principal característica do algoritmo A* de busca em grafos?', 'A* usa uma função heurística para estimar o custo até o objetivo, melhorando a eficiência na busca.', 'A* é mais eficiente que o algoritmo de Dijkstra em todos os cenários.', 'A* sempre encontra a solução ótima independentemente do grafo.', 'A* não pode ser usado em grafos com pesos negativos nas arestas.', 1, 'difícil'),
(59, 'Como a técnica de poda alfa-beta otimiza o algoritmo de minimax em jogos de tabuleiro?', 'Ela descarta ramos da árvore de jogo que não afetarão o resultado final, melhorando a eficiência.', 'Ela faz uma avaliação heurística de todas as posições possíveis antes de executar o algoritmo.', 'Ela divide o problema em múltiplos subproblemas paralelos.', 'Ela elimina a necessidade de calcular o valor mínimo do tabuleiro.', 1, 'difícil'),
(60, 'Qual é a principal diferença entre algoritmos de busca em grafos e algoritmos de busca em árvores?', 'Os algoritmos de busca em grafos podem passar por ciclos, enquanto os algoritmos de busca em árvores não.', 'Os algoritmos de busca em grafos não precisam considerar o peso das arestas, enquanto os de árvores sim.', 'Os algoritmos de busca em árvores são sempre mais rápidos que os de grafos.', 'Os algoritmos de busca em árvores podem ser aplicados apenas em árvores binárias.', 1, 'difícil');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
