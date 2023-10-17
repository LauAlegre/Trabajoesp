<?php
require_once 'config.php'; 
class ProductsModel{
    private $db ;

    function __construct() {
        $this->db = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASSWORD);
    }
    function getProducts($marca){
        
        $querys = $this->db->prepare('SELECT productos.nombre_producto,product_id,tipo_de_product FROM productos INNER JOIN marcas ON productos.id_marca = marcas.id_marca WHERE marcas.marca = ?');
        $querys->execute([$marca]);
        $products = $querys->fetchAll(PDO::FETCH_OBJ);

        return $products;
    }

    function getBrands(){
        $querys = $this->db->prepare('SELECT DISTINCT marca FROM marcas');
        $querys->execute();
        $brands = $querys->fetchAll(PDO::FETCH_OBJ);

        return $brands;
    }
    function getProduct($marca,$product){
        
        $querys = $this->db->prepare('SELECT * FROM productos INNER JOIN marcas ON productos.id_marca = marcas.id_marca WHERE marcas.marca = ? AND tipo_de_product = ?' );
        $querys->execute([$marca,$product]);
        $products = $querys->fetchAll(PDO::FETCH_OBJ);

        return $products;
    }

    function getIdFilter($id){
        $querys = $this->db->prepare('SELECT nombre_producto, precio, descripcion_product FROM productos WHERE product_id = ?' );
        $querys->execute([$id]);
        $products = $querys->fetchAll(PDO::FETCH_OBJ);

        return $products;
    }
    function getTypeProduct(){
        $querys = $this->db->prepare('SELECT DISTINCT tipo_de_product FROM productos');
        $querys->execute();
        $brands = $querys->fetchAll(PDO::FETCH_OBJ);

        return $brands;
    }
    function getTableBrands($filter){
        $querys = $this->db->prepare('SELECT * FROM marcas WHERE marca = ?');
        $querys->execute([$filter]);
        $products = $querys->fetchAll(PDO::FETCH_OBJ);

        return $products;
    }
    
}