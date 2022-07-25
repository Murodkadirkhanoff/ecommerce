<?php

namespace App\Admin\Controllers;

use App\Models\Setting;
use Encore\Admin\Actions\Action;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SettingController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Setting';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Setting());
        $grid->disableCreateButton();
        $grid->disableExport();
        $grid->actions(function ($actions) {
            $actions->disableDelete();
        });

        $grid->column('id', __('Id'));
        $grid->column('logo', __('Логотип'))->image(env('MEDIA_URL'), 150, 150);
        $grid->column('slogan', __('Лозунг'));
        $grid->column('phone_number', __('Phone number'));
        $grid->column('website_name', __('Website name'));
        $grid->column('regular_delivery_cost', __('Regular delivery cost'));
        $grid->column('fast_delivery_cost', __('Fast delivery cost'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show = new Show(Setting::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('phone_number', __('Phone number'));
        $show->field('website_name', __('Website name'));
        $show->field('regular_delivery_cost', __('Regular delivery cost'));
        $show->field('fast_delivery_cost', __('Fast delivery cost'));
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
        $form = new Form(new Setting());
        $form->image('logo', __('Логотип'))->default('default.png');
        $form->text('slogan', __('Лозунг'));
        $form->text('phone_number', __('Phone number'));
        $form->text('website_name', __('Website name'));
        $form->decimal('regular_delivery_cost', __('Regular delivery cost'));
        $form->decimal('fast_delivery_cost', __('Fast delivery cost'));

        return $form;
    }
}
