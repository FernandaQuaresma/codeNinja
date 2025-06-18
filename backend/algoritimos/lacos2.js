const $questionsContainer = document.querySelector(".questions-container");

let totalCorrect = 0;
let allQuestions = [];
let displayedQuestions = [];
let usedQuestions = new Set();

async function loadQuestions() {
  try {
    const response = await fetch('/api/questions');
    const data = await response.json();

    // Filtra apenas as questões com dificuldade "difícil" e o tópico "variaveis"
    const filteredQuestions = data.filter(q => 
      q.dificuldade?.toLowerCase() === "dificil" && q.topico?.toLowerCase() === "laços"
    );

    allQuestions = filteredQuestions.map(q => ({
      question: q.question,
      answers: [
        { text: q.answer1, correct: q.correct_answer === 1 },
        { text: q.answer2, correct: q.correct_answer === 2 },
        { text: q.answer3, correct: q.correct_answer === 3 },
        { text: q.answer4, correct: q.correct_answer === 4 }
      ],
      locked: false
    }));

    displayedQuestions = getRandomQuestions(4);
    renderQuestions();
  } catch (error) {
    console.error('Erro ao carregar as perguntas:', error);
  }
}

function startGame() {
  $questionsContainer.classList.remove("hide");
  loadQuestions();
}

function getRandomQuestions(count) {
  const available = allQuestions.filter((_, i) => !usedQuestions.has(i));
  const shuffled = available.sort(() => 0.5 - Math.random());
  const selected = shuffled.slice(0, count);

  selected.forEach(q => {
    const index = allQuestions.indexOf(q);
    usedQuestions.add(index);
  });

  return selected;
}

function renderQuestions() {
  $questionsContainer.innerHTML = "";

  displayedQuestions.forEach((q, index) => {
    const questionCard = createQuestionCard(q, index);
    $questionsContainer.appendChild(questionCard);
  });
}

function createQuestionCard(questionObj, index) {
  const card = document.createElement("div");
  card.classList.add("question-card");
  card.dataset.index = index;

  const questionText = document.createElement("p");
  questionText.classList.add("question-text");
  questionText.textContent = `${index + 1}. ${questionObj.question}`;
  card.appendChild(questionText);

  questionObj.answers.forEach(answer => {
    const btn = document.createElement("button");
    btn.classList.add("button", "answer");
    btn.textContent = answer.text;
    btn.dataset.correct = answer.correct;
    btn.disabled = questionObj.locked;

    btn.addEventListener("click", (e) => selectAnswer(e, card, index));

    card.appendChild(btn);
  });

  return card;
}

function selectAnswer(event, card, cardIndex) {
  const selected = event.target;
  const isCorrect = selected.dataset.correct === "true";
  const answerButtons = card.querySelectorAll(".answer");

  answerButtons.forEach(btn => {
    btn.disabled = true;
    if (btn.dataset.correct === "true") btn.classList.add("correct");
    else btn.classList.add("incorrect");
  });

  if (isCorrect) {
    totalCorrect++;
    displayedQuestions[cardIndex].locked = true;

    if (totalCorrect === displayedQuestions.length) {
      setTimeout(() => finishGame(), 800);
    }
  } else {
    const newQuestion = getRandomQuestions(1)[0];
    if (newQuestion) {
      displayedQuestions[cardIndex] = newQuestion;
      setTimeout(() => updateQuestionCard(card, cardIndex), 800);
    } else {
      displayedQuestions.splice(cardIndex, 1);
      setTimeout(() => renderQuestions(), 800);
    }
  }
}

function updateQuestionCard(card, index) {
  const q = displayedQuestions[index];
  card.innerHTML = "";

  const questionText = document.createElement("p");
  questionText.classList.add("question-text");
  questionText.textContent = `${index + 1}. ${q.question}`;
  card.appendChild(questionText);

  q.answers.forEach(answer => {
    const btn = document.createElement("button");
    btn.classList.add("button", "answer");
    btn.textContent = answer.text;
    btn.dataset.correct = answer.correct;

    btn.addEventListener("click", (e) => selectAnswer(e, card, index));

    card.appendChild(btn);
  });
}

function finishGame() {
  const totalQuestions = displayedQuestions.length;
  const performance = Math.floor((totalCorrect / totalQuestions) * 100);

  let message = "";
  switch (true) {
    case performance >= 90:
      message = "Excelente :)";
      break;
    case performance >= 70:
      message = "Muito bom :)";
      break;
    case performance >= 50:
      message = "Bom";
      break;
    default:
      message = "Pode melhorar :(";
  }

  // ✅ Salva o emblema "niveis_laços" no localStorage
  localStorage.setItem("emblema_niveis_lacos", "true");

  $questionsContainer.innerHTML = `
    <p class="final-message">
      Você acertou ${totalCorrect} de ${totalQuestions} questões!<br/>
      <span>Resultado: ${message}</span><br/>
      <strong>Você conquistou o emblema de Laços!</strong><br/>
      <img src="/frontend/assets/emblemas/niveis_lacos.png"
           alt="Emblema Laços"
           style="max-width: 180px; margin-top: 15px; display: block; margin-left: auto; margin-right: auto;"><br/>
      Redirecionando para o jogo...
    </p>
  `;

  setTimeout(() => {
    window.location.href = "http://localhost:3000/frontend/pages/gamelacos.html";
  }, 3000);
}



document.addEventListener("DOMContentLoaded", () => {
  startGame();
});
