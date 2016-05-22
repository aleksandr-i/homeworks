<?php

class BookModel
{
    public function find($id)
    {
        $books = array(
            array(
                'id' => 1,
                'title' => 'Dracula',
                'author' => 'Stoker',
                'price' => 666
            ),

            array(
                'id' => 2,
                'title' => 'Dream catcher',
                'author' => 'King',
                'price' => 777
            ),

            array(
                'id' => 3,
                'title' => 'Flowers',
                'author' => 'Someone',
                'price' => 234
            ),
        );

        foreach ($books as $book){
            if ($book['id'] == $id){
                return $book;
            }
        }

        throw new Exception('Book not found', 404);
    }

    public function findAll()
    {
        return array(
            array(
                'id' => 1,
                'title' => 'Dracula',
                'author' => 'Stoker',
                'price' => 666
            ),

            array(
                'id' => 2,
                'title' => 'Dream catcher',
                'author' => 'King',
                'price' => 777
            ),

            array(
                'id' => 3,
                'title' => 'Flowers',
                'author' => 'Someone',
                'price' => 234
            ),
        );
    }
}