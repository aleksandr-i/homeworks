<?php

class FeedBackModel
{
    public function save(array $feedback)
    {
        // todo: check is feedback has keys, username, email and so on

        $db = DbConnection::getInstance()->getPdo();
        $sql = 'INSERT INTO feedback (username, email, message, created, ip_adress) 
                VALUES (:username, :email, :message, :created, :ip_adress)';
        $s = $db->prepare($sql);
        $s->execute($feedback);
    }
}