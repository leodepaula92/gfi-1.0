<?php
$host = 'gfi-mysql'; // O nome do serviço do seu contêiner MySQL
$db_name = 'gfi_database'; // O nome do banco de dados
$username = 'user-gfi'; // Seu usuário
$password = '88423313'; // Sua senha
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db_name;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

try {
    $pdo = new PDO($dsn, $username, $password, $options);
} catch (\PDOException $e) {
    // Em um ambiente de produção, seria ideal logar este erro em vez de exibi-lo.
    throw new \PDOException($e->getMessage(), (int)$e->getCode());
}