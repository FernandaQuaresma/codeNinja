// Preenche dados do usuário
function preencherDados(data) {
  const fotoPerfil = document.getElementById('foto-perfil');

  if (data.foto) {
    fotoPerfil.outerHTML = `
      <img id="foto-perfil" src="/fotos/${data.foto}" 
        alt="Foto de perfil" 
        style="width: 120px; height: 120px; border-radius: 50%; object-fit: cover; border: 3px solid rgba(124, 77, 255, 0.6); margin-bottom: 20px;">
    `;
  } else {
    fotoPerfil.className = 'bi bi-person-circle';
    fotoPerfil.style.fontSize = '120px';
    fotoPerfil.style.color = '#fff';
  }

  document.getElementById('nomeEsquerda').textContent = data.nome || 'Usuário';
  document.getElementById('emailEsquerda').textContent = data.email || '';
  document.getElementById('nomeDisplay').textContent = data.nome || '';
  document.getElementById('emailDisplay').textContent = data.email || '';
  document.getElementById('nome').value = data.nome || '';
  document.getElementById('email').value = data.email || '';
}

// Requisição de dados
fetch('/api/usuario')
  .then(res => res.json())
  .then(data => preencherDados(data))
  .catch(() => alert('Erro ao carregar dados do usuário.'));

// Conquistas
const ul = document.getElementById('conquistasList');
ul.innerHTML = '';
const emblemas = [];

const emblemasData = [
  ["niveis_algoritimos", "Níveis - Algoritimos"],
  ["game_algoritimos", "Jogo - Algoritimos"],
  ["niveis_variaveis", "Níveis - Variáveis"],
  ["game_variaveis", "Jogo - Variáveis"],
  ["niveis_operadores", "Níveis - Operadores"],
  ["game_operadores", "Jogo - Operadores"],
  ["niveis_condicionais", "Níveis - Condicionais"],
  ["game_condicionais", "Jogo - Condicionais"],
  ["niveis_lacos", "Níveis - Laços"],
  ["game_lacos", "Jogo - Laços"],
  ["niveis_vetores", "Níveis - Vetores"],
  ["game_vetores", "Game - Vetores"],
  ["niveis_funcoes", "Níveis - Funções"],
  ["game_funcoes", "Jogo - Funções"],
  ["niveis_estruturas", "Níveis - Estruturas"],
  ["game_estruturas", "Game - Estruturas"],
];

emblemasData.forEach(([key, nome]) => {
  if (localStorage.getItem("emblema_" + key) === "true") {
    emblemas.push({
      nome,
      imagem_url: `/frontend/assets/emblemas/${key}.png`
    });
  }
});

if (emblemas.length > 0) {
  ul.innerHTML = '';
  emblemas.forEach(emblema => {
    const li = document.createElement('li');
    li.style.flex = '0 0 auto';
    li.style.textAlign = 'center';
    li.innerHTML = `
      <img src="${emblema.imagem_url}" alt="${emblema.nome}" onclick="abrirModalEmblema('${emblema.imagem_url}')">
      <div>${emblema.nome}</div>
    `;
    li.querySelector('img').addEventListener('mouseenter', function () {
      this.style.transform = 'scale(1.1)';
      this.style.borderColor = '#c084fc';
    });
    li.querySelector('img').addEventListener('mouseleave', function () {
      this.style.transform = 'scale(1)';
      this.style.borderColor = 'rgba(124, 77, 255, 0.5)';
    });
    ul.appendChild(li);
  });
} else {
  ul.innerHTML = '<li>Nenhuma conquista encontrada.</li>';
}

// Título
const quantidade = emblemas.length;
let titulo = '';
if (quantidade === 0) titulo = 'Iniciante Ninja';
else if (quantidade <= 4) titulo = 'Ninja Aprendiz';
else if (quantidade <= 8) titulo = 'Ninja Guerreiro';
else if (quantidade <= 12) titulo = 'Ninja Mestre';
else titulo = 'Mestre Supremo Ninja';

document.getElementById('tituloUsuario').textContent = titulo;

// Diploma
if (quantidade >= 16) {
  const diplomaBtn = document.createElement("button");
  diplomaBtn.textContent = "Gerar Diploma";
  diplomaBtn.classList.add("btn-edit");
  diplomaBtn.onclick = gerarDiplomaPDF;
  document.querySelector(".card-right .buttons").appendChild(diplomaBtn);
}

