<?php

class AuthView {
    public function showLogin($error = null) {
        require './templates/login.phtml';
    }

    function showregister($error = null){
        require './templates/register.phtml';
    }
}