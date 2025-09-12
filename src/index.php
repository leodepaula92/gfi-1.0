<?php
// Simples sistema de rotas para o exemplo
$request_uri = trim($_SERVER['REQUEST_URI'], '/');

if ($request_uri === '' || $request_uri === 'home') {
    require_once __DIR__ . '/app/controllers/HomeController.php';
    $controller = new HomeController();
    $controller->index();
} else {
    http_response_code(404);
    echo "<h1>Página não encontrada</h1>";
}