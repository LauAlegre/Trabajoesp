<?php
require_once './app/controller/controller-products.php';
require_once './app/controller/controller-datesProduct.php';
require_once './app/controller/controller-datesMarcas.php';
require_once './app/controller/controller-register.php';
require_once './app/controller/controller-login.php';
require_once './app/controller/controller-about.php';

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

$action = 'product'; // Acción por defecto
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

// Parsea la acción para separar la acción real de los parámetros
$params = explode('/', $action);

switch ($params[0]) {

    case 'product':
        $controller = new ProductsController;
        if (isset($params[1])) {
            $param1 = $params[1];
            $param2 = isset($params[2]) ? $params[2] : null;
            $param3 = isset($params[3]) ? $params[3] : null;
            $controller->brandsShow($param1, $param2, $param3); // 
        } else {
            $controller->brandsShow();
        }
        break;
    case 'datosMarcas':
        $controller = new DatesControllerMarcas;
        $controller->showDates();
        break;
    case 'datosProductos':
        $controller = new DatesControllerProdcucts;
        $controller->showDates();
        break;
    case 'eliminar-marca':
        $controller = new DatesControllerMarcas;
        $controller->removeBrands($params[1]);
        break;
    case 'eliminar-producto':
        $controller = new DatesControllerProdcucts;
        $controller->removeProduct($params[1]);
        break;
    case 'agregar-marca':
        $controller = new DatesControllerMarcas;
        $controller->addBrands();
        break;
    case 'agregar-producto':
        $controller = new DatesControllerProdcucts;
        $controller->addProducts();
        break;
    case 'udapte-producto':
        $controller = new DatesControllerProdcucts;
        $controller->udapteProduct($params[1]);
        break;
    case 'modificar-producto':
        $controller = new DatesControllerProdcucts;
        $controller->editProduct($params[1]);
        break;

    case 'modificar-marca':
        $controller = new DatesControllerMarcas;
        $controller->editBrands($params[1]);
        break;
    case 'udapte-marca':
        $controller = new DatesControllerMarcas;
        $controller->udapteBrands($params[1]);
        break;
    case 'register':
        $controller = new AuthControllerRegister;
        $controller->showregister();
        break;
    case 'register-auth':
        $controller = new AuthControllerRegister;
        $controller->register();
        break;
    case 'login':
        $controller = new AuthControllerLogin;
        $controller->showLogin();
        break;
    case 'login-auth':
        $controller = new AuthControllerLogin;
        $controller->login();
        break;
    case 'logout':
        $controller = new AuthControllerLogin();
        $controller->logout();
        break;
    case 'about':
        $controller = new AboutController();
        $controller->showAbout();
        break;
    default:
        echo "404 Page Not Found";
        break;
}
