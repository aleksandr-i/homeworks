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
        MetaHelper::addTitle('Contact');

        if ($request->isPost()) {
            if ($form->isValid()) {
                $feedBackModel = new FeedBackModel();
                $dateTime = (new DateTime())->format('Y-m-d H:i:s');
                $ip_adress = $_SERVER['REMOTE_ADDR'];

                $feedBackModel->save(array(
                    'username' => $form->username,
                    'email' => $form->email,
                    'message' => $form->message,
                    'created' => $dateTime,
                    'ip_adress' => $ip_adress,
                ));
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