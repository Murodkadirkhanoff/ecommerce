<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CartController extends Controller
{
    public function addToCart($product_id)
    {
        $product = Product::find($product_id);
        $price = $product->is_discount ? $product->discount_price : $product->price;
        \Cart::add($product_id, $product->name, $price, 1, array());

        return redirect()->back();
    }

    public function shoppingCart()
    {
        return view('pages.shopping_cart');
    }

    public function removeCartItem($product_id)
    {
        \Cart::remove($product_id);
        return redirect()->back();
    }
}
