<?php
class AuthController {

    public function showLoginForm() {
        require_once __DIR__ . '/../../../views/admin/login.php';
    }

    /**
     * Processa a tentativa de login do usuário.
     */
    public function authenticate() {
        require __DIR__ . '/../../../config/database.php'; // Inclui a conexão PDO

        $username = $_POST['username'] ?? '';
        $password = $_POST['password'] ?? '';

        // Busca o usuário no banco de dados
        $stmt = $pdo->prepare("SELECT * FROM CAD_Usuarios WHERE NOME_USN = ?");
        $stmt->execute([$username]);
        $user = $stmt->fetch();

        // 1. Verifica se o usuário existe E se a senha bate com o hash
        if ($user && password_verify($password, $user['SENHA_USN'])) {

            // 2. Autorização: Verifica se o perfil é Admin (2) ou Suporte (1)
            if (in_array($user['ID_PERFIL'], [1, 2])) {

                // Login bem-sucedido: cria a sessão do usuário
                $_SESSION['user_id'] = $user['ID_USER'];
                $_SESSION['user_name'] = $user['NOME_USER'];
                $_SESSION['user_profile'] = $user['ID_PERFIL'];

                // Redireciona para o dashboard administrativo
                header('Location: /admin/dashboard');
                exit();
            }
        }

        // Se falhar em qualquer etapa, volta para o login com um erro
        header('Location: /admin/login?error=1');
        exit();
    }
}