<?php
// Inicia a sessão em todas as páginas para o controlo de login
session_start();

// Obtém a URL acedida e limpa a string para o roteamento
$request_uri = trim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH), '/');

// --- SISTEMA DE ROTAS ---
// Agora, o require_once é feito dentro de cada rota,
// garantindo que apenas o ficheiro necessário seja carregado.
switch ($request_uri) {
    // Rota da Página Inicial
    case '':
    case 'home':
        require_once __DIR__ . '/src/app/controllers/HomeController.php';
        $controller = new HomeController();
        $controller->index();
        break;

    // --- ROTAS DE AUTENTICAÇÃO DO ADMIN ---
    case 'login-adm': // ROTA ADICIONADA PARA COMPATIBILIDADE
    case 'admin/login':
        require_once __DIR__ . '/src/app/controllers/admin/AuthController.php';
        $controller = new AuthController();
        $controller->showLoginForm();
        break;

    case 'admin/auth': // Rota que recebe os dados do formulário de login
        require_once __DIR__ . '/src/app/controllers/admin/AuthController.php';
        $controller = new AuthController();
        $controller->authenticate();
        break;

    case 'admin/logout':
        require_once __DIR__ . '/src/app/controllers/admin/AuthController.php';
        $controller = new AuthController();
        $controller->logout();
        break;
        
    // --- ROTAS DA ÁREA INTERNA DO ADMIN ---
    case 'admin/dashboard':
        require_once __DIR__ . '/src/app/controllers/admin/DashboardController.php';
        $controller = new DashboardController();
        $controller->index();
        break;
    
    case 'admin/usuarios':
        require_once __DIR__ . '/src/app/controllers/admin/UserController.php';
        $controller = new UserController();
        $controller->list();
        break;

    // --- ROTA PADRÃO (PÁGINA NÃO ENCONTRADA) ---
    default:
        http_response_code(404);
        echo "<h1>404 - Página não encontrada</h1>";
        break;
}