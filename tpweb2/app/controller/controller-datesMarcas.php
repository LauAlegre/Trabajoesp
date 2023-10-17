<?php
require_once './app/model/model-datesMarcas.php';
require_once './app/view/view-datesMarcas.php';

class DatesControllerMarcas{
    private $model;
    private $view;

    function __construct()
    {
        AuthHelper::verifyAdmin();
        $this->model = new DatesModelMarcas();
        $this->view = new DatesViewMarcas();
    }

    function showDates(){
        $date = $this->model->getDates();
        $this->view->showDates($date);

    }

    function addBrands(){
        $brand = $_POST["marca"];
        $campus = $_POST["sede"];
        $description = $_POST["descripcion"];

        if(empty($brand) && empty($campus) && empty($description) ){
            $this->view->showError("Error debe completar lso campos");
        }

        $id = $this->model-> insertBrands($brand,$campus, $description);
        if ($id) {
            
            header('Location: ' . BASE_URL.'datosMarcas');
        } else {
            $this->view->showError("Error al insertar la marca");
        }
    }
    function removeBrands($id) {
        $this->model->deleteBrands($id);
        header('Location: ' . BASE_URL.'datosMarcas');
    }
    function editBrands($id){
        
        $date = $this->model->getDates();
        $this->view->showDates($date,$id);
    }
    function udapteBrands($id){
        if($_POST){
            $brand = $_POST["marca"];
            $campus = $_POST["sede"];
            $description = $_POST["descripcion"];

            if ((isset($brand) && !empty($brand)) && (isset($campus) && !empty($campus)) && (isset($description) && !empty($description))) {
                 $this->view->showError("Debe completar todos los campos");
                

                $this->model->updateBrands($brand,$campus,$description,$id);
                
                header('Location: ' . BASE_URL . 'datosMarcas');
            } else {
                $this->view->showError("No se pudo modificar");
            }
        }
    }
}