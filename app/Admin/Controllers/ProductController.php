<?php

namespace App\Admin\Controllers;

use App\Admin\Extensions\Tools\ReleasePost;
use App\Models\Attributes;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Option;
use App\Models\Product;
use App\Models\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ProductController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Продукты';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Product());


        $grid->id('id', __('Id'))->sortable();

        $grid->column('attachments', 'Фото')->display(function ($file) {
            if (isset($file[0])) {
                return env('MEDIA_URL') . $file[0]['file'];
            } else {
                return env('MEDIA_URL') . 'default.png';
            }

        })->image(100, 100);
        $grid->column('name', 'Наименование')->editable();;
        $grid->column('price', __('Цена'))->editable();
        $grid->column('category_id', 'Категория')->display(function () {
            return $this->category->name;
        });
        $grid->column('subcategory', 'Подкатегория')->display(function () {
            return $this->subcategory->name;
        });
        $grid->column('brand', 'Бренд')->display(function () {
            return $this->brand->name;
        });
        $grid->column('tags', __('Теги'));
        $grid->column('in_stock', __('В наличии'))->editable();
        $grid->column('is_discount', __('В скидке'))->bool();
        $status = [
            'on' => ['value' => 0, 'text' => 'OFF', 'color' => 'danger'],
            'off' => ['value' => 1, 'text' => 'ON', 'color' => 'success'],
        ];
        $grid->column('Опубликовать')->floatBar();


        $grid->column('status', 'Статус')->switch($status)->filter([
            0 => 'OFF',
            1 => 'ON'
        ]);
        $grid->column('created_at', __('Created at'));

        $grid->filter(function ($filter) {

            $filter->like('name', 'Наименование');


            $filter->where(function ($query) {
                $query->whereHas('category', function ($query) {
                    $query->where('name', 'like', "%{$this->input}%");
                });
            }, 'Категория');

            $filter->where(function ($query) {
                $query->whereHas('subcategory', function ($query) {
                    $query->where('name', 'like', "%{$this->input}%");
                });
            }, 'Подкатегория');
        });


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
        $show = new Show(Product::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('category_id', __('Category id'));
        $show->field('subcategory_id', __('Subcategory id'));
        $show->field('brand_id', __('Brand id'));
        $show->field('name', __('Name'));

        $show->field('status', __('Status'));
        $show->field('tags', __('Tags'));
        $show->field('price', __('Price'));
        $show->field('in_stock', __('In stock'));
        $show->field('is_discount', __('Is discount'));
        $show->field('discount_from', __('Discount from'));
        $show->field('discount_to', __('Discount to'));
        $show->field('discount_price', __('Discount price'));
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

        $form = new Form(new Product());

        $form->tab('Основная информация', function ($form) {

            //$form->divider('Основная информация');
            $form->html('<div style="margin-bottom: 30px;"></div>');


            $status = [
                'on' => ['value' => 1, 'text' => 'On', 'color' => 'success'],
                'off' => ['value' => 0, 'text' => 'Off', 'color' => 'danger'],
            ];
            $form->text('name', __('Название'))->required();
            $form->select('category_id', 'Категория')->options(Category::whereNull('parent_id')->get()->pluck('name', 'id'))->load('subcategory_id', '/api/get-subcategories')->required();
            $form->select('subcategory_id', 'Подкатегория')->options(function ($id) {
                if (Category::where('id', $id)->exists()) {
                    return Category::find($id)->pluck('name', 'id');
                }
            })->required();

            $form->select('brand_id', 'Бренды')->options(Brand::all()->pluck('name', 'id'))->required();
            $form->multipleImage('attachments', 'Фото')->pathColumn('file')->removable()->sortable();
            $form->tags('tags', __('Теги'));
            $form->switch('status', 'Статус')->states($status)->default(1);

            $form->currency('price', 'Цена');
            $form->decimal('in_stock', 'В наличии')->default(0);
            $form->ckeditor('description', 'Описания');

            $form->divider('Скидка');
            $form->html('<div style="margin-bottom: 30px;"></div>');

            $form->radioButton('is_discount', 'Скидка')
                ->options([
                    0 => 'Нет скидки',
                    1 => 'Скидка',
                ])
                ->when(1, function (Form $form) {
                    $form->datetimeRange('discount_from', 'discount_to', 'Период скидки');

                    $form->currency('discount_price', 'Цена в скидке');
                });


            $states = [
                'on' => ['value' => 1, 'text' => 'Да', 'color' => 'success'],
                'off' => ['value' => 0, 'text' => 'Нет', 'color' => 'danger'],
            ];

            $form->switch('telegram', 'Опубликовать в Telegram')->states($states)->default(1);


        })->tab('Дополнительное', function ($form) {

            $form->divider('Опции');
            $form->html('<div style="margin-bottom: 30px;"></div>');


            $form->hasMany('options', 'Опции', function (Form\NestedForm $form) {
                $form->select('option_id', 'Опция')->options(Option::all()->pluck('name', 'id'))->required();
                $form->text('value', 'Значение')->required();
            });
//            $form->radioButton('type', 'Тип')
//                ->options([
//                    0 => 'Простой',
//                    1 => 'Атрибут',
//                ])->when(0, function (Form $form) {
//                    $form->currency('price', 'Цена');
//                    $form->decimal('in_stock', 'В наличии')->default(0);
//                    $form->ckeditor('description', 'Описания');
//
//                })->when(1, function (Form $form) {
//                    $form->hasMany('options', 'Опции', function (Form\NestedForm $form) {
//                        $form->select('attribute_id', 'Опция')->options(Attributes::all()->pluck('name', 'id'))->required();
//                        $form->text('value', 'Значение');
//                        $form->multipleImage('images', 'Фото')->sortable();
//                        // $form->image('image', 'Фото');
//                        $form->currency('price', 'Цена');
//                        $form->decimal('in_stock', 'В наличии')->default(0);
//                        $form->ckeditor('description', 'Описания');
//
//                    });
//                })->default(0)->required();


        });


        $form->saving(function (Form $form) {
            if ($form->telegram == "on") {
                sendTelegramMessage(Product::find($form->model()->id));
            }
        });

        return $form;
    }
}
