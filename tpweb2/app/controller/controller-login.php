<?php
require_once './app/model/model-auth.php';
require_once './app/view/view-auth.php';
require_once './app/helpers/auth.helper.php';

class AuthControllerLogin
{
    private $view;
    private $model;

    function __construct()
    {
        $this->model = new UserModel();
        $this->view = new AuthView();
    }



    function showLogin()
    {
        $this->view->showLogin();
    }

    function login()
    {
        $userPost = $_POST['user'];
        $passwordPost = $_POST['password'];

        if (empty($userPost) || empty($passwordPost)) {
            $this->view->showregister('Faltan completar datos');
            return;
        }
        $userAdmin = $this->model->getAdmin();
        $user = $this->model->getUser($userPost);
        if ($userPost == $userAdmin->usuario && password_verify($passwordPost, $userAdmin->contrasena)) {

            AuthHelper::login($userAdmin);

            header('Location: ' . BASE_URL . 'datosMarcas');
        } else if ($user && password_verify($passwordPost, $user->contrasena)) {

            AuthHelper::login($user);

            header('Location: ' . BASE_URL);
        } else {
            $this->view->showLogin('Usuario inválido');
        }
    }
    public function logout()
    {
        AuthHelper::logout();
        header('Location: ' . BASE_URL . 'product');
    }
}
