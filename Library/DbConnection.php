<?php

//Singleton

class DbConnection
{
    private static $instance = null;

    /**
     * @var PDO
     */
    private $pdo;

    private function __construct()
    {
        // like; mysql; host=localhost; dbname=mvc
        $dsn = 'mysql: host=' . Config::get('host') . '; dbname=' . Config::get('dbname');

        $this->pdo = new PDO($dsn, Config::get('user'), Config::get('pass'));
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
    }

    private function __clone(){}
    private function __wakeUp(){}

    public static function getInstance()
    {
        if (self::$instance === null){
            self::$instance = new DbConnection();
        }

        return self::$instance;
    }

    /**
     * @return PDO
     */
    public function getPdo()
    {
        return $this->pdo;
    }


}



