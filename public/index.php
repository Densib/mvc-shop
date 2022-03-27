<?php

if (PHP_MAJOR_VERSION < 8) {
    die('Необходима версия PHP >= 8');
}

require_once dirname(__DIR__) . '/config/init.php';

new \Services\App();

//throw new Exception('Возникла ошибочка', 500);
//echo $rtyName;