async function gerarDiplomaPDF() {
  const { jsPDF } = window.jspdf;
  const doc = new jsPDF();
  doc.setFillColor(18, 18, 18);
  doc.rect(0, 0, 210, 297, 'F');

  const nomeUsuario = document.getElementById("nomeEsquerda").textContent;

  doc.setTextColor(255, 255, 255);
  doc.setFontSize(24);
  doc.setFont("helvetica", "bold");
  doc.text("Diploma de Conclusão - CodeNinja", 105, 30, { align: "center" });

  doc.setFontSize(14);
  doc.setFont("helvetica", "normal");
  const texto = [
    `Certificamos que ${nomeUsuario},`,
    "concluiu com êxito todos os módulos de lógica de programação da plataforma CodeNinja,",
    "demonstrando dedicação, raciocínio e domínio dos conteúdos abordados.",
    "",
    "Conquistas:"
  ];

  let y = 50;
  texto.forEach((linha) => {
    doc.text(linha, 105, y, { align: "center" });
    y += 8;
  });

  let x = 25;
  y += 5;
  let col = 0;
  for (let emblema of emblemas) {
    try {
      const img = await loadImageAsBase64(emblema.imagem_url);
      doc.addImage(img, "PNG", x, y, 30, 30);
      x += 40;
      col++;
      if (col % 4 === 0) {
        x = 25;
        y += 40;
      }
    } catch (e) {
      console.error("Erro ao carregar imagem:", emblema.imagem_url);
    }
  }

  doc.setFontSize(10);
  doc.setTextColor(180, 180, 180);
  doc.text("Emitido automaticamente por CodeNinja - www.codeninja.com.br", 105, 285, { align: "center" });

  doc.save(`diploma_${nomeUsuario}.pdf`);
}

function loadImageAsBase64(url) {
  return new Promise((resolve, reject) => {
    const img = new Image();
    img.crossOrigin = "Anonymous";
    img.onload = function () {
      const canvas = document.createElement("canvas");
      canvas.width = img.width;
      canvas.height = img.height;
      canvas.getContext("2d").drawImage(img, 0, 0);
      resolve(canvas.toDataURL("image/png"));
    };
    img.onerror = reject;
    img.src = url;
  });
}

// Edição de perfil
function mostrarFormulario() {
  document.getElementById('visualizacao').style.display = 'none';
  document.getElementById('formPerfil').style.display = 'flex';
}
function cancelarEdicao() {
  document.getElementById('formPerfil').style.display = 'none';
  document.getElementById('visualizacao').style.display = 'block';
  document.getElementById('formPerfil').reset();
}
document.getElementById('formPerfil').addEventListener('submit', async function (e) {
  e.preventDefault();
  const form = document.getElementById('formPerfil');
  const formData = new FormData(form);
  const res = await fetch('/atualizar-usuario', {
    method: 'POST',
    body: formData,
  });
  if (res.ok) {
    alert('Alterações salvas!');
    window.location.reload();
  } else {
    alert('Erro ao salvar alterações.');
  }
});

// Excluir conta
function excluirConta() {
  if (confirm('Tem certeza que deseja excluir sua conta? Essa ação é permanente.')) {
    fetch('/excluir-conta', {
      method: 'DELETE',
    }).then((res) => {
      if (res.ok) {
        alert('Conta excluída com sucesso.');
        window.location.href = '/frontend/pages/login.html';
      } else {
        alert('Erro ao excluir a conta.');
      }
    });
  }
}

// Modal de emblemas
function abrirModalEmblema(src) {
  const modal = document.getElementById("modalEmblema");
  const imagem = document.getElementById("modalImagem");
  imagem.src = src;
  modal.classList.remove("hidden");
}
function fecharModalEmblema() {
  const modal = document.getElementById("modalEmblema");
  modal.classList.add("hidden");
}
document.getElementById("modalEmblema").addEventListener("click", function (e) {
  if (e.target.id === "modalEmblema") {
    fecharModalEmblema();
  }
});

// ✅ Função logout separada
function logout() {
  const chaves = Object.keys(localStorage);
  chaves.forEach(chave => {
    if (chave.startsWith("emblema_")) {
      localStorage.removeItem(chave);
    }
  });
  window.location.href = "/logout";
}
