<div class="box grid-box">

    <div class="box-header with-border">
        <div class="pull-right">
            <div class="dropdown pull-right column-selector">
                <button type="button" class="btn btn-sm btn-instagram dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-table"></i>
                    &nbsp;
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu">
                    <li>
                        <ul>

                            <li class="checkbox icheck">
                                <label>
                                    <div class="icheckbox_minimal-blue checked" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="column-select-item" value="id" checked="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>&nbsp;&nbsp;&nbsp;Id
                                </label>
                            </li>

                            <li class="checkbox icheck">
                                <label>
                                    <div class="icheckbox_minimal-blue checked" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="column-select-item" value="name" checked="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>&nbsp;&nbsp;&nbsp;Название
                                </label>
                            </li>

                            <li class="checkbox icheck">
                                <label>
                                    <div class="icheckbox_minimal-blue checked" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="column-select-item" value="image" checked="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>&nbsp;&nbsp;&nbsp;Фото
                                </label>
                            </li>

                            <li class="checkbox icheck">
                                <label>
                                    <div class="icheckbox_minimal-blue checked" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="column-select-item" value="parent_id" checked="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>&nbsp;&nbsp;&nbsp;Родительская категория
                                </label>
                            </li>

                            <li class="checkbox icheck">
                                <label>
                                    <div class="icheckbox_minimal-blue checked" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="column-select-item" value="type" checked="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>&nbsp;&nbsp;&nbsp;Type
                                </label>
                            </li>

                            <li class="checkbox icheck">
                                <label>
                                    <div class="icheckbox_minimal-blue checked" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="column-select-item" value="status" checked="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>&nbsp;&nbsp;&nbsp;Статус
                                </label>
                            </li>

                            <li class="checkbox icheck">
                                <label>
                                    <div class="icheckbox_minimal-blue checked" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="column-select-item" value="created_at" checked="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>&nbsp;&nbsp;&nbsp;Created at
                                </label>
                            </li>
                        </ul>
                    </li>
                    <li class="divider">
                    </li><li class="text-right">
                        <button class="btn btn-sm btn-default column-select-all">Все</button>&nbsp;&nbsp;
                        <button class="btn btn-sm btn-primary column-select-submit">Отправить</button>
                    </li>
                </ul>
            </div>

            <div class="btn-group pull-right" style="margin-right: 10px">
                <a href="http://ecom.loc/admin/categories?_export_=all" target="_blank" class="btn btn-sm btn-twitter" title="Экспорт"><i class="fa fa-download"></i><span class="hidden-xs"> Экспорт</span></a>
                <button type="button" class="btn btn-sm btn-twitter dropdown-toggle" data-toggle="dropdown">
                    <span class="caret"></span>
                    <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="http://ecom.loc/admin/categories?_export_=all" target="_blank">Все</a></li>
                    <li><a href="http://ecom.loc/admin/categories?_export_=page%3A1" target="_blank">Текущая страница</a></li>
                    <li><a href="http://ecom.loc/admin/categories?_export_=selected%3A__rows__" target="_blank" class="export-selected">Выбранные строки</a></li>
                </ul>
            </div>

            <div class="btn-group pull-right grid-create-btn" style="margin-right: 10px">
                <a href="http://ecom.loc/admin/categories/create" class="btn btn-sm btn-success" title="Добавить">
                    <i class="fa fa-plus"></i><span class="hidden-xs">&nbsp;&nbsp;Добавить</span>
                </a>
            </div>

        </div>
        <div class="pull-left">
            <div class="btn-group grid-select-all-btn" style="display:none;margin-right: 5px;">
                <a class="btn btn-sm btn-default hidden-xs"><span class="selected"></span></a>
                <button type="button" class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown">
                    <span class="caret"></span>
                    <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="#" class="grid-batch-0">Пакетное удаление </a></li>
                </ul>
            </div> <div class="btn-group" style="margin-right: 5px" data-toggle="buttons">
                <label class="btn btn-sm btn-dropbox 62f9db9214945-filter-btn " title="Фильтр">
                    <input type="checkbox"><i class="fa fa-filter"></i><span class="hidden-xs">&nbsp;&nbsp;Фильтр</span>
                </label>

            </div>
        </div>
    </div>

    <div class="box-header with-border hide filter-box" id="filter-box">
        <form action="http://ecom.loc/admin/categories" class="form-horizontal" pjax-container="" method="get">

            <div class="row">
                <div class="col-md-12">
                    <div class="box-body">
                        <div class="fields-group">
                            <div class="form-group">
                                <label class="col-sm-2 control-label"> ID</label>
                                <div class="col-sm-8">
                                    <div class="input-group input-group-sm">
                                        <div class="input-group-addon">
                                            <i class="fa fa-pencil"></i>
                                        </div>

                                        <input type="text" class="form-control id" placeholder="ID" name="id" value="">
                                    </div>    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.box-body -->

            <div class="box-footer">
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <div class="btn-group pull-left">
                                <button class="btn btn-info submit btn-sm"><i class="fa fa-search"></i>&nbsp;&nbsp;Поиск</button>
                            </div>
                            <div class="btn-group pull-left " style="margin-left: 10px;">
                                <a href="http://ecom.loc/admin/categories" class="btn btn-default btn-sm"><i class="fa fa-undo"></i>&nbsp;&nbsp;Сбросить</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </form>
    </div>




    <!-- /.box-header -->
    <div class="box-body table-responsive no-padding">
        <table class="table table-hover grid-table" id="grid-table62f9db92091c3">
            <thead>
            <tr>
                <th class="column-__row_selector__"> <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-select-all" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>&nbsp;</th>
                <th class="column-id">Id</th>
                <th class="column-name">Название<a class="fa fa-fw fa-sort" href="http://ecom.loc/admin/categories?_sort%5Bcolumn%5D=name&amp;_sort%5Btype%5D=desc"></a></th>
                <th class="column-image">Фото</th>
                <th class="column-parent_id">Родительская категория</th>
                <th class="column-type">Type<a class="fa fa-fw fa-sort" href="http://ecom.loc/admin/categories?_sort%5Bcolumn%5D=type&amp;_sort%5Btype%5D=desc"></a></th>
                <th class="column-status">Статус<span class="dropdown">
