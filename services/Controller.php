<?php

namespace Services;

abstract class Controller
{
    public array $data = [];
    public array $meta = [];
    public string $layout = '';
    public string $view = '';
    public object $model;

    public function __construct(public $route = [])
    {
    }

    public function getModel()
    {
        $model = 'App\Models\\' . $this->route['admin_prefix'] . $this->route['controller'];
        if (class_exists($model)) {
            $this->model = new $model();
        } else {
            throw new \Exception("НЕ удалось загрузить модель {$model}", 500);
        }
    }

    public function getView()
    {
        $this->view = $this->view ?: $this->route['action'];
        (new View($this->route, $this->layout, $this->view, $this->meta))->render($this->data);

    }

    public function set($data)
    {
        $this->data = $data;
    }

    public function setMeta($title = '', $description = '', $keywords = '')
    {
        $this->meta = [
            'title' => $title, 'description' => $description, 'keywords' => $keywords
        ];
    }
}