<?php

class AuthHelper {
    
    public static function init() {
        if (session_status() != PHP_SESSION_ACTIVE) {
            session_start();
        }
    }

    public static function login($user) {
        AuthHelper::init();
        $_SESSION['USER_ID'] = $user->id;
        $_SESSION['USER_EMAIL'] = $user->usuario; 
    }

    public static function logout() {
        AuthHelper::init();
        session_destroy();
    }

    public static function verify() {
        AuthHelper::init();
        if (!isset($_SESSION['USER_ID'])) {
            header('Location: ' . BASE_URL . 'login');
            die();
        }
    }
    public static function verifyAdmin() {
        AuthHelper::init();
        

    
        if (!isset($_SESSION['USER_ID'])) {
            // El usuario no está autenticado, redirige a la página de inicio de sesión
            header('Location: ' . BASE_URL . 'login');
            die();
        }
    
        // Verifica si el usuario actual es "webadmin" (ajusta esto según tu sistema)
        if ($_SESSION['USER_ID'] !== 11) {
            // El usuario no es el administrador, redirige a una página de acceso denegado
            header('Location: ' . BASE_URL . 'product');
            die();
        }
    }
    
}