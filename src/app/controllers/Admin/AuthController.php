<?php
class AuthController {
    /**
     * Exibe o formulário de login.
     */
    public function showLoginForm() {
        require_once __DIR__ . '/../../../views/admin/login.php';
    }
}
