<x-layout>
    <main>

        <!-- =======================
        Page Banner START -->
        <section class="py-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="bg-light p-4 text-center rounded-3">
                            <h1 class="m-0">Избранное</h1>
                            <!-- Breadcrumb -->
                            <div class="d-flex justify-content-center">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb breadcrumb-dots mb-0">
                                        <li class="breadcrumb-item"><a href="#">Главная</a></li>
                                        <li class="breadcrumb-item active" aria-current="page"><a href="#">Избранное</a>
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

                @if($wish_list->isEmpty())
                    <section>
                        <div class="container">
                            <div class="row">
                                <div class="col-12 text-center">
                                    <!-- Image -->
                                    <img src="assets/images/element/cart.svg" class="h-200px h-md-300px mb-3" alt="">
                                    <!-- Subtitle -->
                                    <h2>Избранное на данный момент пуста</h2>
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
                        <div class="col-lg-12 mb-4 mb-sm-0">
                            <div class="card card-body p-4 shadow">

                                <div class="table-responsive border-0 rounded-3">
                                    <!-- Table START -->
                                    <table class="table align-middle p-4 mb-0">
                                        <!-- Table head -->
                                        <!-- Table body START -->
                                        <tbody class="border-top-0">
                                        <!-- Table item -->


                                        @foreach($wish_list->getContent() as $item)

                                            <tr>
                                                <!-- Course item -->
                                                <td>
                                                    <div class="d-lg-flex align-items-center">
                                                        <!-- Image -->
                                                        <div class="w-100px w-md-80px mb-2 mb-md-0">
                                                            <img
                                                                src="{{env('MEDIA_URL') . getPhoto(\App\Models\Product::find($item->id))}}"
                                                                class="rounded"
                                                                alt="">
                                                        </div>
                                                        <!-- Title -->
                                                        <h6 class="mb-0 ms-lg-3 mt-2 mt-lg-0">
                                                            <a href="{{route('products.show',[$item->id])}}">{{$item->name}}</a>
                                                        </h6>
                                                    </div>
                                                </td>

                                                <!-- Amount item -->
                                                <td class="text-end">
                                                    <h5 class="text-success mb-0">@convert($item->price) UZS</h5>
                                                </td>
                                                <!-- Action item -->
                                                <td>
                                                    <a href="{{route('wishlist.destroy', $item->id)}}"
                                                       class="btn btn-sm btn-danger-soft px-2 mb-0"><i
                                                            class="fas fa-fw fa-times"></i></a>
                                                </td>
                                            </tr>


                                        @endforeach

                                        </tbody>
                                    </table>
                                </div>


                            </div>
                        </div>
                        <!-- Main content END -->


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
