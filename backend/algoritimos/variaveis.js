const $questionsContainer = document.querySelector(".questions-container");

let totalCorrect = 0;
let allQuestions = [];
let displayedQuestions = [];
let usedQuestions = new Set();

async function loadQuestions() {
  try {
    const response = await fetch('/api/questions');
    const data = await response.json();

    // Filtra perguntas com dificuldade 'fácil' e tópico 'algoritimos'
    const easyQuestions = data.filter(q =>
      q.dificuldade?.toLowerCase() === "facil" &&
      q.topico?.toLowerCase() === "variaveis"
    );

    allQuestions = easyQuestions.map(q => ({
      question: q.question,
      answers: [
        { text: q.answer1, correct: q.correct_answer === 1 },
        { text: q.answer2, correct: q.correct_answer === 2 },
        { text: q.answer3, correct: q.correct_answer === 3 },
        { text: q.answer4, correct: q.correct_answer === 4 }
      ]
    }));

    displayedQuestions = getRandomQuestions(6);
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

  // Botão "Retornar"
  const returnBtn = document.createElement("button");
  returnBtn.textContent = "Retornar";
  returnBtn.classList.add("button", "return-button");
  returnBtn.addEventListener("click", () => {
    window.location.href = "algoritimos.html";
  });
  $questionsContainer.appendChild(returnBtn);
}

function createQuestionCard(questionObj, index) {
  const questionCard = document.createElement("div");
  questionCard.classList.add("question-card");
  questionCard.dataset.index = index;

  const questionText = document.createElement("p");
  questionText.classList.add("question-text");
  questionText.textContent = `${index + 1}. ${questionObj.question}`;
  questionCard.appendChild(questionText);

  questionObj.answers.forEach(answer => {
    const answerButton = document.createElement("button");
    answerButton.classList.add("button", "answer");
    answerButton.textContent = answer.text;
    answerButton.dataset.correct = answer.correct;

    answerButton.addEventListener("click", (e) =>
      selectAnswer(e, questionCard, index)
    );

    questionCard.appendChild(answerButton);
  });

  return questionCard;
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

  card.classList.add("answered");

  if (isCorrect) {
    totalCorrect++;
  } else {
    const newQuestion = getRandomQuestions(1)[0];
    if (newQuestion) {
      displayedQuestions[cardIndex] = newQuestion;

      // Atualiza só a pergunta errada
      setTimeout(() => {
        updateQuestionCard(card, cardIndex);
      }, 800);
      return;
    } else {
      displayedQuestions.splice(cardIndex, 1);
    }
  }

  if (totalCorrect === displayedQuestions.length) {
    finishGame();
  }
}

function updateQuestionCard(card, cardIndex) {
  const q = displayedQuestions[cardIndex];
  card.innerHTML = "";

  const questionText = document.createElement("p");
  questionText.classList.add("question-text");
  questionText.textContent = `${cardIndex + 1}. ${q.question}`;
  card.appendChild(questionText);

  q.answers.forEach(answer => {
    const answerButton = document.createElement("button");
    answerButton.classList.add("button", "answer");
    answerButton.textContent = answer.text;
    answerButton.dataset.correct = answer.correct;

    answerButton.addEventListener("click", (e) =>
      selectAnswer(e, card, cardIndex)
    );

    card.appendChild(answerButton);
  });
}

function finishGame() {
  window.location.href = "quizvariaveis2.html";
}

document.addEventListener("DOMContentLoaded", () => {
  startGame();
});
