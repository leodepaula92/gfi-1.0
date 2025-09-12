<?php
class HomeController {
    public function index() {
        $pageTitle = "Página Inicial MVC";
        $message = "Bem-vindo ao nosso sistema MVC!";
        require_once __DIR__ . '/../views/home.php';
    }
}