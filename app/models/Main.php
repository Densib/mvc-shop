<?php

namespace App\Models;

use Services\Model;
use RedBeanPHP\R;

class Main extends Model
{

    public function getNames(): array
    {
        return R::findAll('name');
    }
}