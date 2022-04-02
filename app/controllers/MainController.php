<?php

namespace App\Controllers;

use Services\Controller;
use RedBeanPHP\R;

class MainController extends Controller
{
    public function indexAction()
    {

        $names = $this->model->getNames();
        R::getRow('SELECT * FROM name WHERE id = 2');
        $this->setMeta('Главная страница', 'Description...', 'кeywords...');
        $this->set(compact('names'));
    }
}
