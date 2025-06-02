const express = require('express');
const bcrypt = require('bcrypt');
const path = require('path');
const multer = require('multer');

module.exports = function(db) {
  const router = express.Router();

  // Configuração de upload de fotos
  const storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, path.join(__dirname, 'fotos'));
    },
    filename: function (req, file, cb) {
      const ext = path.extname(file.originalname);
      const nome = Date.now() + ext;
      cb(null, nome);
    }
  });

  const upload = multer({ storage });

  function proteger(req, res, next) {
    if (req.session.usuario) {
      next();
    } else {
      res.redirect('/frontend/pages/login.html');
    }
  }

  router.get('/frontend/pages/perfil.html', proteger, (req, res) => {
    res.sendFile(path.join(__dirname, 'frontend/pages/perfil.html'));
  });

  router.get('/api/usuario', proteger, (req, res) => {
    const email = req.session.usuario;
    db.query('SELECT nome, email, foto FROM usuarios WHERE email = ?', [email], (err, results) => {
      if (err) return res.status(500).send('Erro no banco');
      res.json(results[0]);
    });
  });

  // Cadastro de usuário
  router.post('/cadastro', upload.single('foto'), async (req, res) => {
    const { nome, email, senha } = req.body;
    const senhaCripto = await bcrypt.hash(senha, 10);
    const foto = req.file ? req.file.filename : null;

    db.query(
      'INSERT INTO usuarios (nome, email, senha, foto) VALUES (?, ?, ?, ?)',
      [nome, email, senhaCripto, foto],
      (err) => {
        if (err && err.code === 'ER_DUP_ENTRY') {
          return res.send(`
            <script>
              alert("Este e-mail já está sendo usado!");
              window.location.href = "/cadastro.html";
            </script>
          `);
        } else if (err) {
          console.error(err);
          return res.status(500).send('Erro ao cadastrar');
        }

        req.session.usuario = email;
        res.redirect('/frontend/pages/topicos.html');
      }
    );
  });

  router.post('/login', (req, res) => {
    const { email, senha } = req.body;

    db.query('SELECT * FROM usuarios WHERE email = ?', [email], async (err, results) => {
      if (err) return res.status(500).send('Erro interno');

      if (results.length === 0) {
        return res.send(`
          <script>
            alert("Usuário não encontrado!");
            window.location.href = "/frontend/pages/login.html";
          </script>
        `);
      }

      const usuario = results[0];
      const senhaOk = await bcrypt.compare(senha, usuario.senha);

      if (senhaOk) {
        req.session.usuario = usuario.email;
        res.redirect('/frontend/pages/perfil.html');
      } else {
        res.send(`
          <script>
            alert("Senha incorreta!");
            window.location.href = "/frontend/pages/login.html";
          </script>
        `);
      }
    });
  });

  router.post('/atualizar-usuario', upload.single('foto'), proteger, async (req, res) => {
    const { nome, email, senha } = req.body;
    const foto = req.file ? req.file.filename : null;
    const usuarioAtual = req.session.usuario;

    const novosCampos = [];
    const valores = [];

    if (nome) {
      novosCampos.push('nome = ?');
      valores.push(nome);
    }

    if (email) {
      novosCampos.push('email = ?');
      valores.push(email);
      req.session.usuario = email;
    }

    if (senha) {
      const senhaCripto = await bcrypt.hash(senha, 10);
      novosCampos.push('senha = ?');
      valores.push(senhaCripto);
    }

    if (foto) {
      novosCampos.push('foto = ?');
      valores.push(foto);
    }

    valores.push(usuarioAtual);

    const sql = `UPDATE usuarios SET ${novosCampos.join(', ')} WHERE email = ?`;

    db.query(sql, valores, (err) => {
      if (err) return res.status(500).send('Erro ao atualizar');
      res.sendStatus(200);
    });
  });

  router.delete('/excluir-conta', proteger, (req, res) => {
    const email = req.session.usuario;
    db.query('DELETE FROM usuarios WHERE email = ?', [email], (err) => {
      if (err) return res.status(500).send('Erro ao excluir');
      req.session.destroy(() => {
        res.sendStatus(200);
      });
    });
  });

  router.get('/logout', (req, res) => {
    req.session.destroy(() => {
      res.redirect('/frontend/pages/home.html');
    });
  });

  return router;
};
