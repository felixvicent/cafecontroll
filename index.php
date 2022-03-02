<?php

require __DIR__ . "/source/autoload.php";

use Source\Database\Connect;
use Source\Database\Entity\UserEntity;

$pdo = Connect::getInstance();

echo '<pre>';
$read = $pdo->query("SELECT * FROM users limit 1");
foreach ($read->fetchAll(PDO::FETCH_CLASS, UserEntity::class) as $user) {
  print_r([$user, $user->getFirstName()]);
}
