<?php

require __DIR__ . "/source/autoload.php";

use Source\Models\UserModel;

$model = new UserModel();

$users = $model->all(10, 0);

echo '<pre>';
print_r($users);
