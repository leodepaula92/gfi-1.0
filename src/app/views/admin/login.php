<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Login Administrativo</title>
    <link rel="stylesheet" href="/public/css/style.css" />
</head>
<body>
    <div class="login-container">
        <h1>Acesso Administrativo</h1>
        <form action="/admin/auth" method="POST">
            <div>
                <label for="username">Usuário:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div>
                <label for="password">Senha:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Entrar</button>
        </form>
        <?php if (isset($_GET['error'])): ?>
            <p style="color:red;">Usuário ou senha inválidos.</p>
        <?php endif; ?>
    </div>
</body>
</html>