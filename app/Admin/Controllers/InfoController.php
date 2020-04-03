<?php

namespace App\Admin\Controllers;

use App\Info;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class InfoController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Info';


    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Info());

        $grid->column('id', __('Id'));
        $grid->column('title', __('标题'));
        $grid->column('thumb', __('图片'));
        $grid->column('content', __('内容'));
        $grid->column('reading', __('阅读量'));
        $grid->column('sort', __('排序'));
        $grid->column('createtime', __('上传日期'))->display(function(){
            return date('Y-m-d H:i:s',time());
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

        $show = new Show(Info::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('标题'));
        $show->field('thumb', __('图片'));
        $show->field('content', __('内容'));
        $show->field('reading', __('阅读量'));
        $show->field('sort', __('排序'));
        $show->field('createtime', __('上传日期'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Info());
        $form->text('title', __('标题'));
        $form->file('thumb', __('图片'));
        $form->select('cate', __('文章分类'))->options(function(){
            return ['数据','无敌'];
        });
        $form->textarea('content',__('内容'))->rows(10);
        $form->number('reading', __('阅读量'));
        $form->number('sort', __('排序'));
        $form->datetime('createtime', __('上传日期'))->format('YYYY-MM-DD HH:mm:ss');

        return $form;
    }
}
