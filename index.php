<?php

require __DIR__ . "/source/autoload.php";

use Source\Models\UserModel;

$model = new UserModel();

$list = $model->all(100, 40);

echo '<pre>';
if ($list) {
  /** @var UserModel $user */
  foreach ($list as $user) {
    print_r($user);
    $user->destroy();
  }
}
