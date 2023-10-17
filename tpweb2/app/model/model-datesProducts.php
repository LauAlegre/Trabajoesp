<?php
require_once 'config.php'; 
class DatesModelProducts{
    private $db ;

    function __construct() {
        $this->db = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASSWORD);
    }

    function getDates(){
        $querys = $this->db->prepare('SELECT * FROM productos');
        $querys->execute();
        $dates = $querys->fetchAll(PDO::FETCH_OBJ);

        return $dates;
    }
    function insertProducts($name,$type, $description,$cost,$marca){
        $query = $this->db->prepare('INSERT INTO productos (nombre_producto, tipo_de_product, precio,descripcion_product,id_marca) VALUES(?,?,?,?,?)');
        $query->execute([$name,$type,$cost, $description,$marca]);

        return $this->db->lastInsertId();
    }
    function deleteproduct($id) {
        $query = $this->db->prepare('DELETE FROM productos WHERE product_id = ?');
        $query->execute([$id]);
    }
    function updateProduct($nameProduct,$typeProduct,$cost,$productDescription,$id){
        $query = $this->db->prepare('UPDATE productos SET  nombre_producto=?, tipo_de_product=?, precio=?,descripcion_product=? WHERE product_id = ?');
        $query->execute([$nameProduct,$typeProduct,$cost,$productDescription,$id]);
    }
}