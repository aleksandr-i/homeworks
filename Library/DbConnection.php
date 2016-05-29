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
        $this->pdo = new PDO('mysql: host=localhost; dbname=mvc_app', 'root');
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



