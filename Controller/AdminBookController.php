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

    public function editAction(Request $request)
    {
        if (!Session::has('user')){
            Router::redirect('/login');
        }

        $id = $request->get('id');
        $form = new BookForm($request);
        $model = new BookModel();
        $styleModel = new StyleModel();
        $styles = $styleModel->findAll();
        $book = $model->findAdmin($id);

        if ($request->isPost()){
            if ($form->isValid()){
                $model->update(array(
                    'id' => $id,
                    'title' => $form->title,
                    'price' => $form->price,
                    'description' => $form->description,
                    'style_id' => $form->style,
                    'status' => 1, // ON
                ));

                Session::setFlash('Saved');
                Router::redirect('/admin/books');
            }

            Session::setFlash('Fill the fields');

        } else {
            $form->setFromArray($book);
        }

        $args = array(
            'form' => $form,
            'styles' => $styles,
            'book' => $book,
        );

        return $this->render('edit', $args);



    }
    
}