const ninja = document.getElementById('ninja');
const gameArea = document.getElementById('gameArea');
const pontosEl = document.getElementById('pontos');
const vidasEl = document.getElementById('vidas');
const perguntaEl = document.querySelector('.pergunta');

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
      perguntaEl.innerHTML = perguntaAleatoria.question;

      const corretaIndex = perguntaAleatoria.correct_answer;

      respostas = [
        { text: perguntaAleatoria.answer1, correta: corretaIndex === 1 },
        { text: perguntaAleatoria.answer2, correta: corretaIndex === 2 },
        { text: perguntaAleatoria.answer3, correta: corretaIndex === 3 },
        { text: perguntaAleatoria.answer4, correta: corretaIndex === 4 },
      ];
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

        // Se o jogador acertou 5 perguntas ou perdeu todas as vidas, encerra o jogo
        if (perguntasRespondidas >= 5) {
          alert('🎉 Você venceu o jogo!');
          location.reload();
        }
        carregarPergunta(); // Carrega nova pergunta

      } else {
        vidas--;
        vidasEl.textContent = vidas;

        // Se as vidas acabaram, encerra o jogo
        if (vidas <= 0) {
          alert('💀 Fim de jogo!');
          location.reload();
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
  ninja.src = direction === 'direita' ? 'assets/ninja-direita.png' : 'assets/ninja-esquerda.png';
});

// Início do jogo
carregarPergunta();
