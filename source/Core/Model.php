<?php

namespace Source\Core;

use PDOException;

abstract class Model
{
  protected $data;
  protected $fail;
  protected $message;

  public function __set($name, $value)
  {
    if (empty($this->data)) {
      $this->data = new \stdClass();
    }

    $this->data->$name = $value;
  }

  public function __isset($name)
  {
    return isset($this->data->$name);
  }

  public function __get($name)
  {
    return ($this->data->$name ?? null);
  }

  public function data()
  {
    return $this->data;
  }

  public function fail()
  {
    return $this->fail;
  }

  public function message()
  {
    return $this->message;
  }

  protected function create(string $entity, array $data)
  {
    try {
      $columns = implode(", ", array_keys($data));
      $values = ':' . implode(", :", array_keys($data));

      $stmt = Connect::getInstance()->prepare("INSERT INTO {$entity} ({$columns}) VALUES ({$values})");
      $stmt->execute($this->filter($data));

      return Connect::getInstance()->lastInsertId();
    } catch (PDOException $exception) {
      $this->fail = $exception;
      return null;
    }
  }

  protected function read(string $select, $params = null)
  {
    try {
      $stmt = Connect::getInstance()->prepare($select);

      if ($params) {
        parse_str($params, $params);
        foreach ($params as $key => $value) {
          $type = is_numeric($value) ? \PDO::PARAM_INT : \PDO::PARAM_STR;
          $value = is_numeric($value) ? (int)$value : $value;
          $stmt->bindValue(":{$key}", $value, $type);
        }
      }

      $stmt->execute();
      return $stmt;
    } catch (\PDOException $exception) {
      $this->fail = $exception;
      return null;
    }
  }

  protected function update(string $entity, array $data, string $terms, string $params)
  {
    try {
      $dataSet = [];
      foreach ($data as $bind => $value) {
        $dataSet[] = "{$bind} = :{$bind}";
      }

      $dataSet = implode(", ", $dataSet);
      parse_str($params, $params);

      $stmt = Connect::getInstance()->prepare("UPDATE {$entity} SET {$dataSet} WHERE {$terms}");
      $stmt->execute($this->filter(array_merge($data, $params)));

      return ($stmt->rowCount() ?? 1);
    } catch (\PDOException $exception) {
      $this->fail = $exception;
      return null;
    }
  }

  protected function delete(string $entity, string $terms, $params)
  {
    try {
      $stmt = Connect::getInstance()->prepare("DELETE FROM {$entity} WHERE {$terms}");
      parse_str($params, $params);

      $stmt->execute($params);

      return ($stmt->rowCount() ?? 1);
    } catch (\PDOException $exception) {
      $this->fail = $exception;
      return null;
    }
  }

  protected function safe()
  {
    $safe = (array)$this->data;
    foreach (static::$safe as $unset) {
      unset($safe[$unset]);
    }

    return $safe;
  }

  private function filter(array $data)
  {
    $filter = [];

    echo '<pre>';
    foreach ($data as $key => $value) {
      $filter[$key] = (is_null($value) ? null : filter_var($value, FILTER_SANITIZE_SPECIAL_CHARS));
    }
    return $filter;
  }
}
