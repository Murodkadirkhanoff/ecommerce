<x-layout>
    <!-- **************** MAIN CONTENT START **************** -->
    <main>

        <!-- =======================
        Main Banner START -->

        <div class="container ">
            <div class="tiny-slider arrow-round arrow-blur arrow-hover">
                <div class="tiny-slider-inner" data-autoplay="true" data-arrow="true" data-edge="2" data-dots="true"
                     data-items="1">
                    @foreach(\App\Models\Banner::active()->get() as $banner)
                        <div class="position-relative">
                            <a href="{{$banner->link}}">
                                <img class="rounded-4" src="{{env('MEDIA_URL'). $banner->banner}}" alt=""
                                     style="width: 100%;  height: 35vh; object-fit: cover">
                            </a>


                        </div>

                    @endforeach
                </div>
            </div>
        </div>


        <!-- =======================
        Main Banner END -->

        <!-- =======================
        Client START -->
        <section class="pb-0 pb-md-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12">
                        <!-- Slider START -->
                        <div class="tiny-slider">
                            <div class="tiny-slider-inner" data-arrow="false" data-dots="false" data-gutter="80"
                                 data-items-xl="6" data-items-lg="5" data-items-md="4" data-items-sm="3"
                                 data-items-xs="2" data-autoplay="2000">
                                <!-- Slide item START -->
                                <div class="item"><img class="grayscale" src="assets/images/client/coca-cola.svg"
                                                       alt="client-logo"></div>
                                <div class="item"><img class="grayscale" src="assets/images/client/android.svg"
                                                       alt="client-logo"></div>
                                <div class="item"><img class="grayscale" src="assets/images/client/envato.svg"
                                                       alt="client-logo"></div>
                                <div class="item"><img class="grayscale" src="assets/images/client/microsoft.svg"
                                                       alt="client-logo"></div>
                                <div class="item"><img class="grayscale" src="assets/images/client/netflix.svg"
                                                       alt="client-logo"></div>
                                <div class="item"><img class="grayscale" src="assets/images/client/google.svg"
                                                       alt="client-logo"></div>
                                <div class="item"><img class="grayscale" src="assets/images/client/linkedin.svg"
                                                       alt="client-logo"></div>
                                <!-- Slide item END -->
                            </div>
                        </div>
                        <!-- Slider END -->
                    </div>
                </div>
            </div>
        </section>
        <!-- =======================
        Client END -->


        <section>
            <div class="container">
                <h3 class="mb-3">Последные товары</h3>
                <div class="row">

                    @foreach(\App\Models\Product::active()->take(8)->orderByDesc('id')->get() as $product)
                        <div class="col-md-3 mb-4">
                            <x-card :product="$product">

                            </x-card>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>


        <!-- =======================
        About START -->
        <section>
            <div class="container">
                <div class="row g-4 align-items-center">
                    <div class="col-lg-5">
                        <!-- Title -->
                        <h2>Что <span class="text-warning">itechno.uz</span> может предложить кдиентам ?</h2>
                        <!-- Image -->
                        <img src="assets/images/itechno/1.jpg" class="rounded-2" alt="">
                    </div>
                    <div class="col-lg-7">
                        <div class="row g-4">
                            <!-- Item -->
                            <div class="col-sm-6">
                                <div class="icon-lg bg-orange bg-opacity-10 text-orange rounded-2"><i
                                        class="fas fa-user-tie fs-5"></i></div>
                                <h5 class="mt-2">Весь товар сертифицирован</h5>
                                <p class="mb-0">In no impression assistance contrasted Manners she wishing justice
                                    hastily new anxious At discovery objection we</p>
                            </div>
                            <!-- Item -->
                            <div class="col-sm-6">
                                <div class="icon-lg bg-info bg-opacity-10 text-info rounded-2"><i
                                        class="fas fa-book fs-5"></i></div>
                                <h5 class="mt-2">30 дней на обмен и возврат</h5>
                                <p class="mb-0">Smile spoke total few great had never their too Amongst moments do in
                                    arrived at my replied Fat weddings believed prospect</p>
                            </div>
                            <!-- Item -->
                            <div class="col-sm-6">
                                <div class="icon-lg bg-success bg-opacity-10 text-success rounded-2"><i
                                        class="bi bi-alarm-fill fs-5"></i></div>
                                <h5 class="mt-2">Доставка по Узбекистану</h5>
                                <p class="mb-0">Denote simple fat denied add worthy little use As some he so high down
                                    am week Conduct denied add worthy little use As</p>
                            </div>
                            <!-- Item -->
                            <div class="col-sm-6">
                                <div class="icon-lg bg-purple bg-opacity-10 text-purple rounded-2"><i
                                        class="fas fa-university fs-5"></i></div>
                                <h5 class="mt-2">Наличный и безналичный расчет</h5>
                                <p class="mb-0">Pleasure and so read the was hope entire first decided the so must have
                                    as on was want up of to traveling so all</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- =======================
        About END -->


        <section>
            <div class="container">
                <h3 class="mb-3">Хиты продаж</h3>
                <div class="row">

                    @foreach(\App\Models\Product::active()->take(8)->inRandomOrder()->get() as $product)
                        <div class="col-md-3 mb-4">
                            <x-card :product="$product">

                            </x-card>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>


        <section class="pt-0">
            <div class="container">
                <!-- Title -->
                <div class="row mb-4">
                    <h2 class="mb-0">Последные публикации</h2>
                </div>

                <div class="row">
                    <!-- Slider START -->
                    <div class="tiny-slider arrow-round arrow-creative arrow-blur">
                        <div class="tiny-slider-inner" data-autoplay="false" data-arrow="true" data-dots="false"
                             data-items="4" data-items-lg="3" data-items-md="2" data-items-xs="1">


                        @foreach(\App\Models\Post::get() as $post)
                            <!-- Card item START -->
                                <div class="card bg-transparent">
                                    <div class="position-relative">
                                        <img src="{{env('MEDIA_URL') . $post->image}}" class="card-img"
                                             alt="course image" style="object-fit: cover; height: 150px;">
                                        <!-- Overlay -->
                                        <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                            <!-- Card overlay Top -->

                                            <!-- Card overlay bottom -->
                                            <div class="w-100 mt-auto">
                                                <!-- Category -->
                                                <a href="#" class="badge text-success bg-white fs-6 rounded-1"><i
                                                        class="fas fa-eye text-success me-2"></i>{{views($post)->count()}}</a>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Card body -->
                                    <div class="card-body px-2">
                                        <!-- Title -->
                                        <h5 class="card-title"><a href="{{route('posts.show', $post->id)}}">{{$post->title}}</a></h5>
                                        <p class="mb-0 text-truncate-2">{!! \Illuminate\Support\Str::limit($post->body)  !!}</p>
                                    </div>
                                </div>
                                <!-- Card item END -->
                            @endforeach


                        </div>
                    </div>
                    <!-- Slider END -->
                </div>
            </div>
        </section>


    </main>
    <!-- **************** MAIN CONTENT END **************** -->
</x-layout>
