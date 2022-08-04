<?php

function getPromotionTypeText($type)
{
    if ($type == 'others') {
        return 'Другое';
    } elseif ($type == 'to_product') {
        return 'Акция на товары';
    } elseif ($type == 'to_service') {
        return 'Акция на сервисы';
    }
}


function getPhoto($product)
{
    if ($product->attachments()->first() != null) {
        return $product->attachments()->first()->file;
    }
    return 'default.png';

}


function getStatusText($status)
{
    if ($status == \App\Helpers\Status::CREATED) {
        return 'Создано';
    } elseif ($status == \App\Helpers\Status::ACCEPTED) {
        return 'Принято';
    } elseif ($status == \App\Helpers\Status::ON_DELIVERY) {
        return 'В доставке';
    } elseif ($status == \App\Helpers\Status::COMPLETED) {
        return 'Завершенный';
    } elseif ($status == \App\Helpers\Status::CANCELLED) {
        return 'Отменено';
    }
}


function getDeliveryText($status)
{
    if ($status == 'pickup') {
        return 'Самовывоз со склада';
    } elseif ($status == 'regular_delivery') {
        return 'Обычная доставка';
    } elseif ($status == 'fast_delivery') {
        return 'Быстрая доставка';
    }
}


function getPaymentTypeText($text)
{
    if ($text == 'payme') {
        return 'Payme';
    } elseif ($text == 'click') {
        return 'Click';
    } elseif ($text == 'cash') {
        return 'Наличный';
    }
}

function get_percentage($total, $number)
{
    if ($total > 0) {
        return round($total / $number * 100, 2);
    } else {
        return 0;
    }
}


function getAvatar()
{
    return env('MEDIA_URL') . \Illuminate\Support\Facades\Auth::user()->avatar;
}

function getRegularDeliveryCost()
{
    return \App\Models\Setting::first()->regular_delivery_cost;
}

function getFastDeliveryCost()
{
    return \App\Models\Setting::first()->fast_delivery_cost;
}

function getSystemPhone()
{
    return \App\Models\Setting::first()->phone_number;
}

function getSystemLogo()
{
    return env('MEDIA_URL') . \App\Models\Setting::first()->logo;
}

function getSiteName()
{
    return \App\Models\Setting::first()->website_name;
}

function getSlogan()
{
    return \App\Models\Setting::first()->slogan;
}


function getColor($num)
{

}


function currencyFormat($money)
{
    return number_format($money, 0);
}

function getTagsAsArray($tags)
{
    return explode(',', $tags);
}

function sendTelegramMessage($product)
{
    $photo = env('REMOTE_MEDIA_URL') . getPhoto($product);
    $tags = '';


    if (!empty($product->tags)) {
        foreach (getTagsAsArray($product->tags) as $tag) {
            $tags .= "#$tag ";
        }
    }

    if (!empty($tags)) {
        $tags .= "\n";
    }

    if ($product->is_discount == 1) {
        $price = "\n\n\xE2\x9C\x85 В Скидке\n\xF0\x9F\x92\xB5	<s>Цена: <b>" . currencyFormat($product->price) . " UZS</b></s>\n\xF0\x9F\x92\xB0 Цена со скидкой: <b>" . currencyFormat($product->discount_price) . " UZS</b>";
    } else {
        $price = "\n\n\xF0\x9F\x92\xB5 Цена: <b>" . currencyFormat($product->price) . " UZS</b>";
    }

    $response = \Telegram\Bot\Laravel\Facades\Telegram::sendPhoto([
        'chat_id' => '-1001571577155',
        'photo' => new \Telegram\Bot\FileUpload\InputFile($photo),
        'caption' => "$tags\xF0\x9F\x92\xBB Наименование: <b>$product->name</b> $price\n\n\xE2\x9C\x85 В наличии: <b>$product->in_stock</b>\n\n\xF0\x9F\x8C\x90Просмотр на сайте: <a href=\"https://itechno.uz/products/$product->id\">Перейти</a>",
        'parse_mode' => 'html'

    ]);

}
