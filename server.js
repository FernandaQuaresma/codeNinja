const express = require('express');
const mysql = require('mysql2');
const path = require('path');
const session = require('express-session');
const { log } = require('console');
const app = express();
const port = 3000;

// Banco de dados
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'quiz',
  port:'3307'
});
db.connect((err) => {
  if (err) console.error('Erro ao conectar:', err);
  else console.log('Conectado ao MySQL!');
});

// Sessão
app.use(session({
  secret: 'seusegredo123',
  resave: false,
  saveUninitialized: false
}));

// Parse de form
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// Arquivos estáticos
app.use(express.static(path.join(__dirname)));

// Rotas
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '/frontend/pages/home.html'));
});


app.get('/api/questions', (req, res) => {
  db.query('SELECT * FROM questions', (err, results) => {
    if (err) res.status(500).send('Erro ao obter perguntas');
    else res.json(results);
   
  });
});

app.get('/api/usuarios', (req, res) => {
  db.query('SELECT * FROM usuarios', (err, results) => {
    if (err) res.status(500).send('Erro ao obter usuarios');
    else res.json(results);
  });
});
app.get('/api/usuarios/:id', (req, res) => {
  const { id } = req.params;

  db.query('SELECT * FROM usuarios WHERE id = ?', [id], (err, results) => {
    if (err) {
      res.status(500).send('Erro ao buscar o usuário');
    } else if (results.length === 0) {
      res.status(404).send('Usuário não encontrado');
    } else {
      res.json(results[0]); 
    }
  });
});


app.get('/api/game-questions', (req, res) => {
  
  db.query('SELECT * FROM game_questions', (err, results) => {
    if (err) res.status(500).send('Erro ao obter perguntas');
    else res.json(results);
  });
});

// Rotas de usuário
const userRoutes = require('./serveruser')(db);
app.use(userRoutes);

// Inicia servidor
app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`);
});
