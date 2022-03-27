<?php

namespace App\Controllers;

use Services\Controller;

class MainController extends Controller
{
    public function indexAction()
    {
        var_dump($this->model);
        echo __METHOD__;
    }
}