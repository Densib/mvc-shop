<?php

namespace Services;

trait TSingleton
{
    private static ?self $instance = null;

    private function __construct()
    {
    }

    public static function getInstance(): static
    {
        if (static::$instance == null) {
            static::$instance = new static();
        }
        return static::$instance;
    }
}
