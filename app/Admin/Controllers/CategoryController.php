<?php

namespace App\Admin\Controllers;

use App\Models\Category;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Str;

class CategoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Category';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Category());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Название'))->sortable()->editable();
        $grid->column('image', __('Фото'))->image(env('MEDIA_URL'), 150, 150);
        $grid->column('parent_id', __('Родительская категория'))->display(function () {
            return $this->parent->name ?? '';
        });

        $grid->column('type')->using([
            1 => 'Категория',
            2 => 'Подкатегория',

        ], 'Unknown')->dot([
            1 => 'success',
            2 => 'warning',
        ], 'warning')->sortable();

        $status = [
            'on' => ['value' => 0, 'text' => 'OFF', 'color' => 'danger'],
            'off' => ['value' => 1, 'text' => 'ON', 'color' => 'success'],
        ];
        $grid->column('status', 'Статус')->switch($status)->filter([
            0 => 'OFF',
            1 => 'ON'
        ]);
        $grid->column('created_at', __('Created at'));


//        $grid->column('type', __('Тип'))->display(function () {
//            return $this->type->name ?? '';
//        });
        //$grid->column('type')->label('danger');




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
        $show = new Show(Category::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Название'));
        $show->field('image', __('Фото'));
        $show->field('parent_id', __('Родительская категория'));

        $show->field('created_at', __('Created at'));


        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Category());

        $form->text('name', __('Название'));
        $form->image('image', __('Фото'))->default('default.png');

        $form->radioButton('type', 'Тип')
            ->options([
                1 => 'Категория',
                2 => 'Подкатегория',
            ])->when(1, function (Form $form) {

            })->when(2, function (Form $form) {
                $form->select('parent_id', 'Родительская категория')->options(Category::whereNull('parent_id')->get()->pluck('name', 'id'));
            })->default(1);

//        $form->submitted(function (Form $form) {
//            $form->ignore('type');
//        });
        $form->hidden('slug');

        $status = [
            'on' => ['value' => 1, 'text' => 'On', 'color' => 'success'],
            'off' => ['value' => 0, 'text' => 'Off', 'color' => 'danger'],
        ];
        $form->switch('status', 'Статус')->states($status)->default(1);
        $form->saving(function (Form $form) {

            $form->slug = Str::slug($form->name);

        });

        return $form;
    }
}
