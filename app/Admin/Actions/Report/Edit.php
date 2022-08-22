<?php

namespace App\Admin\Actions\Report;

use Encore\Admin\Actions\RowAction;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;


class Edit extends RowAction
{
    public $name = 'edit';

    public function handle(Model $model, Request $request)
    {

        if ($model->is_completed != 1)
        {
         return redirect()->route('admin.reports.edit', $model->id);
        }
        return $this->response()->success('Статус успешно обновлен')->refresh();
    }
}
