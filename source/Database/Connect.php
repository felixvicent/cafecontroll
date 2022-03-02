<?php

namespace Source\Database;

use \PDO;
use \PDOException;

class Connect
{
  const HOST = "localhost";
  const USER = "root";
  const DBNAME = "cafecontroll";
  const PASSWD = "";

  const OPTIONS = [
    PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ,
    PDO::ATTR_CASE => PDO::CASE_NATURAL
  ];

  static $instance;

  final protected function __construct()
  {
  }

  final protected function __clone()
  {
  }

  public static function getInstance()
  {
    if (empty(self::$instance)) {
      try {
        self::$instance = new PDO(
          "mysql:host=" . self::HOST . ";dbname=" . self::DBNAME,
          self::USER,
          self::PASSWD,
          self::OPTIONS
        );
      } catch (PDOException $exception) {
        die("<h1>Whoops! Erro ao conectar...</h1>");
      }
    }

    return self::$instance;
  }
}