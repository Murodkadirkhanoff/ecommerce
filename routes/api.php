<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('get-subcategories', function (Request $request) {
    $category_id = $request->get('q');

    return \App\Models\Category::where('parent_id', $category_id)->get(['id', \Illuminate\Support\Facades\DB::raw('name as text')]);
});


Route::get('test', function (){
   foreach (\App\Models\Category::get() as $cat)
   {
       $cat->slug = \Illuminate\Support\Str::slug($cat->name);
       $cat->save();
   }
});
