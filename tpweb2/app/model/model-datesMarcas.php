<?php
require_once 'config.php'; 
class DatesModelMarcas{
    private $db ;

    function __construct() {
        $this->db = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASSWORD);
    }

    function getDates(){
        $querys = $this->db->prepare('SELECT * FROM marcas');
        $querys->execute();
        $dates = $querys->fetchAll(PDO::FETCH_OBJ);

        return $dates;
    }

    function insertBrands($brand, $campus, $description){
        $query = $this->db->prepare('INSERT INTO marcas (marca, descripcion, sede) VALUES(?,?,?)');
        $query->execute([$brand,$description, $campus]);

        return $this->db->lastInsertId();
    }
    function deleteBrands($id) {
        $query = $this->db->prepare('DELETE FROM marcas WHERE id_marca = ?');
        $query->execute([$id]);
    }
    function updatebrands($brand,$campus,$description,$id){
        $query = $this->db->prepare('UPDATE marcas SET  marca=?, descripcion=?, sede=? WHERE id_marca = ?');
        $query->execute([$brand,$description,$campus,$id]);
    }
}