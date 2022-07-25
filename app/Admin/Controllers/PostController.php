<?php

namespace App\Admin\Controllers;

use App\Models\Category;
use App\Models\Post;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PostController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Post';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Post());

        $grid->column('id', __('Id'));
        $grid->column('title', __('Title'));
        $grid->column('image')->image(env('MEDIA_URL'), 100, 100);
        $grid->column('category_id', 'Категория')->display(function () {
            return $this->category->name;
        });

        $grid->column('tags', __('Теги'));

        $status = [
            'on' => ['value' => 0, 'text' => 'OFF', 'color' => 'danger'],
            'off' => ['value' => 1, 'text' => 'ON', 'color' => 'success'],
        ];
        $grid->column('status', 'Статус')->switch($status)->filter([
            0 => 'OFF',
            1 => 'ON'
        ]);

        $grid->column('created_at', __('Created at'));

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
        $show = new Show(Post::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('body', __('Body'));
        $show->field('image', __('Image'));
        $show->field('tags', __('Tags'));
        $show->field('category_id', __('Category id'));
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
        $form = new Form(new Post());

        $form->text('title', __('Title'));
        $form->ckeditor('body', __('Body'));
        $form->image('image', __('Image'));
        $form->tags('tags', __('Теги'));
        $form->select('category_id', 'Категория')->options(Category::whereNull('parent_id')->get()->pluck('name', 'id'))->required();
        $status = [
            'on' => ['value' => 1, 'text' => 'On', 'color' => 'success'],
            'off' => ['value' => 0, 'text' => 'Off', 'color' => 'danger'],
        ];
        $form->switch('status', 'Статус')->states($status)->default(1);
        return $form;
    }
}
