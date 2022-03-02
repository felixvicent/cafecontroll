<?php

require __DIR__ . "/source/autoload.php";

use Source\Database\Connect;

$pdo = Connect::getInstance();

echo '<pre>';
print_r($pdo);
