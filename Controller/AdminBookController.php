<?php

class AdminBookController extends Controller
{
    public function indexAction(Request $request)
    {
        if (!Session::has('user')){
            Router::redirect('/login');
        }

        $bookModel = new BookModel();
        $books = $bookModel->findAllAdmin();

        $args = array(
            'books' => $books,
        );

        return $this->render('index', $args);
    }

    public function removeAction(Request $request)
    {
        if (!Session::has('user')){
            Router::redirect('/login');
        }

        $bookModel = new BookModel();
        $bookModel->remove($request->get('id'));

        Session::setFlash("Book {$request->get('id')} removed");
        Router::redirect('/admin/books');

    }
    
}