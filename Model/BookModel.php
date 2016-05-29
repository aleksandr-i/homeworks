<?php

class BookModel
{
    public function find($id)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->query('SELECT * FROM book WHERE status = 1 and id ='.$id);
        $books = $sth->fetch(PDO::FETCH_ASSOC);

        if (!$books){
            throw new NotFoundException("Book №{$id} not found");
        }

        return $books;
    }

    public function findAll()
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->query('SELECT * FROM book WHERE status = 1 ORDER BY price DESC');
        $books = $sth->fetchAll(PDO::FETCH_ASSOC);

        if (!$books){
            throw new NotFoundException('Books not found');
        }

        return $books;
    }

    public function count()
    {
        // select count(*) from books
    }
}