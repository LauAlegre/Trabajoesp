<?php
class DatesViewProducts{
    public function showDates($dates,$modelMarca, $id_modificar = null){


        require './templates/datesTableProducts.phtml';
    }
    public function showError($error) {
        require 'templates/error.phtml';
    }
    
}