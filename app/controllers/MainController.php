<?php

namespace App\Controllers;

use RedBeanPHP\R;
use Services\App;

class MainController extends AppController
{
    public function indexAction()
    {
        $lang = App::$app->getProperty('language');
        
        $slides = R::findAll('slider');

        $products = $this->model->getHits($lang , 6);

        $this->set(compact('slides', 'products'));

        $this-> setMeta('Главная старница', 'Описание', 'Ключевые слова');
    }
}
