<?php

use Source\Core\Message;
use Source\Core\Session;

require __DIR__ . "/source/autoload.php";

$message = new Message();
$session = new Session();

echo $message->success("Essa é uma mensagem de sucesso")->flash();

if ($flash = $session->flash()) {
  echo $flash;
}
