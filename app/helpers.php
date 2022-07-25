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



function getColor($num) {

}
