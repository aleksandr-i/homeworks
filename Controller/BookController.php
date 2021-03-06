<?php

class BookController extends Controller
{
    public function indexAction(Request $request)
    {
        $bookModel = new BookModel();
        $books = $bookModel->findAll();

        $args = array(
            'books' => $books,
        );

        return $this->render('index', $args);
    }

    public function showAction(Request $request)
    {
        $id = $request->get('id'); // $_GET['id]
        $bookModel = new BookModel();
        $book = $bookModel->find($id);

        MetaHelper::addTitle($book['title']);
        
        $args = array(
            'book' => $book,
        );

        return $this->render('show', $args);
    }
}