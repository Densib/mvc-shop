<?php

namespace App\Controllers;

use Services\Controller;

class MainController extends Controller
{
    public function indexAction()
    {
        $names = ['Денис', 'Марина', 'Андрей'];
        $this->setMeta('Главная страница', 'Description...', 'кeywords...');
        //$this->set(['test' => 'TEST_VAR', 'name' => 'Jone']);
        $this->set(compact('names'));
    }
}
