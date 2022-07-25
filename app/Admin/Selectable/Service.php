<?php

namespace App\Admin\Selectable;


use Encore\Admin\Grid\Filter;
use Encore\Admin\Grid\Selectable;

class Service extends Selectable
{
    public $model = \App\Models\Service::class;

    public function make()
    {
        $this->column('id', 'ID');
        $this->column('title', 'Название');
        $this->column('price','Цена');

        $this->filter(function (Filter $filter) {
            $filter->like('name');
        });
    }

    public static function display()
    {

        return function ($value) {

            // If `$value` is an array, it means it is used in the `collaborators` column, and the user’s name field separated by a semicolon `;` is displayed
            if (is_array($value)) {
                return implode(';', array_column($value,'title'));
            }

            // Otherwise it is used in the `author_id` column, which directly displays the user’s `name` field
            return optional($this->service)->title;
        };
    }
}
