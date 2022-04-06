<?php

namespace Services;

class Language
{
    public static array $langData = [];
    public static array $langLayout = [];
    public static array $langView = [];

    public static function load($code, $route)
    {
        $langLayout = APP . "/languages/{$code}.php";
        $langView = APP . "/languages/{$code}/{$route['controller']}/{$route['action']}.php";
        if (file_exists($langLayout)) {
            self::$langLayout = require_once $langLayout;
        }
        if (file_exists($langView)) {
            self::$langView = require_once $langView;
        }

        self::$langData = array_merge(self::$langLayout, self::$langView);
    }

    public static function get($key)
    {
        return self::$langData[$key] ?? $key;
    }
}