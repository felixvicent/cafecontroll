<?php

require __DIR__ . "/source/autoload.php";

use Source\Models\UserModel;

$model = new UserModel();

$user = $model->bootstrap("Félix", "Vicente", "felixvicent1303@gmail.com");

if (!$model->find($user->email)) {
  $user->save();
} else {
  $user = $model->find("felixvicent1303@gmail.com");
}


echo '<pre>';
print_r($user);
