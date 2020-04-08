<?php

namespace App\Admin\Controllers;

use App\Cate;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CateController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Cate';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Cate());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('link', __('Link'));
        $grid->column('thumb', __('Thumb'));
        $grid->column('status', __('Status'));
        $grid->column('sort', __('Sort'));
        $grid->column('createtime', __('Createtime'));
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
        $show = new Show(Cate::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('link', __('Link'));
        $show->field('thumb', __('Thumb'));
        $show->field('status', __('Status'));
        $show->field('sort', __('Sort'));
        $show->field('createtime', __('Createtime'));
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
        $form = new Form(new Cate());

        $form->text('name', __('Name'));
        $form->url('link', __('Link'));
        $form->text('thumb', __('Thumb'));
        $form->switch('status', __('Status'));
        $form->number('sort', __('Sort'));
        $form->datetime('createtime', __('Createtime'))->default(date('Y-m-d H:i:s'));

        return $form;
    }
}
