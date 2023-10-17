<?php
require_once './app/helpers/auth.helper.php';
require_once 'config.php'; 
class UserModel
{
    private $db;

    function __construct()
    {
        $this->db = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASSWORD);
    }
    function insertUsers($user, $password){
        $query = $this->db->prepare('INSERT INTO usuarios (usuario, contrasena) VALUES (?, ?)');
        
        $query->execute([$user,$password]);

        return $query->fetch(PDO::FETCH_OBJ);
    }


    function repeatUser(){
        $query = $this->db->prepare('SELECT * FROM usuarios');
        $query->execute();
    
        return $query->fetchAll(PDO::FETCH_OBJ);
    }
    function getUser($user) {
        $query = $this->db->prepare('SELECT * FROM usuarios WHERE usuario = ?');
        $query->execute([$user]);

        return $query->fetch(PDO::FETCH_OBJ);
    }

    function getAdmin(){
        $userAdmin = 'webadmin';
        $query = $this->db->prepare('SELECT * FROM usuarios WHERE usuario = ?');
        $query->execute([$userAdmin]);

        return $query->fetch(PDO::FETCH_OBJ);
    }

}
