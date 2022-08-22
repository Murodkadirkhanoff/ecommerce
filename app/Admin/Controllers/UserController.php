<?php

namespace App\Admin\Controllers;

use App\Models\Region;
use App\Models\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Hash;
use Psy\Util\Str;

class UserController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Заказчики';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new User());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Ф.И.О'));
        $grid->column('phone_number', __('Номер телефона'));
        $grid->column('address', __('Адрес'));
        $grid->column('avatar', __('Аватар'));
        $grid->column('region_id', 'Город')->display(function () {
            return $this->region != null ? $this->region->name_oz : '';
        });
        $grid->column('created_at', __('Дата создание'));

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
        $show = new Show(User::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('email', __('Email'));
        $show->field('email_verified_at', __('Email verified at'));
        $show->field('password', __('Password'));
        $show->field('remember_token', __('Remember token'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));
        $show->field('phone_number', __('Phone number'));
        $show->field('surname', __('Surname'));
        $show->field('address', __('Address'));
        $show->field('avatar', __('Avatar'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new User());
        $form->text('name', __('Ф.И.О'));
        $form->text('phone_number', __('Номер телефона'));
        $form->select('region_id', 'Город')->options(Region::get()->pluck('name_oz', 'id'));
        $form->text('address', __('Адрес'));
        $form->image('avatar', __('Аватар'))->default('avatars/default.png');
        $form->hidden('password');
        $form->hidden('username');
        $form->saving(function (Form $form) {
            $form->password = Hash::make('G59d4XSnY0j2');
            $form->username = \Illuminate\Support\Str::slug($form->name);
        });

        return $form;
    }
}
