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
let ninjaX = 0;
let respostas = [];

window.addEventListener('load', () => {
  ninjaX = (gameArea.clientWidth - ninja.offsetWidth) / 2;
  ninja.style.left = `${ninjaX}px`;
});

window.addEventListener('resize', () => {
  const ninjaWidth = ninja.offsetWidth;
  const gameWidth = gameArea.clientWidth;
  if (ninjaX + ninjaWidth > gameWidth) {
    ninjaX = gameWidth - ninjaWidth;
    ninja.style.left = `${ninjaX}px`;
  }
});

async function carregarPergunta() {
  try {
    const response = await fetch('/api/questions');
    const perguntas = await response.json();

    const perguntasFiltradas = perguntas.filter(q =>
      q.dificuldade?.toLowerCase() === "facil" &&
      q.topico?.toLowerCase() === "condicionais"
    );

    if (perguntasFiltradas.length > 0) {
      const perguntaAleatoria = perguntasFiltradas[Math.floor(Math.random() * perguntasFiltradas.length)];
      perguntaEl.innerHTML = `<div class="texto-pergunta">${perguntaAleatoria.question}</div>`;

      const corretaIndex = perguntaAleatoria.correct_answer;

      respostas = [
        { text: perguntaAleatoria.answer1, correta: corretaIndex === 1 },
        { text: perguntaAleatoria.answer2, correta: corretaIndex === 2 },
        { text: perguntaAleatoria.answer3, correta: corretaIndex === 3 },
        { text: perguntaAleatoria.answer4, correta: corretaIndex === 4 },
      ];

      perguntaEl.innerHTML += `
        <div class="alternativas-visuais">
          ${respostas.map(res => `<div class="option-visual">${res.text}</div>`).join('')}
        </div>`;
    } else {
      perguntaEl.textContent = 'Nenhuma pergunta encontrada para o filtro escolhido.';
      respostas = [];
    }
  } catch {
    perguntaEl.textContent = 'Erro ao carregar pergunta';
  }
}

function criarOpcao(resposta) {
  const opt = document.createElement('div');
  opt.classList.add('option');
  opt.textContent = resposta.text;
  opt.dataset.correta = resposta.correta;

  const posicaoAleatoria = Math.random() * (gameArea.clientWidth - 120);
  opt.style.left = `${posicaoAleatoria}px`;
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

setInterval(() => {
  if (respostas.length > 0) {
    const aleatoria = respostas[Math.floor(Math.random() * respostas.length)];
    criarOpcao(aleatoria);
  }
}, 3000);

document.addEventListener('keydown', (e) => {
  const velocidade = 20;
  const ninjaWidth = ninja.offsetWidth;
  const gameWidthAtual = gameArea.clientWidth;

  if (e.key === 'ArrowLeft') {
    ninjaX -= velocidade;
    direction = 'esquerda';
  } else if (e.key === 'ArrowRight') {
    ninjaX += velocidade;
    direction = 'direita';
  }

  if (ninjaX < 0) ninjaX = 0;
  if (ninjaX > gameWidthAtual - ninjaWidth) ninjaX = gameWidthAtual - ninjaWidth;

  ninja.style.left = `${ninjaX}px`;
  ninja.src = direction === 'direita'
    ? '/frontend/assets/ninja-direita.png'
    : '/frontend/assets/ninja-esquerda.png';
});

function mostrarFimDeJogo(vitoria) {
  fimJogoEl.classList.remove('oculto');
  mensagemFinalEl.innerHTML = vitoria ? '🎉 Você venceu!' : '💀 Fim de jogo!';
  botoesFimEl.innerHTML = '';

  const botaoMenu = document.createElement('button');
  botaoMenu.textContent = '🏠 Voltar ao menu';
  botaoMenu.onclick = () => window.location.href = 'topicos.html';
  botoesFimEl.appendChild(botaoMenu);

  if (vitoria) {
    localStorage.setItem("emblema_game_condicionais", "true");
    mensagemFinalEl.innerHTML += `
      <br/><strong>Você conquistou o emblema de Condicionais!</strong><br/>
      <img src="/frontend/assets/emblemas/game_condicionais.png"
           alt="Emblema Condicionais"
           style="max-width: 180px; margin-top: 15px; display: block; margin-left: auto; margin-right: auto;">
    `;
  } else {
    const botaoTentar = document.createElement('button');
    botaoTentar.textContent = '🔁 Tentar novamente';
    botaoTentar.onclick = () => location.reload();
    botoesFimEl.appendChild(botaoTentar);
  }
}

carregarPergunta();
