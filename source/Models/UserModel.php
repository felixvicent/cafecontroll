<?php

namespace Source\Models;

class UserModel extends Model
{
  protected static $safe = ["id", "created_at", "updated_at"];
  protected static $entity = "users";

  public function bootstrap(string $firstName, string $lastName, string $email, string $document = null)
  {
    $this->first_name = $firstName;
    $this->last_name = $lastName;
    $this->email = $email;
    $this->document = $document;

    return $this;
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
    if (!$this->required()) {
      return null;
    }
    if (!empty($this->id)) {
      $userId = $this->id;
    } else {
      if ($this->find($this->email)) {
        $this->message = "O e-mail já existe";
        return null;
      }

      $userId = $this->create(self::$entity, $this->safe());

      if ($this->fail()) {
        $this->message = "Erro ao cadastrar";
      }

      $this->message = "Cadastro realizado com sucesso";
    }

    $this->data = $this->load($userId);
    return $this;
  }

  public function destroy()
  {
  }

  private function required()
  {
    if (empty($this->first_name) || empty($this->last_name) || empty($this->email)) {
      $this->message = "Nome, sobrenome e email são obrigatórios";

      return false;
    }

    if (!filter_var($this->email, FILTER_VALIDATE_EMAIL)) {
      $this->message = "Email inválido";

      return false;
    }

    return true;
  }
}
