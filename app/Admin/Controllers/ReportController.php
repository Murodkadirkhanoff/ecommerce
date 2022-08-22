<?php

namespace App\Admin\Controllers;

use App\Admin\Actions\Report\Edit;
use App\Models\Category;
use App\Models\Product;
use App\Models\Report;
use App\Models\User;
use App\Models\Vendor;
use Encore\Admin\Actions\Action;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Widgets\Table;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\MessageBag;

class ReportController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Отчёты';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {


        $order_sources = [
            'olx' => 'OLX',
            'instagram' => 'Instagram',
            'telegram' => 'Telegram',
            'facebook' => 'Facebook',
            'youtube' => 'Youtube',
            'recommendation' => 'Рекомендация',
            'web_site' => 'Вебсайт',
        ];

        $grid = new Grid(new Report());

        $grid->actions(function (Grid\Displayers\Actions $actions) {
            $actions->disableView();
            if (!Admin::user()->isRole('administrator')) {
                $actions->disableDelete();
            }
        });

        $grid->filter(function ($filter) use ($order_sources) {
            $filter->disableIdFilter();


            $filter->column(1 / 2, function ($filter) {
                $filter->equal('is_completed', 'Статус')->radio([
                    '' => 'Все',
                    0 => 'Незавершённые',
                    1 => 'Завершённые',
                ]);
                $filter->between('created_at', 'Дата')->datetime();

                $filter->between('sale_cost', __('Стоимость реализации'));

                if (Admin::user()->isRole('administrator')) {
                    $filter->in('created_by', 'Продавец')->multipleSelect(DB::table('admin_users')->get()->pluck('name', 'id'));
                }
            });

            $filter->column(1 / 2, function ($filter) use ($order_sources) {
                $filter->in('product_id', 'Товар')->multipleSelect(DB::table('products')->get()->pluck('name', 'id'));
                $filter->in('customer_id', 'Заказчик')->multipleSelect(DB::table('users')->get()->pluck('name', 'id'));
                $filter->in('vendor_id', 'Постащик')->multipleSelect(DB::table('vendors')->get()->pluck('name', 'id'));
                $filter->in('order_source', 'Источник заказа')->multipleSelect($order_sources);
            });


        });


        if (Admin::user()->isRole('sales_manager')) {
            $grid->model()->where('created_by', Admin::user()->id);
        }


        $grid->column('id', __('ID'))->width(50);
        $grid->column('created_by', 'Продавец')->display(function () {
            return $this->owner->name ?? '';
        })->width(200);
        $grid->column('product_id', 'Продукт')->display(function () {
            return $this->product->name  ?? '';
        })->width(400);

        $grid->column('customer_id', 'Заказчик')->display(function () {
            return $this->customer->name  ?? '';
        })->width(200)->hide();

        $grid->column('vendor_id', 'Постащик')->display(function () {
            return $this->vendor->name  ?? '';
        })->width(200)->hide();


        $grid->column('quantity', __('Количество'))->width(100);
        $grid->column('unit', __('Ед. изм'));


        $grid->column('prime_cost', __('Себестоимость'))->display(function ($data) {

            return number_format($data, 0) . " UZS";

        })->width(200);

        $grid->column('sale_cost', __('Стоимость реализации'))->display(function ($data) {

            return number_format($data, 0) . " UZS";

        })->width(200)->totalRow(function ($amount) {

            return "<span class='text-danger text-bold'>" . currencyFormat($amount) . " UZS</span>";

        });

        $grid->column('other_costs', __('Прочие расходы'))->display(function ($data) {

            return number_format($data, 0) . " UZS";

        })->width(200);


        $grid->column('benefit', __('Выгода'))->display(function ($data) {

            return number_format($data, 0) . " UZS";

        })->width(200)->totalRow(function ($amount) {

            return "<span class='text-danger text-bold'>" . currencyFormat($amount) . " UZS</span>";

        });

        $grid->column('is_completed', __('Завершенный'))->bool();

        $grid->column('delivered_at', __('Дата доставки'))->hide();
        $grid->column('comment', __('Комментария'))->hide();
        $grid->column('order_source', __('Источник заказа'))->using($order_sources);
        $grid->column('created_at', __('Дата создание'))->hide();


        // $grid->column('benefit')->totalRow();

