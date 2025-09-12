<?php
// Inicia a sessão em todas as páginas para o controlo de login
session_start();

// Obtém a URL acedida e limpa a string para o roteamento
$request_uri = trim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH), '/');

// --- CARREGAMENTO DOS CONTROLLERS ---
// Garante que os caminhos usam a pasta 'Controllers' com 'C' maiúsculo
require_once __DIR__ . '/app/Controllers/HomeController.php';
require_once __DIR__ . '/app/Controllers/Admin/AuthController.php';
require_once __DIR__ . '/app/Controllers/Admin/DashboardController.php';
require_once __DIR__ . '/app/Controllers/Admin/UserController.php';

// --- SISTEMA DE ROTAS ---
switch ($request_uri) {
    // Rota da Página Inicial
    case '':
    case 'home':
        $controller = new HomeController();
        $controller->index();
        break;

    // --- ROTAS DE AUTENTICAÇÃO DO ADMIN ---
    case 'admin/login':
        $controller = new AuthController();
        $controller->showLoginForm();
        break;

    case 'admin/auth': // Rota que recebe os dados do formulário de login
        $controller = new AuthController();
        $controller->authenticate();
        break;

    case 'admin/logout':
        $controller = new AuthController();
        $controller->logout();
        break;
        
    // --- ROTAS DA ÁREA INTERNA DO ADMIN ---
    case 'admin/dashboard':
        $controller = new DashboardController();
        $controller->index();
        break;
    
    case 'admin/usuarios':
        $controller = new UserController();
        $controller->list();
        break;

    // --- ROTA PADRÃO (PÁGINA NÃO ENCONTRADA) ---
    default:
        http_response_code(404);
        echo "<h1>404 - Página não encontrada</h1>";
        break;
}

