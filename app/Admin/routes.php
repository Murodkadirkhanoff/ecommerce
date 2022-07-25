<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix' => config('admin.route.prefix'),
    'namespace' => config('admin.route.namespace'),
    'middleware' => config('admin.route.middleware'),
    'as' => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('brands', \App\Admin\Controllers\BrandController::class);
    $router->resource('categories', \App\Admin\Controllers\CategoryController::class);
    $router->resource('products', \App\Admin\Controllers\ProductController::class);
    $router->resource('promotions', \App\Admin\Controllers\PromotionController::class);
    $router->resource('services', \App\Admin\Controllers\ServiceController::class);
    $router->resource('banners', \App\Admin\Controllers\BannerController::class);
    $router->resource('posts', \App\Admin\Controllers\PostController::class);
    $router->resource('orders', \App\Admin\Controllers\OrderController::class);
    $router->resource('settings', \App\Admin\Controllers\SettingController::class);
});
