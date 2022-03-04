<?php

require __DIR__ . "/source/autoload.php";

use Source\Models\UserModel;

$model = new UserModel();


$user = $model->load(4);

$user->first_name = 'Félix';
$user->email = 'eduardo51@email.com.br';

$user->save();


echo '<pre>';
print_r($user);
