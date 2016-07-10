<?php

class CartModel
{
    public function viewCartList($id_sql)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->query("SELECT * FROM book WHERE id IN ({$id_sql})");

        $books = $sth->fetchAll(PDO::FETCH_ASSOC);

        if (!$books){
            throw new NotFoundException("Book №{$id_sql} not found");
        }

        return $books;
    }
}