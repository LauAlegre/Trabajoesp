<?php
class ProductsView
{

    public function showBrands($marcas)
    {
        require './templates/marcas.phtml';
    }
    public function showBrand($marca_filter, $products_sinParams, $types)
    {

        require './templates/homeFilters.phtml';
    }
    public function showProducts($products, $marca_filter, $product_filter, $types)
    {
        require './templates/products.phtml';
    }

    public function showPreoductId($id, $brands)
    {
        require './templates/product_individual.phtml';
    }
    public function showError($error)
    {
        require 'templates/error.phtml';
    }
}
