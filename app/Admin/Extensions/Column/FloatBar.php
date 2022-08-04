<?php

namespace App\Admin\Extensions\Column;

use Encore\Admin\Admin;
use Encore\Admin\Grid\Displayers\AbstractDisplayer;

class FloatBar extends AbstractDisplayer
{
    protected function script()
    {
        return <<<EOT
$('.grid-float-bar').closest('tr').mouseover(function () {
    $(this).find('.grid-float-bar').removeClass('hide');
});
$('.grid-float-bar').closest('tr').mouseout(function () {
    $(this).find('.grid-float-bar').addClass('hide');
});
EOT;

    }

    public function display()
    {
        Admin::script($this->script());
        $id = $this->row->id;
        return <<<EOT
<div style="width:220px;">
    <div class="hide grid-float-bar">
        <a href="/post_to_telegram/$id" class="btn btn-default"><i class="fa fa-telegram"></i></a>
    </div>
</div>
EOT;
    }
}
