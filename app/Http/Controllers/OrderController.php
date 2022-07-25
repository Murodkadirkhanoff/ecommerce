<?php

namespace App\Http\Controllers;

use App\Helpers\Status;
use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{

    public function checkout()
    {
        if (\request()->isMethod('get')) {
            return view('pages.checkout');
        } else {

            $delivery_price = 0;
            if (\request()->get('delivery_type') == 'regular_delivery') {
                $delivery_price = getRegularDeliveryCost();
            } elseif (\request()->get('delivery_type') == 'fast_delivery') {
                $delivery_price = getFastDeliveryCost();
            }

            $order = Order::create([
                'total' => \Cart::getTotal() + $delivery_price,
                'subtotal' => \Cart::getSubTotal(),
                'customer_id' => Auth::id(),
                'status' => Status::CREATED,
                'payment_type' => \request()->payment_type,
                'delivery_type' => \request()->delivery_type,
                'delivery_cost' => $delivery_price
            ]);

            foreach (\Cart::getContent() as $item) {
                $product = Product::find($item->id);
                $price = $product->is_discount ? $product->discount_price : $product->price;
                DB::table('order_products')->insert([
                    'order_id' => $order->id,
                    'product_id' => $item->id,
                    'product_image' => getPhoto($product),
                    'product_price' => $price,
                    'quantity' => $item->quantity,
                    'total' => $item->quantity * $price
                ]);
            }

            \Cart::clear();

            return redirect()->to('/')->with('success', 'Заказ успешно принят');
        }
    }

    public function orders()
    {
        return view('pages.profile.orders.index');
    }


}
