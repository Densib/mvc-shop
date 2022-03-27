<?php

namespace Services;

class Registry
{
    use TSingleton;

    protected static array $properties = [];

    public function setProperty($name, $value)
    {
        self::$properties[$name] = $value;
    }

    public function getProperty($name)
    {
        return isset(self::$properties[$name]) ? self::$properties[$name] : null;
    }

    public function getProperties()
    {
        return self::$properties;
    }
}