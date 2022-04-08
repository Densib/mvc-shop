<?php

namespace App\widgets;

use Services\App;
use Services\Cache;
use RedBeanPHP\R;

class Menu
{
    protected array $data;
    protected array $tree;
    protected string $menuHtml;
    protected string $tpl;
    protected array $language;
    protected string $cacheKey = 'shop_menu';
    protected int $cacheTime = 3600;

    protected string $container = 'ul';
    protected string $prepend = '';
    protected string $class = 'menu';
    protected array $attrs = [];


    public function __construct($options = [])
    {
        $this->language = App::$app->getProperty('language');
        $this->tpl = __DIR__ . '/menu_tpl.php';
        $this->setOption($options);
        $this->run();
    }

    public function setOption($options)
    {
        foreach ($options as $key => $value) {
            if (property_exists($this, $key)) {
                $this->$key = $value;
            }
        }
    }

    public function run()
    {
        $cache = Cache::getInstance();
        $this->menuHtml = $cache->get("{$this->cacheKey}_{$this->language['code']}");

        if (!$this->menuHtml) {
            $this->data = R::getAssoc("SELECT c.*, cd.* FROM category c
                                       JOIN category_description cd
                                       ON c.id = cd.category_id
                                       WHERE cd.language_id = ?", [$this->language['id']]);
            $this->tree = $this->getTree();
            $this->menuHtml = $this->getMenuHtml($this->tree);
            if ($this->cacheTime) {
                $cache->set("{$this->cacheKey}_{$this->language['code']}", $this->menuHtml, $this->cacheTime);
            }
        }

        $this->output();
    }

    protected function output()
    {
        $attrs = '';
        if (!empty($this->attrs)) {
            foreach ($this->attrs as $kay => $value) {
                $attrs .= " {$kay}=\"{$value}\" ";
            }
        }
        echo "<{$this->container} class=\"{$this->class}\" $attrs>";
        echo $this->prepend;
        echo $this->menuHtml;
        echo "</{$this->container}>";
    }


    public function getTree()
    {
        $tree = [];
        $data = $this->data;
        foreach ($data as $id => &$node) {
            if (!$node['parent_id']) {
                $tree[$id] = &$node;
            } else {
                $data[$node['parent_id']]['children'][$id] = &$node;
            }
        }
        return $tree;
    }

    public function getMenuHtml($tree, $tab = '')
    {
        $str = '';
        foreach ($tree as $id => $category) {
            $str .= $this->catToTemplate($category, $tab, $id);
        }
        return $str;
    }

    protected function catToTemplate($category, $tab, $id)
    {
        ob_start();
        require $this->tpl;
        return ob_get_clean();
    }
}
