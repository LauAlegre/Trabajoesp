<?php
class DatesViewMarcas{
    public function showDates($dates,$id_modificar = null){


        require './templates/datesTableMarcas.phtml';
    }
    public function showError($error) {
        require 'templates/error.phtml';
    }
}