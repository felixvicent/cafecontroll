<?php

namespace Source\Models;

class UserModel extends Model
{
  protected static $safe = ["id", "created_at", "updated_at"];
  protected static $entity = "users";

  public function bootstrap()
  {
  }

  public function load(int $id, string $columns = '*')
  {
    $load = $this->read("SELECT {$columns} FROM " . self::$entity . " WHERE id = :id", "id={$id}");

    if ($this->fail() || !$load->rowCount()) {
      $this->message = "Usuário não encontrado";
      return null;
    }

    return $load->fetchObject(__CLASS__);
  }

  public function find(string $email, string $columns = "*")
  {
    $find = $this->read("SELECT {$columns} FROM " . self::$entity . " WHERE email = :email", "email={$email}");

    if ($this->fail() || !$find->rowCount()) {
      $this->message = "Usuário não encontrado";
      return null;
    }

    return $find->fetchObject(__CLASS__);
  }

  public function all(int $limit = 30, int $offset = 0, string $columns = "*")
  {
    $all = $this->read("SELECT {$columns} FROM " . self::$entity . " LIMIT :limit OFFSET :offset", "limit={$limit}&offset={$offset}");

    if ($this->fail() || !$all->rowCount()) {
      $this->message = "Sem resultados";
      return null;
    }

    return $all->fetchAll(\PDO::FETCH_CLASS, __CLASS__);
  }

  public function save()
  {
  }

  public function destroy()
  {
  }

  private function required()
  {
  }
}
