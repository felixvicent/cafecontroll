<?php

use Source\Core\Session;
use Source\Models\User;

require __DIR__ . "/source/autoload.php";

$session = new Session();
$session->set("user", 1);
$session->regenerate();
$session->set("stats", 255);
$session->unset("stats");

echo '<pre>';

print_r([
  $_SESSION,
  $session->all(),
  session_id()
]);
