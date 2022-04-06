<?php

namespace App\widgets;

use RedBeanPHP\R;
use Services\App;

class Language
{

    protected $tpl;
    protected $languages;
    protected $language;

    public function __construct()
    {
        $this->tpl = __DIR__ . '/lang_tpl.php';
        $this->run();
    }

    public function run()
    {
        $this->languages = App::$app->getProperty('languages');
        $this->language = App::$app->getProperty('language');
        echo $this->getHTML();
    }

    public static function getLanguages(): array
    {
        return R::getAssoc("SELECT code, title, base, id FROM language ORDER BY base DESC");
    }

    public static function getLanguage($languages)
    {
        $lang = App::$app->getProperty('lang');
        if ($lang && array_key_exists($lang, $languages)) {
            $key = $lang;
        } elseif (!$lang) {
            $key = key($languages);
        } else {
            $lang = htmlspecialchars($lang);
            throw new \Exception("Not found language {$lang}", 404);
        }
        
        $langInfomation = $languages[$key];
        $langInfomation['code'] = $key;
        return $langInfomation;
    }

    protected function getHTML(): string
    {
        ob_start();
        require $this->tpl;
        return ob_get_clean();
    }
}
