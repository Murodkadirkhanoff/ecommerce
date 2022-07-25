<x-layout>
    <main>

        <!-- =======================
        Page Banner START -->
        <section class="py-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="bg-light p-4 text-center rounded-3">
                            <h1 class="m-0">Карзина</h1>
                            <!-- Breadcrumb -->
                            <div class="d-flex justify-content-center">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb breadcrumb-dots mb-0">
                                        <li class="breadcrumb-item"><a href="#">Главная</a></li>
                                        <li class="breadcrumb-item active" aria-current="page"><a href="#">Карзина</a>
                                        </li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- =======================
        Page Banner END -->

        <!-- =======================
        Page content START -->
        <section class="pt-5">
            <div class="container">

                @if(\Cart::isEmpty())
                    <section>
                        <div class="container">
                            <div class="row">
                                <div class="col-12 text-center">
                                    <!-- Image -->
                                    <img src="assets/images/element/cart.svg" class="h-200px h-md-300px mb-3" alt="">
                                    <!-- Subtitle -->
                                    <h2>Ваша корзина на данный момент пуста</h2>
                                    <!-- info -->
                                    <p class="mb-0">Пожалуйста, проверьте все доступные продукты и купите некоторые
                                        продукты, которые удовлетворят ваши потребности.</p>
                                    <!-- Button -->
                                    <a href="{{url('/')}}" class="btn btn-primary mt-4 mb-0">Назад в магазин</a>
                                </div>
                            </div>
                        </div>
                    </section>
                @else
                    <div class="row g-4 g-sm-5">
                        <!-- Main content START -->
                        <div class="col-lg-8 mb-4 mb-sm-0">
                            <div class="card card-body p-4 shadow">

                                <div class="table-responsive border-0 rounded-3">
                                    <!-- Table START -->
                                    <table class="table align-middle p-4 mb-0">
                                        <!-- Table head -->
                                        <!-- Table body START -->
                                        <tbody class="border-top-0">
                                        <!-- Table item -->


                                        @foreach(\Cart::getContent() as $item)
                                            <tr>
                                                <!-- Course item -->
                                                <td>
                                                    <div class="d-lg-flex align-items-center">
                                                        <!-- Image -->
                                                        <div class="w-100px w-md-80px mb-2 mb-md-0">
                                                            <img
                                                                src="{{env('MEDIA_URL') . getPhoto(\App\Models\Product::find($item->id)) }}"
                                                                class="rounded"
                                                                alt="">
                                                        </div>
                                                        <!-- Title -->
                                                        <h6 class="mb-0 ms-lg-3 mt-2 mt-lg-0">
                                                            <a href="{{route('products.show',[$item->id])}}">{{$item->name}}</a>
                                                        </h6>
                                                        <p class="text-muted mb-0 ms-lg-3 mt-2 mt-lg-0">
                                                            {{\App\Models\Product::find($item->id)->category->name}}</a>.
                                                        </p>
                                                    </div>
                                                </td>

                                                <!-- Amount item -->
                                                <td class="text-center">
                                                    <h6 class="text-success mb-0">@convert($item->price) UZS
                                                        X {{$item->quantity}}</h6>
                                                </td>
                                                <!-- Action item -->
                                                <td>
                                                    <a href="{{route('remove.cart.item', $item->id)}}"
                                                       class="btn btn-sm btn-danger-soft px-2 mb-0"><i
                                                            class="fas fa-fw fa-times"></i></a>
                                                </td>
                                            </tr>


                                        @endforeach

                                        </tbody>
                                    </table>
                                </div>

                                {{--                            @if(!Cart::isEmpty())--}}
                                {{--                                <!-- Coupon input and button -->--}}
                                {{--                                    <div class="row g-3 mt-2">--}}
                                {{--                                        <div class="col-md-6">--}}
                                {{--                                            <div class="input-group">--}}
                                {{--                                                <input class="form-control form-control " placeholder="COUPON CODE">--}}
                                {{--                                                <button type="button" class="btn btn-primary">Apply coupon</button>--}}
                                {{--                                            </div>--}}
                                {{--                                        </div>--}}
                                {{--                                        <!-- Update button -->--}}
                                {{--                                        <div class="col-md-6 text-md-end">--}}
                                {{--                                            <button class="btn btn-primary mb-0" disabled>Update cart</button>--}}
                                {{--                                        </div>--}}
                                {{--                                    </div>--}}
                                {{--                                @endif--}}
                            </div>
                        </div>
                        <!-- Main content END -->

                        <!-- Right sidebar START -->
                        <div class="col-lg-4">
                            <!-- Card total START -->
                            @if(!Cart::isEmpty())
                                <div class="card card-body p-4 shadow">
                                    <!-- Title -->
                                    <h4 class="mb-3">Всего в корзине</h4>

                                    <!-- Price and detail -->
                                    <ul class="list-group list-group-borderless mb-2">

                                        {{--                                        <li class="list-group-item px-0 d-flex justify-content-between">--}}
                                        {{--                                            <span class="h6 fw-light mb-0">Coupon Discount</span>--}}
                                        {{--                                            <span class="text-danger">-$20</span>--}}
                                        {{--                                        </li>--}}
                                        <li class="list-group-item px-0 d-flex justify-content-between">
                                            <span class="h5 mb-0">Итого</span>
                                            <span class="h5 mb-0">@convert(\Cart::getTotal()) UZS</span>
                                        </li>


                                        <div class="alert alert-info my-3" role="alert">
                                            <h5 class="alert-heading">Внимание !</h5>
                                            <p> Общая сумма может меняться в зависимости от типа доставки</p>
                                        </div>


                                    </ul>

                                    <!-- Button -->
                                    <div class="d-grid">
                                        <a href="{{route('checkout')}}" class="btn btn-lg btn-success">Перейти к
                                            оформлению
                                            заказа</a>
                                    </div>

                                    <!-- Content -->
                                    <p class="small mb-0 mt-2 text-center">Совершая покупку, вы соглашаетесь с
                                        настоящими <a
                                            href="#"><strong>Условиями обслуживания</strong></a></p>

                                </div>
                                <!-- Card total END -->
                            @endif
                        </div>
                        <!-- Right sidebar END -->

                    </div>
                @endif

            </div>
        </section>


        <section>
            <div class="container">
                <!-- Title -->
                <div class="row mb-4">
                    <h2 class="mb-0">Рекомендованные продукты</h2>
                </div>

                <div class="row">
                    @foreach(\App\Models\Product::take(4)->inRandomOrder()->get() as $product)
                        <div class="col-md-3 mb-4">
                            <x-card :product="$product">

                            </x-card>
                        </div>
                    @endforeach
                </div>


            </div>
        </section>


        <!-- =======================
        Page content END -->

    </main>
</x-layout>
