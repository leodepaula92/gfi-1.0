<?php
// Proteção simples: se o usuário não estiver logado, redireciona para o login
if (!isset($_SESSION['user_id'])) {
    header('Location: /admin/login');
    exit();
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Dashboard - GFI</title>
    <link rel="stylesheet" href="/public/css/style.css" />
</head>
<body>
    <header>
        <h1>Painel Administrativo GFI</h1>
        <nav>
            <a href="/admin/usuarios">Gerenciar Usuários</a>
            <a href="/admin/clientes">Gerenciar Clientes</a>
            <a href="/admin/logout">Sair</a>
        </nav>
    </header>
    <main>
        <h2>Bem-vindo, <?php echo htmlspecialchars($_SESSION['user_name']); ?>!</h2>
        <p>Esta é a sua área administrativa. Use o menu acima para navegar.</p>
    </main>
</body>
</html>