<?php

namespace Source\Models;

class UserModel extends Model
{
  protected static $safe = ["id", "created_at", "updated_at"];
  protected static $entity = "users";

  public function bootstrap()
  {
  }

  public function load($id)
  {
  }

  public function find($email)
  {
  }

  public function all($limit = 30, $offset = 0)
  {
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