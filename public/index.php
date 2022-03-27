<?php

if (PHP_MAJOR_VERSION < 8) {
    die('Необходима версия PHP >= 8');
}

require_once dirname(__DIR__) . '/config/init.php';

new \Services\App();

//\Services\App::$app->setProperty('test', 'TEST');
var_dump(\Services\App::$app->getProperties());
//echo \Services\App::$app->getProperty('pagination');