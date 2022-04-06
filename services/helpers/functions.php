<?php

function debug($data, $die = false)
{
    echo '<pre>' . print_r($data , 1) . '</pre>';
    if ($die) {
        die;
    }
}

function redirect($http = null)
{
    if ($http) {
        $redirect = $http;
    } else {
        $redirect = $_SERVER['HTTP_REFERER'] ?: PATH;
    }
    header("Location: $redirect");
    die;
}

function baseUrl()
{
    return PATH . '/' . (Services\App::$app->getProperty('lang') ? Services\App::$app->getProperty('lang') . '/' : '');
}
    