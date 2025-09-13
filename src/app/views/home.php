<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>GFI</title>
  <link rel="stylesheet" href="/public/css/style.css" />
</head>
<body>
  <header>GFI</header>

  <main class="main">
    <div class="text">
      <div class="logo">Seja Bem vindo!</div>
      <div class="subtitle">Clique no botão para ir ao login, e acessar seu perfil.</div>
    </div>

    <div class="content">
      <div class="left">
        <img src="/public/img/logo2.png" alt="Logo GFI" width="250" height="250">
      </div>
      <div class="right">
        <div class="buttons">
  <a href="/login-funcionario" class="btn-acesso">Acesso Funcionário</a>
  <a href="/login-cliente" class="btn-acesso">Acesso Cliente</a>
  <a href="/login-adm" class="btn-acesso">Acesso Adm</a>
</div>

<div class="buttons">
  <button onclick="window.location.href='/login-funcionario'" class="btn-acesso">Acesso Funcionário</button>
  <button onclick="window.location.href='/login-cliente'" class="btn-acesso">Acesso Cliente</button>
  <button onclick="window.location.href='/login-adm'" class="btn-acesso">Acesso Adm</button>
</div>
      </div>
    </div>
  </main>

  <footer>&copy; 2025 GFI - Todos os direitos reservados.</footer>
</body>
</html>
