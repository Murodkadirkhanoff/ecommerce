<x-layout>
    <main>


        <!-- =======================
        Page content START -->
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <!-- Main content START -->
                    <div class="col-12">

                        <!-- Search option START -->
                        <div class="row mb-4 align-items-center">

                            <!-- Title -->
                            <div class="col-md-4">
                                <h5 class="mb-0 d-inline">{{$category->name}} </h5> <h4
                                    class="text-muted d-inline"> {{$category->products()->count()}} товаров</h4>
                            </div>





                        </div>
                        <!-- Search option END -->

                        <!-- Book Grid START -->
                        <div class="row g-4">


                            @forelse($products as $product)
                                <div class="col-sm-6 col-lg-4 col-xl-3">
                                    <x-card :product="$product">

                                    </x-card>
                                </div>
                            @empty
                                <div class="bg-light p-4 mt-5 rounded-3 position-relative overflow-hidden">

                                    <!-- Svg decoration -->
                                    <figure class="position-absolute top-0 end-0 mt-5">
                                        <svg width="566.3px" height="353.7px" viewBox="0 0 566.3 353.7">
                                            <path stroke="#17a2b8" fill="none"
                                                  d="M525.1,4c8.1,0.7,14.9,7.2,17.9,14.8c3,7.6,3,16,2.1,24.1c-4.7,44.3-32.1,84.7-69.4,108.9 c-37.4,24.2-83.7,32.8-127.9,27.6c-32.3-3.8-63.5-14.5-95.9-16.6c-21.6-1.4-45.6,2.1-60.1,18.3c-7.7,8.5-11.8,19.6-14.8,30.7 c-7.9,29.5-9,60.8-19.7,89.5c-5.5,14.8-14,29.1-27.1,38c-15.6,10.5-35.6,12-54.2,9.5c-18.6-2.5-36.5-8.6-55-12.1"></path>
                                            <path stroke="#F99D2B" fill="none"
                                                  d="M560.7,0.2c10,18.3,3.7,41.1-5,60.1c-11.8,25.9-28,50.3-50.2,68.2c-29,23.3-66.3,34-103.2,38.6 c-36.9,4.6-74.3,3.8-111.3,7.2c-22.3,2-45.3,5.9-63.5,19c-26.8,19.2-39,55.3-68.3,70.4c-38.2,19.6-89.7-4.9-125.6,18.8 c-22.6,15-30.7,44.2-33.3,71.2"></path>
                                        </svg>
                                    </figure>

                                    <div class="row position-relative align-items-center">
                                        <!-- Content -->
                                        <div class="col-md-6 px-md-5">
                                            <!-- Title -->
                                            <h1 class="mb-3">Товары недоступен</h1>
                                            <p class="mb-3">Скоро мы опубликуем новые товары в этой категории</p>
                                        </div>

                                        <!-- Image -->
                                        <div class="col-md-6 text-center">
                                            <img src="assets/images/book/book-bg.svg" alt="">
                                        </div>
                                    </div> <!-- Row END -->
                                </div>

                            @endforelse


                        </div>
                        <!-- Book Grid END -->

                    {{--                        <!-- Pagination START -->--}}
                    {{--                        <div class="col-12">--}}
                    {{--                            <nav class="mt-4 d-flex justify-content-center" aria-label="navigation">--}}
                    {{--                                <ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">--}}
                    {{--                                    <li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i--}}
                    {{--                                                class="fas fa-angle-double-left"></i></a></li>--}}
                    {{--                                    <li class="page-item mb-0"><a class="page-link" href="#">1</a></li>--}}
                    {{--                                    <li class="page-item mb-0 active"><a class="page-link" href="#">2</a></li>--}}
                    {{--                                    <li class="page-item mb-0"><a class="page-link" href="#">..</a></li>--}}
                    {{--                                    <li class="page-item mb-0"><a class="page-link" href="#">6</a></li>--}}
                    {{--                                    <li class="page-item mb-0"><a class="page-link" href="#"><i--}}
                    {{--                                                class="fas fa-angle-double-right"></i></a></li>--}}
                    {{--                                </ul>--}}
                    {{--                            </nav>--}}
                    {{--                        </div>--}}


                    {{$products->links('')}}
                    <!-- Pagination END -->
                    </div>
                    <!-- Main content END -->
                </div><!-- Row END -->
            </div>
        </section>
        <!-- =======================
        Page content END -->

        <!-- =======================
        Action box START -->
        <section class="pt-0">
            <div class="container">
                <div class="row g-4">


                @foreach(\App\Models\Promotion::take(2)->get() as $promotion)
                    <!-- Action box item START -->
                        <div class="col-lg-6">
                            <div class="bg-warning rounded-3 bg-opacity-15 p-5 h-100">

                                <!-- Content -->
                                <div class="row g-3 align-items-center my-auto">
                                    <!-- Content -->
                                    <div class="col-sm-7 col-lg-12 col-xl-7">
                                        <h2 class="mb-1 fs-1">{{$promotion->title}}</h2>
                                        <p class="mb-3 h5 fw-light lead">{{$promotion->created_at->diffForHumans()}}</p>
                                        <a href="{{route('promotions.show', $promotion->id)}}" class="btn btn-dark mb-0">Посмотреть</a>
                                    </div>

                                    <!-- Image -->
                                    <div class="col-sm-5 col-lg-12 col-xl-5">
                                        <img src="assets/images/element/29.svg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Action box item END -->
                    @endforeach
                </div>

            </div>
        </section>
        <!-- =======================
        Action box END -->

    </main>
</x-layout>
