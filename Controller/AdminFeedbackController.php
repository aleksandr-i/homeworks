<?php

class AdminFeedbackController extends Controller
{
    public function indexAction(Request $request)
    {
        if (!Session::has('user')){
            Router::redirect('/login');
        }

        $bookModel = new BookModel();
        $feedback = $bookModel->viewFeedback();

        $args = array(
            'feedback' => $feedback,
        );

        return $this->render('index', $args);
    }
}