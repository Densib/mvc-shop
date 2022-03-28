<?php

define("DEBUG", 1);
define("ROOT", dirname(__DIR__));
define("WWW", ROOT . '/public');
define("APP", ROOT . '/app');
define("CORE", ROOT . '/services');
define("HELPERS", ROOT . '/services/helpers');
define("CACHE", ROOT . '/tmp/cache');
define("LOGS", ROOT . '/tmp/logs');
define("CONFIG", ROOT . '/config');
define("LAYOUT", 'eshop');
define("PATH", 'http://mvc-shop');
define("ADMIN", 'http://mvc-shop/admin');
define("NO_IMAGE", ROOT . '/uploads/no_image.jpg');

require_once ROOT . '/vendor/autoload.php';
