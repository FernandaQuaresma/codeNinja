const ninja = document.getElementById('ninja');
const gameArea = document.getElementById('gameArea');
const pontosEl = document.getElementById('pontos');
const vidasEl = document.getElementById('vidas');

let pontos = 0;
let vidas = 3;
let direction = 'direita';

const gameWidth = gameArea.clientWidth;
const areaPermitida = gameWidth * 0.6;
const limiteEsquerdo = (gameWidth - areaPermitida) / 2;
const limiteDireito = limiteEsquerdo + areaPermitida;

let ninjaX = (limiteEsquerdo + limiteDireito) / 2 - 60;

const respostas = [
  { text: '"object"', correta: true },
  { text: '"array"', correta: false },
  { text: '"undefined"', correta: false },
  { text: '"function"', correta: false },
];

function criarOpcao() {
  const opt = document.createElement('div');
  opt.classList.add('option');
  const r = respostas[Math.floor(Math.random() * respostas.length)];
  opt.textContent = r.text;
  opt.dataset.correta = r.correta;

  // Caem só na área permitida
  const posicaoAleatoria = Math.random() * (areaPermitida - 120);
  opt.style.left = `${limiteEsquerdo + posicaoAleatoria}px`;
  opt.style.top = `0px`;

  gameArea.appendChild(opt);

  const intervalo = setInterval(() => {
    const top = parseFloat(opt.style.top);
    opt.style.top = `${top + 1}px`; // Velocidade mais lenta

    if (top >= 420) {
      const ninjaRect = ninja.getBoundingClientRect();
      const optRect = opt.getBoundingClientRect();

      const colidiu =
        optRect.left < ninjaRect.right &&
        optRect.right > ninjaRect.left &&
        optRect.bottom > ninjaRect.top;

      if (colidiu) {
        if (opt.dataset.correta === 'true') {
          pontos++;
          pontosEl.textContent = pontos;
        } else {
          vidas--;
          vidasEl.textContent = vidas;
        }
        opt.remove();
        clearInterval(intervalo);

        if (pontos >= 10) {
          alert('🎉 Você venceu!');
          location.reload();
        }

        if (vidas <= 0) {
          alert('💀 Fim de jogo!');
          location.reload();
        }
      } else if (top >= 500) {
        opt.remove();
        clearInterval(intervalo);
      }
    }
  }, 16);
}

setInterval(criarOpcao, 1500);

document.addEventListener('keydown', (e) => {
  const velocidade = 20;

  if (e.key === 'ArrowLeft') {
    ninjaX -= velocidade;
    direction = 'esquerda';
  } else if (e.key === 'ArrowRight') {
    ninjaX += velocidade;
    direction = 'direita';
  }

  // Limita o ninja à área central
  ninjaX = Math.max(limiteEsquerdo, Math.min(limiteDireito - 120, ninjaX));
  ninja.style.left = `${ninjaX}px`;
  ninja.src = direction === 'direita' ? 'assets/ninja-direita.png' : 'assets/ninja-esquerda.png';
});
