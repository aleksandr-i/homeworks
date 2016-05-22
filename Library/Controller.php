<?php

abstract class Controller
{
    protected function render($viewName, array $args = array())
    {
        extract($args);

        $tplDir = str_replace('Controller', '', get_class($this));
        $path = VIEW_DIR . $tplDir . DS . $viewName . '.phtml';

        if (!file_exists($path))
        {
            throw new Exception("{$path} not found", 500);
        }

        ob_start();
        require $path;
        return ob_get_clean();
    }

    public static function renderError($message, $code)
    {
        ob_start();
        require VIEW_DIR . 'error.phtml';
        return ob_get_clean();
    }
}