<?php

class IndexController extends Controller
{
    public function indexAction(Request $request)
    {
        $args = array(
            'number' => 4324,
            'name' => 'Bob',
        );

        return $this->render('index', $args);
    }

    public function contactAction(Request $request)
    {
        $form = new ContactForm($request);

        if ($request->isPost()) {
            if ($form->isValid()) {
                Session::setFlash('Success');

                // todo: function redirect($to)
                Router::redirect('/index.php?route=index/contact');
            }

            Session::setFlash('Error');
        }

        $args = array(
            'form' => $form
        );

        return $this->render('contact', $args);
    }
}