<?php
define('DS', DIRECTORY_SEPARATOR);
define('ROOT', __DIR__ . DS);
define('VIEW_DIR', ROOT . 'View' . DS);
define('LIB_DIR', ROOT . 'Library' . DS);
define('CONTROLLER_DIR', ROOT . 'Controller' . DS);
define('MODEL_DIR', ROOT . 'Model' . DS);
define('CONF_DIR', ROOT . 'Config' . DS);

function __autoload($className)
{
    $file = "{$className}.php";

    if (file_exists(LIB_DIR . $file))
    {
        require_once LIB_DIR . $file;
    }
    elseif (file_exists(CONTROLLER_DIR . $file))
    {
        require_once CONTROLLER_DIR . $file;
    }
    elseif (file_exists(MODEL_DIR . $file))
    {
        require_once MODEL_DIR . $file;
    }
    else
    {
        throw new Exception("{$file} not found", 500);
    }
}

try {
    Session::start();

    Config::setFromXML('db.xml');
    Config::setFromXML('main.xml');

    $request = new Request();
    $route = $request->get('route'); //$_GET ['route']

    if (is_null($route)) {
        $route = 'index/index';
    }

    $route = explode('/', $route);

    if ($route[0] == '' or $route[1] == ''){
        $route[0] = 'index';
        $route[1] = 'index';
    }

    $controller = ucfirst($route[0]) . 'Controller';
    $action = $route[1] . 'Action';

    $controller = new $controller();

    if (!method_exists($controller, $action)) {
        throw new Exception ("{$action} not found", 500);
    }

    $content = $controller->$action($request);

} catch (PDOException $e) {
    $content = Controller::renderError($e->getMessage(), $e->getCode());
} catch (NotFoundException $e) {
    // you can make it different
    $content = Controller::renderError($e->getMessage(), $e->getCode());
} catch (Exception $e) {
    $content = Controller::renderError($e->getMessage(), $e->getCode());
}

require VIEW_DIR . 'default_layout.phtml';

echo '<hr><pre>';
var_dump($controller, $action);
