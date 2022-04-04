<?php

namespace App\Controllers;

use RedBeanPHP\R;

class MainController extends AppController
{
    public function indexAction()
    {
        $slides = R::findAll('slider');

        $products = $this->model->getHits(1 , 6);

        $this->set(compact('slides', 'products'));
    }
}
