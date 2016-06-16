<?php

class BookModel
{
    public function find($id)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare(
            'SELECT b.id, b.title, b.description, b.price, GROUP_CONCAT(a.name ORDER BY a.name SEPARATOR\', \') AS \'author\'
             FROM book b JOIN book_author ba ON b.id = ba.book_id JOIN author a ON a.id = ba.author_id
             WHERE b.id = :number GROUP BY b.id');
        $sth->execute(array(
            'number' => $id
        ));

        $books = $sth->fetch(PDO::FETCH_ASSOC);

        if (!$books){
            throw new NotFoundException("Book №{$id} not found");
        }

        return $books;
    }

    public function findAll()
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->query(
            'SELECT b.id, b.title, b.description, b.price, GROUP_CONCAT(a.name ORDER BY a.name SEPARATOR\', \') AS \'author\' 
             FROM book b JOIN book_author ba ON b.id = ba.book_id JOIN author a ON a.id = ba.author_id 
             WHERE status = 1 GROUP BY b.id ORDER BY price DESC');
        $books = $sth->fetchAll(PDO::FETCH_ASSOC);

        if (!$books){
            throw new NotFoundException('Books not found');
        }

        return $books;
    }

    public function findAdmin($id)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare(
            'SELECT * FROM book WHERE id = :number');
        $sth->execute(array(
            'number' => $id
        ));

        $books = $sth->fetch(PDO::FETCH_ASSOC);

        if (!$books){
            throw new NotFoundException("Book №{$id} not found");
        }

        return $books;
    }

    public function findAllAdmin()
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->query(
            'SELECT b.id, b.title, b.price, b.status, GROUP_CONCAT(a.name ORDER BY a.name SEPARATOR\', \') AS \'author\' 
             FROM book b JOIN book_author ba ON b.id = ba.book_id JOIN author a ON a.id = ba.author_id 
             GROUP BY b.id');
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

    public function update(array $book)
    {
        //TODO; check if array has keys  'title', 'price', 'etc'.

        $db = DbConnection::getInstance()->getPdo();
        $sql = 'UPDATE book SET 
                title = :title, 
                price = :price, 
                description = :description, 
                style_id = :style_id, 
                status = :status
                WHERE id = :id';
        $s = $db->prepare($sql);
        $s->execute($book);
    }

    public function remove($id)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare(
            'DELETE FROM book WHERE id = :number');
        $sth->execute(array(
            'number' => $id
        ));
    }

    public function viewFeedback()
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->query(
            'SELECT * FROM feedback'
        );
        $feedback = $sth->fetchAll(PDO::FETCH_ASSOC);

        if (!$feedback){
            throw new NotFoundException('Feedback not found');
        }

        return $feedback;
    }
}