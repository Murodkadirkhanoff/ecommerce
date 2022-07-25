<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::resource('products', \App\Http\Controllers\ProductController::class);
Route::resource('ratings', \App\Http\Controllers\RatingController::class);
Route::get('add-to-wishlist/{product_id}', [\App\Http\Controllers\WishlistController::class, 'addToWishlist'])->name('add.to.wishlist');
Route::post('login', [\App\Http\Controllers\OtpController::class, 'login'])->name('login');
Route::post('logout', [\App\Http\Controllers\OtpController::class, 'logout'])->name('logout');
Route::get('add-to-cart/{product_id}', [\App\Http\Controllers\CartController::class, 'addToCart'])->name('add.to.cart');
Route::get('remove-cart-item/{product_id}', [\App\Http\Controllers\CartController::class, 'removeCartItem'])->name('remove.cart.item');
Route::get('shopping-cart', [\App\Http\Controllers\CartController::class, 'shoppingCart'])->name('shopping.cart');
Route::get('wishlist', [\App\Http\Controllers\WishlistController::class, 'index'])->name('wishlist');
Route::get('wishlist-destroy/{id}', [\App\Http\Controllers\WishlistController::class, 'destroy'])->name('wishlist.destroy');
Route::get('products/category/{category_slug}', [\App\Http\Controllers\ProductController::class, 'productsByCategory'])->name('products.by.category');
Route::resource('promotions', \App\Http\Controllers\PromotionController::class);
Route::resource('services', \App\Http\Controllers\ServiceController::class);
Route::resource('posts', \App\Http\Controllers\PostController::class);

Route::any('checkout', [\App\Http\Controllers\OrderController::class, 'checkout'])->middleware([])->name('checkout');



Route::prefix('profile')->middleware(['auth'])->group(function () {
    Route::get('/', [\App\Http\Controllers\ProfileController::class, 'index'])->name('profile');
    Route::get('orders', [\App\Http\Controllers\OrderController::class, 'orders'])->name('orders');
    Route::any('edit-profile', [\App\Http\Controllers\ProfileController::class, 'editProfile'])->name('edit.profile');
    Route::any('remove-avatar', [\App\Http\Controllers\ProfileController::class, 'removeAvatar'])->name('remove.avatar');
    Route::any('delete-profile', [\App\Http\Controllers\ProfileController::class, 'deleteProfile'])->name('delete.profile');
});
