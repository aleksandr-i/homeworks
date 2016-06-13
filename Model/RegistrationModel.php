<?php

class RegistrationModel
{
    public function registration($email, $username, $password)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare('INSERT INTO user (email, username, password) 
               VALUES (:email, :username, :password)');
        $sth->execute(array(
            'email'=> $email,
            'username' => $username,
            'password' => $password,
        ));
    }
}