<form action="http://ecom.loc/admin/categories" pjax-container="" style="display: inline-block;">
    <a href="javascript:void(0);" class="dropdown-toggle " data-toggle="dropdown">
        <i class="fa fa-filter"></i>
    </a>
    <ul class="dropdown-menu" role="menu" style="padding: 10px;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);left: -70px;border-radius: 0;">

        <li>
            <ul style="padding: 0;">
            <li class="checkbox icheck" style="margin: 0;">
                <label style="width: 100%;padding: 3px;">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="column-filter-all-62f9db920a91b" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>&nbsp;&nbsp;&nbsp;Все
                </label>
            </li>
                <li class="divider">
                </li><li class="checkbox icheck" style="margin: 0;">
    <label style="width: 100%;padding: 3px;">
        <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="column-filter-item-62f9db920a91c" name="status[]" value="0" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>&nbsp;&nbsp;&nbsp;OFF
    </label>
</li>
<li class="checkbox icheck" style="margin: 0;">
    <label style="width: 100%;padding: 3px;">
        <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="column-filter-item-62f9db920a91c" name="status[]" value="1" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>&nbsp;&nbsp;&nbsp;ON
    </label>
</li>
            </ul>
        </li>
        <li class="divider">
        </li><li class="text-right">
            <button class="btn btn-sm btn-flat btn-primary pull-left" data-loading-text="Поиск..."><i class="fa fa-search"></i>&nbsp;&nbsp;Поиск</button>
            <span><a href="http://ecom.loc/admin/categories" class="btn btn-sm btn-flat btn-default"><i class="fa fa-undo"></i></a></span>
        </li>
    </ul>
