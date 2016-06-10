<?php

class SecurityController extends Controller
{
    public function loginAction(Request $request)
    {
        $form = new LoginForm($request);

        if ($request->isPost()){
            if ($form->isValid()){
                $model = new UserModel();
                $password = new Password($form->password);
                
                if ($user = $model->find($form->email, $password)){
                    Session::set('user', $user['email']);
                    Router::redirect('/admin');
                }
                
                Session::setFlash('User not found');
                Router::redirect('/login');
            } else{
                Session::setFlash('Fill the fields');
            }
        }

        return $this->render('login', array('form' => $form));
    }

    public function logoutAction(Request $request)
    {
        Session::remove('user');
        Router::redirect('/');
    }

    public function testAction(Request $request)
    {
        if (!Session::has('user')){
            Router::redirect('/');
        }

        echo 'secure';
    }

    public function registerAction(Request $request)
    {
        return $this->render('register');
    }
}