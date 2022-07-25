<?php

namespace App\Admin\Controllers;

use App\Models\Product;
use App\Models\Promotion;
use App\Models\Service;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Str;

class PromotionController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Promotion';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Promotion());

        $grid->column('id', __('Id'));
        $grid->column('image', 'Фото')->display(function ($image) {
            return env('MEDIA_URL') . $image;
        })->image(100, 100);
        $grid->column('title', __('Загаловок'));
        $grid->column('start', __('Дата начало акции'));
        $grid->column('end', __('Дата окончания акции'));

        $status = [
            'on' => ['value' => 0, 'text' => 'OFF', 'color' => 'danger'],
            'off' => ['value' => 1, 'text' => 'ON', 'color' => 'success'],
        ];
        $grid->column('status', 'Статус')->switch($status)->filter([
            0 => 'OFF',
            1 => 'ON'
        ]);
        $grid->column('created_at', __('Дата создание'));
        $grid->column('products', 'Товары в акции')
            ->belongsToMany(\App\Admin\Selectable\Product::class);
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
        $show = new Show(Promotion::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('image', __('Image'));
        $show->field('title', __('Title'));
        $show->field('start', __('Start'));
        $show->field('end', __('End'));
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
        $form = new Form(new Promotion());

        $form->image('image', __('Баннер'));
        $form->text('title', __('Загаловок'));
        $form->ckeditor('body', 'Описания');
        $form->datetime('start', __('Дата начало акции'))->default(date('Y-m-d H:i:s'));
        $form->datetime('end', __('Дата окончания акции'))->default(date('Y-m-d H:i:s'));

        $form->select('promotion_type', 'Тип акции')->options(['to_product' => 'На товар', 'to_service' => 'На услугу', 'others' => 'Другое'])->default('others')
            ->when('to_product', function (Form $form) {
                $form->divider();
                $form->currency('promotion_value', __('Процент акции'))->default(100);
                $form->belongsToMany('products', \App\Admin\Selectable\Product::class, __('Товары'));

            })->when('cash', function (Form $form) {

            })->when('to_service', function (Form $form) {
                $form->divider();
                $form->currency('promotion_value', __('Процент акции'))->default(100);
                $form->belongsToMany('services', \App\Admin\Selectable\Service::class, __('Сервисы'));
            });

        $status = [
            'on' => ['value' => 1, 'text' => 'On', 'color' => 'success'],
            'off' => ['value' => 0, 'text' => 'Off', 'color' => 'danger'],
        ];
        $form->switch('status', 'Статус')->states($status)->default(1);
        $form->saving(function (Form $form) {

            if ($form->promotion_type == 'to_product') {
                foreach ($form->products as $product_id) {
                    $product = Product::find($product_id);
                    if ($product) {
                        $discount_price = $product->price - round($product->price * $form->promotion_value / 100, 0);
                        $product->update([
                            'is_discount' => 1,
                            'discount_from' => $form->start,
                            'discount_to' => $form->end,
                            'discount_price' => $discount_price
                        ]);
                    }
                }
            }elseif($form->promotion_type == 'to_service')
            {
                foreach ($form->services as $service_id) {
                    $service = Service::find($service_id);
                    if ($service) {
                        $discount_price = $service->price - round($service->price * $form->promotion_value / 100, 0);
                        $service->update([
                            'is_discount' => 1,
                            'discount_from' => $form->start,
                            'discount_to' => $form->end,
                            'discount_price' => $discount_price
                        ]);
                    }
                }
            }else{
                $form->promotion_value = 0;
            }

        });

        return $form;
    }
}
