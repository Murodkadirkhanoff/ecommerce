<?php

use Encore\Admin\Admin;
use Encore\Admin\Grid\Column;

/**
 * Laravel-admin - admin builder based on Laravel.
 * @author z-song <https://github.com/z-song>
 *
 * Bootstraper for Admin.
 *
 * Here you can remove builtin form field:
 * Encore\Admin\Form::forget(['map', 'editor']);
 *
 * Or extend custom form field:
 * Encore\Admin\Form::extend('php', PHPEditor::class);
 *
 * Or require js and css assets:
 * Admin::css('/packages/prettydocs/css/styles.css');
 * Admin::js('/packages/prettydocs/js/main.js');
 *
 */
Column::extend('floatBar', \App\Admin\Extensions\Column\FloatBar::class);
Encore\Admin\Form::forget(['map', 'editor']);
Admin::js('/assets/js/chart.js');
Admin::js('/assets/js/custom-chart.js');
Admin::js('https://www.chartjs.org/samples/2.9.4/utils.js');
