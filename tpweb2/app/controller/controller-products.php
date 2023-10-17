<?php
require_once './app/model/model-products.php';
require_once './app/view/view-products.php';

class ProductsController
{
    private $model;
    private $view;

    function __construct()
    {
        $this->model = new ProductsModel();
        $this->view = new ProductsView();
    }
    function brandsShow($marca_filter = null, $product_filter = null, $id_filter = null)
{
    if (!empty($marca_filter)) {
        if (!empty($product_filter)) {
            // Mostrar producto segun el filtro
            $products = $this->model->getProduct($marca_filter, $product_filter);
            if (!empty($products)) {
                if (!empty($id_filter)) {
                    // Si $id_filter está presente, muestra el producto por ID
                    $id = $this->model->getIdFilter($id_filter);
                    if (!empty($id)) {
                        $tableBrands = $this->model->getTableBrands($marca_filter);
                        $this->view->showPreoductId($id,$tableBrands);
                    } else {
                        $this->view->showError("El ID no existe");
                    }
                } else {
                    // Si no hay $id_filter, muestra la lista de productos
                    $types = $this->model->getTypeProduct();
                    $this->view->showProducts($products, $marca_filter, $product_filter,$types);
                }
            } else {
                $this->view->showError("El producto no existe");
            }
        } else {
            // Mostrar todos los productos de una marca
            $marcas = $this->model->getProducts($marca_filter);
            if (!empty($marcas)) {
                $types = $this->model->getTypeProduct();
                $products_sinParams = $this->model->getProducts($marca_filter);
                $this->view->showBrand($marca_filter,$products_sinParams,$types);
            } else {
                $this->view->showError("La marca no existe");
            }
        }
    } else {
        // Mostrar lista de marcas
        $brands = $this->model->getBrands();
        $this->view->showBrands($brands);
    }
}
}
