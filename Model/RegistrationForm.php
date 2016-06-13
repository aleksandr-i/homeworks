<?php

class RegistrationForm
{
    public $email;
    public $username;
    public $password;
    public $confirmPassword;
    
    
    public function __construct(Request $request)
    {
        $this->email = $request->post('email');
        $this->username = $request->post('username');
        $this->password = $request->post('password');
        $this->password = $request->post('confirmPassword');
    }

    public function passwordMatch()
    {
        $res = $this->password == $this->confirmPassword;
        return $res;
    }

    public function isValid()
    {
        $res = $this->email !== '' && $this->username !== '' && $this->password !== '' && $this->confirmPassword !== '';
        return $res;
    }


}