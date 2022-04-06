<?php

namespace App\Controllers;

use App\widgets\Language;
use Services\Controller;
use Services\App;
use App\Models\AppModel;

class AppController extends Controller
{
    
    public function __construct($route)
    {
        parent::__construct($route);

        new AppModel();

        App::$app->setProperty('languages', Language::getLanguages());
        App::$app->setProperty('language', Language::getLanguage(App::$app->getProperty('languages')));

        $lang = App::$app->getProperty('language');
        \Services\Language::load($lang['code'], $this->route); 
    }
}