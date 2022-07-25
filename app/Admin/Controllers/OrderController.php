<?php

namespace App\Admin\Controllers;

use App\Admin\Actions\Post\Replicate;

use App\Helpers\Status;
use App\Models\Attachment;
use App\Models\Order;
use App\Models\Product;
use App\Models\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Widgets\Box;
use Illuminate\Support\Facades\DB;

class OrderController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Заказы';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Order());


        $grid->selector(function (Grid\Tools\Selector $selector) {
            $selector->select('status', 'Статус', [
                1 => getStatusText(1),
                2 => getStatusText(2),
                3 => getStatusText(3),
                4 => getStatusText(4),
                5 => getStatusText(5),
            ]);
        });

        $grid->header(function ($query) {

//            $gender = $query->select(DB::raw('SUM(total) as sum, status'))
//                ->groupBy('status')->get()->pluck('sum', 'status')->toArray();

            $gender = $query->selectRaw('monthname(created_at) month, created_at, SUM(total) sum')
                ->groupBy('month', 'created_at')
                ->orderBy('created_at')
                ->get()->pluck('sum','month')->toArray();


            $doughnut = view('admin.chart.gender', compact('gender'));

            return new Box('Статистика', $doughnut);
        });


        $grid->column('id', __('Id'));
        $grid->column('total', __('Итог'))->sortable();
        $grid->column('subtotal', __('Подитог'))->sortable();
        $grid->column('customer', 'Заказчик')->display(function () {
            return $this->customer->name;
        });

        $grid->column('status', 'Статус')->using([
            1 => getStatusText(1),
            2 => getStatusText(2),
            3 => getStatusText(3),
            4 => getStatusText(4),
            5 => getStatusText(5),
        ], 'Unknown')->dot([
            1 => 'warning',
            2 => 'info',
            3 => 'primary',
            4 => 'success',
            5 => 'danger',
        ], 'warning')->sortable()->filter([
            1 => getStatusText(1),
            2 => getStatusText(2),
            3 => getStatusText(3),
            4 => getStatusText(4),
            5 => getStatusText(5),
        ]);


        $grid->column('payment_type', 'Тип оплаты')->display(function () {
            return getPaymentTypeText($this->payment_type);
        })->filter([
            'cash' => getPaymentTypeText('cash'),
            'payme' => getPaymentTypeText('payme'),
            'click' => getPaymentTypeText('click')
        ]);

        $grid->column('delivery_type', 'Тип доставки')->display(function () {
            return getDeliveryText($this->delivery_type);
        })->filter([
            'pickup' => getDeliveryText('pickup'),
            'regular_delivery' => getDeliveryText('regular_delivery'),
            'fast_delivery' => getDeliveryText('fast_delivery')
        ]);

        $grid->column('created_at', __('Дата создание'))->sortable();

        $grid->actions(function ($actions) {
            $actions->disableDelete();
            $actions->disableEdit();
            $actions->add(new Replicate());
        });

        $grid->disableCreateButton();
        $grid->disableExport();


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
        $show = new Show(Order::findOrFail($id));

        $show->panel()
            ->tools(function ($tools) {
                $tools->disableEdit();
                $tools->disableList();
                $tools->disableDelete();
            });;

        $show->field('id', __('ID'));
        $show->field('total', __('Итог'));
        $show->field('subtotal', __('Промежуточный итог'));

        $show->status()->using(['1' => getStatusText(1), '2' => getStatusText(2), '3' => getStatusText(3), '4' => getStatusText(4), '5' => getStatusText(5)]);
        $show->payment_type('Тип оплаты')->using(['cash' => getPaymentTypeText('cash'), 'click' => getPaymentTypeText('click'), 'payme' => getPaymentTypeText('payme')]);
        $show->delivery_type('Тип доставки')->using(['pickup' => getDeliveryText('pickup'), 'regular_delivery' => getDeliveryText('regular_delivery'), 'fast_delivery' => getDeliveryText('fast_delivery')]);


        $show->customer('Информация для покупателя', function ($author) {
            $author->panel()
                ->tools(function ($tools) {
                    $tools->disableEdit();
                    $tools->disableList();
                    $tools->disableDelete();
                });;
            $author->surname('Фамилия');
            $author->name('Имя');
            $author->email('Email');
            $author->phone_number('Номер телефона');
        });


        $show->field('created_at', __('Дата создание'));


        $show->products('Товары', function ($products) {

            $products->name();
            $products->column('Фото')->display(function ($userId) {
                $image = env('MEDIA_URL') . $this->pivot->product_image;
                return "<img src='$image' width='50' height='50'>";
            });
            $products->column('Цена')->display(function ($userId) {
                return $this->pivot->product_price;
            });

            $products->column('Количество')->display(function ($userId) {
                return $this->pivot->quantity;
            });


            $products->disableActions();
            $products->disableCreateButton();
            $products->disableExport();
            $products->disableFilter();
            $products->disableRowSelector();
            $products->disablePagination();


            $products->column('Итог')->display(function ($userId) {
                return $this->pivot->total;
            });


        });

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Order());

        $form->number('total', __('Total'));
        $form->number('subtotal', __('Subtotal'));
        $form->number('customer_id', __('Customer id'));
        $form->number('status', __('Status'));
        $form->text('payment_type', __('Payment type'));
        $form->text('delivery_type', __('Delivery type'));


        return $form;
    }
}
