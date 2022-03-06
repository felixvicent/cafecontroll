<?php

use Source\Models\User;

require __DIR__ . "/source/autoload.php";

$model = new User();

$user = $model->load(1);

echo '<pre>';
print_r($user);
