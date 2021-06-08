<?php

class Login
{
    /**
     * @var bool
     */
    public $logged = false;

    /**
     * Login constructor.
     * @param $post
     */
    public function
    __construct($post)
    {
        if (isset($post['email']) && isset($post['password']) && $this->isLogged($post['email'],$post['password'])){
          $this->logged = true;
        }
    }

    /**
     * @param $login
     * @param $password
     * @return bool
     */
    public function isLogged($login,$password)
    {
        $requette = $this->pdo()->query("select * from admin where email = '$login' and password = '$password'");
        $response = $requette->fetch(PDO::FETCH_ASSOC);

        if ($response){
            return true;
        }

        return false;
    }

    public function logout()
    {

    }

    private function pdo()
    {
        $pdo = new PDO('mysql:host=localhost;dbname=projet_gite', 'root', '', array(
            PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"
        ));
        return $pdo;
    }
}