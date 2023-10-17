<?php
require_once './app/model/model-auth.php';
require_once './app/view/view-auth.php';
require_once './app/helpers/auth.helper.php';

class AuthControllerRegister
{
    private $view;
    private $model;

    function __construct()
    {
        $this->model = new UserModel();
        $this->view = new AuthView();
    }

    function showregister()
    {
        $this->view->showregister();
    }
    function register()
    {
        $userPost = $_POST['user'];
        $passwordPost = $_POST['password'];

        if (empty($userPost) || empty($passwordPost)) {
            $this->view->showregister('Faltan completar datos');
            return;
        }
        $hash = password_hash($passwordPost, PASSWORD_DEFAULT);

        // Verifica si el usuario ya existe en la base de datos
        $users = $this->model->repeatUser();

        foreach ($users as $user) {
            if ($userPost == $user->usuario) {
                $this->view->showregister('Este usuario ya existe');
                return;
            }
        }

        // Si llegas a este punto, el usuario no existe, entonces puedes insertarlo
        $this->model->insertUsers($userPost, $hash);
        header('Location: ' . BASE_URL. 'login');

    }

    
}
