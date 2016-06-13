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
            }

            Session::setFlash('Fill the fields');
        }

        return $this->render('login', array('form' => $form));
    }

    public function logoutAction(Request $request)
    {
        Session::remove('user');
        Router::redirect('/');
    }

    public function registerAction(Request $request)
    {
        $form = new RegistrationForm($request);
        
        if ($request->isPost()){
            if ($form->isValid()){
                $model = new RegistrationModel();
                $password = new Password($form->password);

                $model->registration($form->email, $form->username, $password);
                Session::setFlash('Success');
                Router::redirect('/register');
                }

                Session::setFlash('Please fill in fields : Password is incorrect');
                Router::redirect('/register');

        }
        
        return $this->render('register', array('form' => $form));
    }
    
}