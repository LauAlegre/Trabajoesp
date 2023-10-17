<?php
require_once './app/model/model-datesProducts.php';
require_once './app/view/view-datesProducts.php';

class DatesControllerProdcucts{
    private $model;
    private $view;
    private $modelMarcas;
    
    

    function __construct()
    {
        AuthHelper::verifyAdmin();
        $this->model = new DatesModelProducts();
        $this->view = new DatesViewProducts();
        $this->modelMarcas= new DatesModelMarcas();
    }

    function showDates(){
        $modelMarca = $this->modelMarcas->getDates();
        $date = $this->model->getDates();
        $this->view->showDates($date,$modelMarca);

    }
    function addProducts(){
        $name = $_POST["nombre"];
        $type = $_POST["tipo"];
        $description = $_POST["descripcion"];
        $cost = $_POST["precio"]; 
        $marca = $_POST["marca"]; 

        if(empty($name) && empty($type) && empty($description)&& empty($cost)&& empty($marca) ){
            $this->view->showError("Error debe completar lso campos");        
        }

        $id = $this->model-> insertProducts($name,$type, $description,$cost,$marca);
        if ($id) {
            header('Location: ' . BASE_URL.'datosProductos');
        } else {
            $this->view->showError("Error al insertar tarea");
        }
    }
    function removeProduct($id) {
        $this->model->deleteProduct($id);
        header('Location: ' . BASE_URL.'datosProductos');
    }
    function editProduct($id){
        $modelMarca = $this->modelMarcas->getDates();
        $date = $this->model->getDates();
        $this->view->showDates($date,$modelMarca,$id);
    }
    function udapteProduct($id){
        if($_POST){
            $name = $_POST["nombre"];
            $type = $_POST["tipo"];
            $description = $_POST["descripcion"];
            $cost = $_POST["precio"]; 

            if ((isset($name) && !empty($name)) && (isset($type) && !empty($type)) && (isset($description) && !empty($description))&& (isset($cost)&& !empty($cost))) {
                 $this->view->showError("Debe completar todos los campos");
                $modelMarca = $this->modelMarcas->getDates();
                $date = $this->model->getDates();

                $this->model->updateProduct($name,$type,$cost,$description,$id);
                
                header('Location: ' . BASE_URL . 'datosProductos');
            } else {
                $this->view->showError("No se pudo modificar");        

            }
        }
        
       
        
    }
    // function updateCancion($id){
    //     if ($_POST) {
    //         $titulo = $_POST['titulo'];
    //         $artista = $_POST['artista'];
    //         $duracion = $_POST['duracion'];

    //         if ((isset($titulo) && !empty($titulo)) && (isset($artista) && !empty($artista)) && (isset($duracion) && !empty($duracion))) {
    //             // $this->view->showError("Debe completar todos los campos");
    //             $this->model->updateCancion($id, $titulo, $artista, $duracion);
    //             header('Location: ' . BASE_URL . 'abmCancion');
    //         } else {
    //             echo "error";
    //         }
    //     }
    // }


}