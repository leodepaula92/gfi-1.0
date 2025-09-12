<?php
class HomeController {
    public function index() {
        $pageTitle = "GFI - Gestão Financeira Inteligente"; // Novo título
        $message = "Seja Bem vindo!"; // Nova mensagem
        require_once __DIR__ . '/../views/home.php';
    }
}