//        $grid->actions(function ($actions) {
//            $actions->disableDelete();
//            $actions->disableEdit();
//            $actions->add(new Edit());
//        });
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
        $show = new Show(Report::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('created_by', __('Created by'));
        $show->field('product_id', __('Product id'));
        $show->field('customer_id', __('Customer id'));
        $show->field('vendor_id', __('Vendor id'));
        $show->field('quantity', __('Quantity'));
        $show->field('unit', __('Unit'));
        $show->field('prime_cost', __('Prime cost'));
        $show->field('sale_cost', __('Sale cost'));
        $show->field('other_costs', __('Other costs'));
        $show->field('benefit', __('Benefit'));
        $show->field('delivered_at', __('Дата доставки'));
        $show->field('comment', __('Comment'));
        $show->field('order_source', __('Order source'));
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
        $form = new Form(new Report());


        if (Admin::user()->isRole('administrator')) {
            $form->select('created_by', 'Продавец')->options(DB::table('admin_users')->get()->pluck('name', 'id'))->required();
        } else {
            $form->hidden('created_by');
        }


        $form->hidden('total_sale_cost');
        $form->hidden('benefit');
        $form->select('product_id', 'Товар')->options(Product::get()->pluck('name', 'id'))->required();
        $form->select('customer_id', 'Заказчик')->options(User::get()->pluck('name', 'id'))->required();
        $form->select('vendor_id', 'Постащики')->options(Vendor::get()->pluck('name', 'id'))->required();
        $form->decimal('quantity', __('Количество'))->required();
        $form->select('unit', 'Ед. изм')->options(['Штук' => 'Штук', 'Метр' => 'Метр', 'Бухта' => 'Бухта'])->default('Штук')->required();
        $form->currency('prime_cost', __('Себестоимость'))->required();
        $form->currency('sale_cost', __('Стоимость реализации'))->required();
        $form->currency('other_costs', __('Прочие расходы'))->required();
        $form->datetime('delivered_at', __('Дата доставки'))->default(date('Y-m-d H:i:s'));
        $form->textarea('comment', __('Комментария'));


        $order_sources = [
            'olx' => 'OLX',
            'instagram' => 'Instagram',
            'telegram' => 'Telegram',
            'facebook' => 'Facebook',
            'youtube' => 'Youtube',
            'recommendation' => 'Рекомендация',
            'web_site' => 'Вебсайт',
        ];
        $form->select('order_source', __('Источник заказа'))->options($order_sources)->default('olx')->required();


        $is_completed = [
            'on' => ['value' => 1, 'text' => 'да', 'color' => 'success'],
            'off' => ['value' => 0, 'text' => 'нет', 'color' => 'danger'],
        ];

        $form->switch('is_completed', 'Завершен')->states($is_completed);

        $form->submitted(function (Form $form) {
            if (!Admin::user()->isRole('administrator')) {
                if ($form->model()->is_completed) {
                    $error = new MessageBag([
                        'title' => 'Внимание! Нет доступа',
                        'message' => 'Отчет закрыт',
                    ]);
                    return back()->with(compact('error'));
                }
            }
            return $form;
        });

        $form->saving(function (Form $form) {
            if (!Admin::user()->isRole('administrator')) {
                $form->created_by = Admin::user()->id;
            }

            $form->total_sale_cost = $form->sale_cost * $form->quantity;
            $form->benefit = (($form->sale_cost * $form->quantity) - ($form->prime_cost * $form->quantity)) - $form->other_costs;
        });

        return $form;
    }
}
