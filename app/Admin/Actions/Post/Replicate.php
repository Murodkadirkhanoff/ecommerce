<?php

namespace App\Admin\Actions\Post;

use Encore\Admin\Actions\RowAction;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;


class Replicate extends RowAction
{
    public $name = 'Изменить статус';

    public function handle(Model $model, Request $request)
    {
        $model->status = $request->get('status');
        $model->save();

        return $this->response()->success('Статус успешно обновлен')->refresh();
    }


    public function form()
    {
        $this->select('status', 'Статус')->options([
            1 => getStatusText(1),
            2 => getStatusText(2),
            3 => getStatusText(3),
            4 => getStatusText(4),
            5 => getStatusText(5),
        ])->default($this->row->status);
    }

}
