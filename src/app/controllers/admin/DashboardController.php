<?php
class DashboardController {
    /**
     * Exibe a página principal (dashboard) da área administrativa.
     */
    public function index() {
        // Primeiro, verifica se o utilizador tem permissão para estar aqui
        $this->checkAuth();
        
        // Se a verificação passar, carrega o ficheiro da view do dashboard
        require_once __DIR__ . '/../../../views/admin/dashboard.php';
    }

    /**
     * Função de segurança privada.
     * Verifica se existe uma sessão de utilizador ativa.
     * Se não existir, interrompe o carregamento da página e redireciona
     * para o formulário de login.
     */
    private function checkAuth() {
        if (!isset($_SESSION['user_id'])) {
            header('Location: /admin/login');
            exit();
        }
    }
}
