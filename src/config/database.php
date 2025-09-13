<?php
$host = 'gfi-mysql'; // O nome do serviço do seu contentor MySQL
$db_name = 'gfi_database'; // O nome da base de dados
$username = 'user-gfi'; // O seu utilizador
$password = '88423313'; // A sua senha
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
    // Num ambiente de produção, seria ideal registar este erro em vez de o exibir.
    throw new \PDOException($e->getMessage(), (int)$e->getCode());
}
v