</form>
</span></th>
                <th class="column-created_at">Created at</th>
                <th class="column-__actions__">Опции</th>
            </tr>
            </thead>


            <tbody>


            <tr data-key="297">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="297" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    297
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="297" data-url="http://ecom.loc/admin/categories/297" data-value="Ноутбуки и аксессуары">Ноутбуки и аксессуары</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/2093532.jpeg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">

                </td>
                <td class="column-type">
                    <span class="label-success" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Категория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="297"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:36:59.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/297/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/297">Показать</a></li>
                            <li><a data-_key="297" href="javascript:void(0);" class="grid-row-action-62f9db9211b401410">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="298">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="298" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    298
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="298" data-url="http://ecom.loc/admin/categories/298" data-value="Ноутбуки">Ноутбуки</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/b086d21d461c7b4c1e2f5da029180e16.jpeg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">
                    Ноутбуки и аксессуары
                </td>
                <td class="column-type">
                    <span class="label-warning" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Подкатегория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="298"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:37:44.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/298/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/298">Показать</a></li>
                            <li><a data-_key="298" href="javascript:void(0);" class="grid-row-action-62f9db9211e0f7943">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="299">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="299" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    299
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="299" data-url="http://ecom.loc/admin/categories/299" data-value="Макбук">Макбук</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/2021-11-14_14-42-30-846x450.jpg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">
                    Ноутбуки и аксессуары
                </td>
                <td class="column-type">
                    <span class="label-warning" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Подкатегория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="299"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:39:26.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/299/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/299">Показать</a></li>
                            <li><a data-_key="299" href="javascript:void(0);" class="grid-row-action-62f9db92120242128">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="300">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="300" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    300
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="300" data-url="http://ecom.loc/admin/categories/300" data-value="Ультрабуки">Ультрабуки</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/Legkie-i-tonkie-luchshie-noutbuki-dlya-teh-kto-postoyanno-v-puti-lyogkiy-ultrabuk.jpg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">
                    Ноутбуки и аксессуары
                </td>
                <td class="column-type">
                    <span class="label-warning" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Подкатегория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="300"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:41:13.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/300/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/300">Показать</a></li>
                            <li><a data-_key="300" href="javascript:void(0);" class="grid-row-action-62f9db92122315073">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="301">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="301" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    301
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="301" data-url="http://ecom.loc/admin/categories/301" data-value="Мониторы и аксессуары">Мониторы и аксессуары</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/262364509.jpg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">

                </td>
                <td class="column-type">
                    <span class="label-success" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Категория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="301"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:44:22.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/301/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/301">Показать</a></li>
                            <li><a data-_key="301" href="javascript:void(0);" class="grid-row-action-62f9db92124369713">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="302">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="302" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    302
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="302" data-url="http://ecom.loc/admin/categories/302" data-value="Мониторы">Мониторы</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/Samsung_CH890.jpg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">
                    Мониторы и аксессуары
                </td>
                <td class="column-type">
                    <span class="label-warning" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Подкатегория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="302"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:45:10.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/302/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/302">Показать</a></li>
                            <li><a data-_key="302" href="javascript:void(0);" class="grid-row-action-62f9db92126345265">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="303">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="303" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    303
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="303" data-url="http://ecom.loc/admin/categories/303" data-value="4K мониторы (Ultra HD)">4K мониторы (Ultra HD)</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/04nnqAOdI8XMfdFiEPCKxsm-1.webp" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">
                    Мониторы и аксессуары
                </td>
                <td class="column-type">
                    <span class="label-warning" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Подкатегория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="303"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:46:23.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/303/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/303">Показать</a></li>
                            <li><a data-_key="303" href="javascript:void(0);" class="grid-row-action-62f9db92128401399">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="304">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="304" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    304
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="304" data-url="http://ecom.loc/admin/categories/304" data-value="Аксессуары для мониторов">Аксессуары для мониторов</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/7d616fe4_ea17_11eb_8122_001e67d1aaeb_b4fd71a9_ea17_11eb_8122_001e67d1aaeb.jpg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">
                    Мониторы и аксессуары
                </td>
                <td class="column-type">
                    <span class="label-warning" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Подкатегория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="304"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:47:11.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/304/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/304">Показать</a></li>
                            <li><a data-_key="304" href="javascript:void(0);" class="grid-row-action-62f9db9212a402770">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="305">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="305" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    305
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="305" data-url="http://ecom.loc/admin/categories/305" data-value="Комплектующие для ПК">Комплектующие для ПК</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/6c8fcc3a5c9aa84ccc4bd7cf69b73476-798x358.jpg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">

                </td>
                <td class="column-type">
                    <span class="label-success" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Категория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="305"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:48:28.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/305/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/305">Показать</a></li>
                            <li><a data-_key="305" href="javascript:void(0);" class="grid-row-action-62f9db9212c354565">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="306">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="306" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    306
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="306" data-url="http://ecom.loc/admin/categories/306" data-value="Процессоры">Процессоры</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/intel-core-i9-x-series-skylake.jpg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">
                    Комплектующие для ПК
                </td>
                <td class="column-type">
                    <span class="label-warning" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Подкатегория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="306"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:49:47.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/306/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/306">Показать</a></li>
                            <li><a data-_key="306" href="javascript:void(0);" class="grid-row-action-62f9db9212e312274">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="307">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="307" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    307
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="307" data-url="http://ecom.loc/admin/categories/307" data-value="Оперативная память (RAM)">Оперативная память (RAM)</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/381-C01-Editing-primary.jpg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">
                    Комплектующие для ПК
                </td>
                <td class="column-type">
                    <span class="label-warning" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Подкатегория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="307"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:51:23.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/307/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/307">Показать</a></li>
                            <li><a data-_key="307" href="javascript:void(0);" class="grid-row-action-62f9db921301f5656">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="308">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="308" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    308
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="308" data-url="http://ecom.loc/admin/categories/308" data-value="Блоки питания">Блоки питания</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/998af74b066bce8f761e2d291433f706b391f7a7_original.jpeg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">
                    Комплектующие для ПК
                </td>
                <td class="column-type">
                    <span class="label-warning" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Подкатегория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="308"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:52:21.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/308/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/308">Показать</a></li>
                            <li><a data-_key="308" href="javascript:void(0);" class="grid-row-action-62f9db921320d2117">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="309">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="309" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    309
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="309" data-url="http://ecom.loc/admin/categories/309" data-value="Жесткие диски и SSD">Жесткие диски и SSD</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/iStock-1001703646.jpg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">

                </td>
                <td class="column-type">
                    <span class="label-success" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Категория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="309"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:54:42.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/309/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/309">Показать</a></li>
                            <li><a data-_key="309" href="javascript:void(0);" class="grid-row-action-62f9db92133f89339">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="310">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="310" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    310
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="310" data-url="http://ecom.loc/admin/categories/310" data-value="SSD накопители">SSD накопители</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/sm1.jpg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">
                    Жесткие диски и SSD
                </td>
                <td class="column-type">
                    <span class="label-warning" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Подкатегория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="310"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:55:56.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/310/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/310">Показать</a></li>
                            <li><a data-_key="310" href="javascript:void(0);" class="grid-row-action-62f9db92135c96800">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="311">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="311" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    311
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="311" data-url="http://ecom.loc/admin/categories/311" data-value="Жесткие диски SATA">Жесткие диски SATA</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/414713.jpg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">
                    Жесткие диски и SSD
                </td>
                <td class="column-type">
                    <span class="label-warning" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Подкатегория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="311"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:56:43.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/311/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/311">Показать</a></li>
                            <li><a data-_key="311" href="javascript:void(0);" class="grid-row-action-62f9db92137d67517">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="312">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="312" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    312
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="312" data-url="http://ecom.loc/admin/categories/312" data-value="Сетевое оборудование">Сетевое оборудование</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/01.jpg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">

                </td>
                <td class="column-type">
                    <span class="label-success" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Категория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="312"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:57:41.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/312/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/312">Показать</a></li>
                            <li><a data-_key="312" href="javascript:void(0);" class="grid-row-action-62f9db92139ad1764">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="313">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="313" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    313
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="313" data-url="http://ecom.loc/admin/categories/313" data-value="Wi-Fi роутеры / маршрутизаторы">Wi-Fi роутеры / маршрутизаторы</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/259298774.jpg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">
                    Сетевое оборудование
                </td>
                <td class="column-type">
                    <span class="label-warning" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Подкатегория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="313"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:58:37.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/313/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/313">Показать</a></li>
                            <li><a data-_key="313" href="javascript:void(0);" class="grid-row-action-62f9db9213b7e7397">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="314">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="314" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    314
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="314" data-url="http://ecom.loc/admin/categories/314" data-value="Репитеры">Репитеры</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/Mi-WiFi-Range-Extender-AC1200-01-300x300.webp" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">
                    Сетевое оборудование
                </td>
                <td class="column-type">
                    <span class="label-warning" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Подкатегория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="314"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T06:59:27.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/314/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/314">Показать</a></li>
                            <li><a data-_key="314" href="javascript:void(0);" class="grid-row-action-62f9db9213d4a5446">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="315">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="315" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    315
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="315" data-url="http://ecom.loc/admin/categories/315" data-value="Коммутаторы">Коммутаторы</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/tlsf5km5.png" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">
                    Сетевое оборудование
                </td>
                <td class="column-type">
                    <span class="label-warning" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Подкатегория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="315"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T07:00:26.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/315/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/315">Показать</a></li>
                            <li><a data-_key="315" href="javascript:void(0);" class="grid-row-action-62f9db9213f158930">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            <tr data-key="316">
                <td class="column-__row_selector__">
                    <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="grid-row-checkbox" data-id="316" autocomplete="off" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                </td>
                <td class="column-id">
                    316
                </td>
                <td class="column-name">
                    <a href="#" class="grid-editable-name editable editable-click" data-type="text" data-pk="316" data-url="http://ecom.loc/admin/categories/316" data-value="Системы охлаждения">Системы охлаждения</a>
                </td>
                <td class="column-image">
                    <img src="http://ecom.loc/admin_uploads/images/244419751.jpg" style="max-width:150px;max-height:150px" class="img img-thumbnail">
                </td>
                <td class="column-parent_id">

                </td>
                <td class="column-type">
                    <span class="label-success" style="width: 8px;height: 8px;padding: 0;border-radius: 50%;display: inline-block;"></span>&nbsp;&nbsp;Категория
                </td>
                <td class="column-status">
                    <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-mini bootstrap-switch-animate" style="width: 62px;"><div class="bootstrap-switch-container" style="width: 90px; margin-left: -30px;"><span class="bootstrap-switch-handle-on bootstrap-switch-danger" style="width: 30px;">OFF</span><span class="bootstrap-switch-label" style="width: 30px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-success" style="width: 30px;">ON</span><input type="checkbox" class="grid-switch-status" data-key="316"></div></div>
                </td>
                <td class="column-created_at">
                    2022-08-02T07:01:33.000000Z
                </td>
                <td class="column-__actions__">
                    <div class="grid-dropdown-actions dropdown">
                        <a href="#" style="padding: 0 10px;" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 70px !important;box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);border-radius:0;left: -65px;top: 5px;">

                            <li><a href="http://ecom.loc/admin/categories/316/edit">Редактировать</a></li>
                            <li><a href="http://ecom.loc/admin/categories/316">Показать</a></li>
                            <li><a data-_key="316" href="javascript:void(0);" class="grid-row-action-62f9db92140f78445">Удалить</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
            </tbody>



        </table>

    </div>



    <div class="box-footer clearfix">
        Записи с <b>1</b> по <b>20</b> из <b>26</b><ul class="pagination pagination-sm no-margin pull-right">
            <!-- Previous Page Link -->
            <li class="page-item disabled"><span class="page-link">«</span></li>

            <!-- Pagination Elements -->
            <!-- "Three Dots" Separator -->

            <!-- Array Of Links -->
            <li class="page-item active"><span class="page-link">1</span></li>
            <li class="page-item"><a class="page-link" href="http://ecom.loc/admin/categories?page=2">2</a></li>

            <!-- Next Page Link -->
            <li class="page-item"><a class="page-link" href="http://ecom.loc/admin/categories?page=2" rel="next">»</a></li>
        </ul>

        <label class="control-label pull-right" style="margin-right: 10px; font-weight: 100;">

            <small>Показать</small>&nbsp;
            <select class="input-sm grid-per-pager" name="per-page">
                <option value="http://ecom.loc/admin/categories?per_page=10">10</option>
                <option value="http://ecom.loc/admin/categories?per_page=20" selected="">20</option>
                <option value="http://ecom.loc/admin/categories?per_page=30">30</option>
                <option value="http://ecom.loc/admin/categories?per_page=50">50</option>
                <option value="http://ecom.loc/admin/categories?per_page=100">100</option>
            </select>
            &nbsp;<small>записей</small>
        </label>

    </div>
    <!-- /.box-body -->
</div>
