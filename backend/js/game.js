const ninja = document.getElementById('ninja');
const gameArea = document.getElementById('gameArea');
const pontosEl = document.getElementById('pontos');
const vidasEl = document.getElementById('vidas');
const perguntaEl = document.querySelector('.pergunta');
const fimJogoEl = document.getElementById('fimJogo');
const mensagemFinalEl = document.getElementById('mensagemFinal');
const botoesFimEl = document.getElementById('botoesFim');

let pontos = 0;
let vidas = 3;
let direction = 'direita';
let perguntasRespondidas = 0;

const gameWidth = gameArea.clientWidth;
const areaPermitida = gameWidth * 0.6;
const limiteEsquerdo = (gameWidth - areaPermitida) / 2;
const limiteDireito = limiteEsquerdo + areaPermitida;

let ninjaX = (limiteEsquerdo + limiteDireito) / 2 - 60;
let respostas = [];

ninja.style.left = `${ninjaX}px`;

// Carrega uma pergunta da API
async function carregarPergunta() {
  try {
    const response = await fetch('/api/game-questions');
    const perguntas = await response.json();

    if (perguntas.length > 0) {
      const perguntaAleatoria = perguntas[Math.floor(Math.random() * perguntas.length)];
      perguntaEl.innerHTML = perguntaAleatoria.question + "<br><br>";

      const corretaIndex = perguntaAleatoria.correct_answer;

      respostas = [
        { text: perguntaAleatoria.answer1, correta: corretaIndex === 1 },
        { text: perguntaAleatoria.answer2, correta: corretaIndex === 2 },
        { text: perguntaAleatoria.answer3, correta: corretaIndex === 3 },
        { text: perguntaAleatoria.answer4, correta: corretaIndex === 4 },
      ];

      respostas.forEach((res) => {
        perguntaEl.innerHTML += `• ${res.text}<br>`;
      });
    }
  } catch (error) {
    console.error('Erro ao carregar pergunta:', error);
    perguntaEl.textContent = 'Erro ao carregar pergunta';
  }
}

// Cria uma opção visual na tela
function criarOpcao(resposta) {
  const opt = document.createElement('div');
  opt.classList.add('option');
  opt.textContent = resposta.text;
  opt.dataset.correta = resposta.correta;

  const posicaoAleatoria = Math.random() * (areaPermitida - 120);
  opt.style.left = `${limiteEsquerdo + posicaoAleatoria}px`;
  opt.style.top = `0px`;
  opt.style.position = 'absolute';

  gameArea.appendChild(opt);

  const intervalo = setInterval(() => {
    const top = parseFloat(opt.style.top);
    opt.style.top = `${top + 1}px`;

    const ninjaRect = ninja.getBoundingClientRect();
    const optRect = opt.getBoundingClientRect();
    const colidiu =
      optRect.left < ninjaRect.right &&
      optRect.right > ninjaRect.left &&
      optRect.bottom > ninjaRect.top &&
      optRect.top < ninjaRect.bottom;

    if (colidiu) {
      if (opt.dataset.correta === 'true') {
        pontos++;
        pontosEl.textContent = pontos;
        perguntasRespondidas++;

        if (perguntasRespondidas >= 5) {
          mostrarFimDeJogo(true);
        } else {
          carregarPergunta();
        }

      } else {
        vidas--;
        vidasEl.textContent = vidas;

        if (vidas <= 0) {
          mostrarFimDeJogo(false);
        }
      }

      opt.remove();
      clearInterval(intervalo);
    } else if (top >= 500) {
      opt.remove();
      clearInterval(intervalo);
    }
  }, 16);
}

// Gera opções aleatórias de tempos em tempos
setInterval(() => {
  if (respostas.length > 0) {
    const aleatoria = respostas[Math.floor(Math.random() * respostas.length)];
    criarOpcao(aleatoria);
  }
}, 3000);

// Movimento do ninja com teclado
document.addEventListener('keydown', (e) => {
  const velocidade = 20;

  if (e.key === 'ArrowLeft') {
    ninjaX -= velocidade;
    direction = 'esquerda';
  } else if (e.key === 'ArrowRight') {
    ninjaX += velocidade;
    direction = 'direita';
  }

  ninjaX = Math.max(limiteEsquerdo, Math.min(limiteDireito - 120, ninjaX));
  ninja.style.left = `${ninjaX}px`;
  ninja.src = direction === 'direita' ? '/frontend/assets/ninja-direita.png' : '/frontend/assets/ninja-esquerda.png';
});

// Mostra o menu de fim de jogo
function mostrarFimDeJogo(vitoria) {
  fimJogoEl.classList.remove('oculto');
  mensagemFinalEl.textContent = vitoria ? '🎉 Você venceu!' : '💀 Fim de jogo!';
  botoesFimEl.innerHTML = '';

  const botaoMenu = document.createElement('button');
  botaoMenu.textContent = '🏠 Voltar ao menu';
  botaoMenu.onclick = () => window.location.href = 'topicos.html';
  botoesFimEl.appendChild(botaoMenu);

  if (!vitoria) {
    const botaoTentar = document.createElement('button');
    botaoTentar.textContent = '🔁 Tentar novamente';
    botaoTentar.onclick = () => location.reload();
    botoesFimEl.appendChild(botaoTentar);
  }
}

// Início do jogo
carregarPergunta();
