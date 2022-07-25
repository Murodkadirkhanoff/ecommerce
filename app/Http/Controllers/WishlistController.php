<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class WishlistController extends Controller
{
    public function addToWishlist($product_id)
    {

        $wish_list = app('wishlist');
        $product = Product::find($product_id);

        $wish_list->add($product_id, $product->name, $product->price,1, array());

        return redirect()->back();
    }

    public function index()
    {
        $wish_list = app('wishlist');
        return view('pages.wishlist', compact('wish_list'));
    }

    public function destroy($id)
    {
        $wish_list = app('wishlist');
        $wish_list->remove($id);
        return redirect()->back();
    }
}
