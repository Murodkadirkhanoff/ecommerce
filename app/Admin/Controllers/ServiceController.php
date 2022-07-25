<?php

namespace App\Admin\Controllers;

use App\Models\Service;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ServiceController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Service';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Service());

        $grid->column('id', __('Id'));
        $grid->column('title', __('Заголовок'));

        $grid->column('image', 'Фото')->display(function ($image) {
            return env('MEDIA_URL') . $image;
        })->image(100, 100);
        $grid->column('is_discount', __('В скидке'))->bool();
        $grid->column('price', __('Цена'));

        $status = [
            'on' => ['value' => 0, 'text' => 'OFF', 'color' => 'danger'],
            'off' => ['value' => 1, 'text' => 'ON', 'color' => 'success'],
        ];
        $grid->column('status', 'Статус')->switch($status)->filter([
            0 => 'OFF',
            1 => 'ON'
        ]);
        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Service::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Заголовок'));
        $show->field('body', __('Описание'));
        $show->field('image', __('Фото'));
        $show->field('deadline', __('Срок'));
        $show->field('price', __('Цена'));
        $show->field('price', __('Цена'));

        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Service());

        $form->text('title', __('Заголовок'))->required();
        $form->ckeditor('body', __('Описание'))->required();
        $form->image('image', __('Фото'));
        $form->text('deadline', __('Срок'));
        $form->decimal('price', __('Цена'));
        $form->radioButton('is_discount', 'Скидка')
            ->options([
                0 => 'Нет скидки',
                1 => 'Скидка',
            ])
            ->when(1, function (Form $form) {
                $form->datetimeRange('discount_from', 'discount_to', 'Период скидки');

                $form->currency('discount_price', 'Цена в скидке');
            });

        $status = [
            'on' => ['value' => 1, 'text' => 'On', 'color' => 'success'],
            'off' => ['value' => 0, 'text' => 'Off', 'color' => 'danger'],
        ];
        $form->switch('status', 'Статус')->states($status)->default(1);

        return $form;
    }
}
