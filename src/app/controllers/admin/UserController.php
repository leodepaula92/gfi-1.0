<?php
class UserController {

    /**
     * Lista todos os utilizadores.
     */
    public function list() {
        $this->checkAuth(); // Protege a página
        require __DIR__ . '/../../../config/database.php';

        // Busca todos os utilizadores para listar
        $users = $pdo->query("SELECT ID_USN_N, NOME_USN, ID_PERFIL_USN_N FROM CAD_Usuarios")->fetchAll();

        // Carrega a view que irá mostrar os utilizadores
        // (Vamos criar este ficheiro 'list.php' no futuro)
        require __DIR__ . '/../../../views/admin/users/list.php';
    }

    /**
     * Função de segurança para verificar se o utilizador está autenticado.
     */
    private function checkAuth() {
        if (!isset($_SESSION['user_id'])) {
            header('Location: /admin/login');
            exit();
        }
    }
}