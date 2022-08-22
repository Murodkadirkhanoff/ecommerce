<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;

class CustomController extends Controller
{
    public function create(Content $content)
    {
        // $data =
        return $content->view('admin.custom.reports.create');

    }
}
