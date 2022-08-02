<x-layout>
    <main>

        <!-- =======================
        Page Banner START -->
        <section class="pt-0">
            <!-- Main banner background image -->
            <div class="container-fluid px-0">
                <div class="bg-blue h-100px h-md-200px rounded-0"
                     style="background:url(assets/images/pattern/04.png) no-repeat center center; background-size:cover;">
                </div>
            </div>
            <div class="container mt-n4">
                <div class="row">
                    <!-- Profile banner START -->
                    <div class="col-12">
                        <div class="card bg-transparent card-body p-0">
                            <div class="row d-flex justify-content-between">
                                <!-- Avatar -->
                                <div class="col-auto mt-4 mt-md-0">
                                    <div class="avatar avatar-xxl mt-n3">
                                        <img class="avatar-img rounded-circle border border-white border-3 shadow"
                                             src="{{getAvatar()}}" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Profile banner END -->

                        <!-- Advanced filter responsive toggler START -->
                        <!-- Divider -->
                        <hr class="d-xl-none">
                        <div class="col-12 col-xl-3 d-flex justify-content-between align-items-center">
                            <a class="h6 mb-0 fw-bold d-xl-none" href="#">Menu</a>
                            <button class="btn btn-primary d-xl-none" type="button" data-bs-toggle="offcanvas"
                                    data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                                <i class="fas fa-sliders-h"></i>
                            </button>
                        </div>
                        <!-- Advanced filter responsive toggler END -->
                    </div>
                </div>
            </div>
        </section>
        <!-- =======================
        Page Banner END -->

        <!-- =======================
        Page content START -->
        <section class="pt-0">
            <div class="container">
                <div class="row">
                    <!-- Left sidebar START -->
                    <div class="col-xl-3">
                        <!-- Responsive offcanvas body START -->
                      @include('components.profile_sidebar')
                        <!-- Responsive offcanvas body END -->
                    </div>
                    <!-- Left sidebar END -->

                    <!-- Main content START -->
                    <div class="col-xl-9">

                        <div class="table-responsive border-0">
                            <table class="table table-dark-gray align-middle p-4 mb-0 table-hover" id="table_id">
                                <!-- Table head -->
                                <thead>
                                <tr>
                                    <th scope="col" class="border-0 rounded-start">ID</th>
                                    <th scope="col" class="border-0 ">Итого</th>
                                    <th scope="col" class="border-0">Тип оплаты</th>
                                    <th scope="col" class="border-0">Доставка</th>
                                    <th scope="col" class="border-0">Статус</th>
                                    <th scope="col" class="border-0">Дата создание</th>
                                    <th scope="col" class="border-0">Действии</th>
                                </tr>
                                </thead>

                                <!-- Table body START -->
                                <tbody>


                                @foreach(\App\Models\Order::where('customer_id', \Illuminate\Support\Facades\Auth::id())->get() as $order)
                                    <!-- Table item -->
                                    <tr>
                                        <!-- Course item -->
                                        <td>
                                            {{$order->id}}
                                        </td>
                                        <td>
                                            @convert($order->total) UZS
                                        </td>
                                        <!-- Enrolled item -->
                                        <td class="text-center text-sm-start">
                                            {{ getPaymentTypeText( $order->payment_type) }}
                                        </td>
                                        <td class="text-center text-sm-start">
                                            {{getDeliveryText($order->delivery_type)}}
                                        </td>

                                        <!-- Status item -->
                                        <td>
                                            <div
                                                class="badge bg-success bg-opacity-10 text-success">{{ getStatusText($order->status) }}</div>
                                        </td>
                                        <td>
                                            {{$order->created_at}}
                                             </td>
                                        <td>
                                            <button data-bs-toggle="modal"
                                                    data-bs-target="#orderProds{{$order->id}}"
                                                    data-bs-whatever="@fat"
                                                    class="btn btn-sm btn-success me-1 mb-1 mb-x;-0"><i
                                                    class="bi bi-cart-check me-1"></i>Товары
                                            </button>
                                            <div class="modal fade" id="orderProds{{$order->id}}" tabindex="-1"
                                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered modal-lg">

                                                    <div class="modal-content p-5">

                                                        <div class="modal-header">
                                                            <h4 class="modal-title" id="myLargeModalLabel">Заказ № {{$order->id}}</h4>
                                                        </div>


                                                        <div class="modal-body">
                                                            <table
                                                                class="table align-middle table-bordered p-4 mb-0 table-hover">
                                                                <!-- Table head -->
                                                                <thead>
                                                                <tr>
                                                                    <th scope="col" style="width: 50%">Товар</th>
                                                                    <th style="width: 20%">Цена</th>
                                                                    <th style="width: 5%">Количество</th>
                                                                    <th style="width: 25%">Итого</th>
                                                                </tr>
                                                                </thead>

                                                                <!-- Table body START -->
                                                                <tbody>


                                                                @foreach($order->products as $product)
                                                                    <!-- Table item -->
                                                                    <tr>
                                                                        <!-- Table data -->
                                                                        <td>
                                                                            <div class="d-flex align-items-center">
                                                                                <!-- Image -->
                                                                                <div class="w-100px">
                                                                                    <img
                                                                                        src="{{env('MEDIA_URL') . getPhoto($product)}}"
                                                                                        class="rounded" alt="">
                                                                                </div>
                                                                                <div class="mb-0 ms-2">
                                                                                    <!-- Title -->
                                                                                    <h6 class="table-responsive-title"><a
                                                                                            href="{{route('products.show', [$product->id])}}">{{$product->name}}</a></h6>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <!-- Table data -->
                                                                        <td>{{$product->pivot->product_price}} UZS</td>
                                                                        <td>{{$product->pivot->quantity}}</td>
                                                                        <td>{{$product->pivot->total}} UZS</td>
                                                                    </tr>
                                                                @endforeach


                                                                </tbody>
                                                                <!-- Table body END -->
                                                            </table>
                                                        </div>


                                                    </div>


                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach


                                </tbody>
                                <!-- Table body END -->
                            </table>
                        </div>


                    </div>
                    <!-- Main content END -->
                </div><!-- Row END -->
            </div>
        </section>
        <!-- =======================
        Page content END -->

    </main>
</x-layout>
