<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Telegram\Bot\Api;
use Telegram\Bot\FileUpload\InputFile;
use Telegram\Bot\Laravel\Facades\Telegram;

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


Route::get('test', function () {

    $product = \App\Models\Product::find(116);
    $photo = env('REMOTE_MEDIA_URL') . $product->attachments()->first()->file;
    $tags = '';
    foreach (getTagsAsArray($product->tags) as $tag) {
        $tags .= "#$tag ";
    }

    if ($product->is_discount == 1) {
        $price = "\n\n\xE2\x9C\x85 В Скидке\n\xF0\x9F\x92\xB5	<s>Цена: <b>" . currencyFormat($product->price) . " UZS</b></s>\n\xF0\x9F\x92\xB0 Цена со скидкой: <b>" . currencyFormat($product->discount_price) . " UZS</b>";
    } else {
        $price = "\n\n\xF0\x9F\x92\xB5 Цена: <b>" . currencyFormat($product->price) . " UZS</b>";
    }

    $response = Telegram::sendPhoto([
        'chat_id' => '-1001571577155',
        'photo' => new InputFile($photo),
        'caption' => "$tags\n\n \xF0\x9F\x92\xBB Наименование: <b>$product->name</b> $price\n\n\xE2\x9C\x85 В наличии: <b>$product->in_stock</b>\n\n\xF0\x9F\x8C\x90Просмотр на сайте: <a href=\"https://itechno.uz/products/$product->id\">Перейти</a>",
        'parse_mode' => 'html'

    ]);

//
//    $response = Telegram::sendMessage([
//        'chat_id' => '-1001571577155',
//        'text' => 'Hello World'
//    ]);


    $messageId = $response->getMessageId();
    dd($messageId);
});


Route::get('post_to_telegram', function ($id) {
    sendTelegramMessage(\App\Models\Product::find($id));
});
