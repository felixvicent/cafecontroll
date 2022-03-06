<?php

namespace Source\Core;

class Session
{
  public function __construct()
  {
    if (!session_id()) {
      session_save_path(CONF_SESSION_PATH);
      session_start();
    }
  }

  public function __get($key)
  {
    if (!empty($_SESSION[$key])) {
      return $_SESSION[$key];
    }

    return null;
  }

  public function __isset($key)
  {
    $this->has($key);
  }

  public function all()
  {
    return (object)$_SESSION;
  }

  public function set(string $key, $value)
  {
    $_SESSION[$key] = (is_array($value) ? (object)$value : $value);

    return $this;
  }

  public function unset(string $key)
  {
    unset($_SESSION[$key]);
    return $this;
  }

  public function has(string $key)
  {
    return isset($_SESSION[$key]);
  }

  public function regenerate()
  {
    session_regenerate_id(true);
    return $this;
  }

  public function destroy()
  {
    session_destroy();
    return $this;
  }

  public function flash()
  {
    if ($this->has("flash")) {
      $flash = $this->flash;
      $this->unset("flash");
      return $flash;
    }

    return null;
  }
}
