<?php

namespace Source\Models;

abstract class Model
{
  protected $data;
  protected $fail;
  protected $message;

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

  protected function create()
  {
  }

  protected function read()
  {
  }

  protected function update()
  {
  }

  protected function delete()
  {
  }

  protected function safe()
  {
  }

  private function filter()
  {
  }
}
