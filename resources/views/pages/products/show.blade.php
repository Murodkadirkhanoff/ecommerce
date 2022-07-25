<x-layout>
    <main>

        <!-- =======================
        Page content START -->
        <section class="pt-5 pb-0">
            <div class="container">
                <div class="row g-0 g-lg-5">

                    <!-- Left sidebar START -->
                    <div class="col-lg-4">
                        <div class="tiny-slider arrow-round arrow-creative arrow-blur arrow-hover">
                            <div class="tiny-slider-inner" data-autoplay="false" data-arrow="true" data-dots="false"
                                 data-items-xl="1" data-items-md="2" data-items-xs="1">
                                @forelse($product->attachments()->get() as $attachment)
                                    <div class="card bg-transparent">
                                        <div class="position-relative">
                                            <img class="rounded-3" src="{{ env('MEDIA_URL') . $attachment->file}}"
                                                 style="width: 100%; height: 400px; object-fit: contain" alt="image">
                                        </div>
                                    </div>
                                @empty
                                    <div class="card bg-transparent">
                                        <div class="position-relative">
                                            <img class="rounded-3" src="{{ env('MEDIA_URL') . 'default.png'}}"
                                                 style="width: 100%; height: 400px; object-fit: cover" alt="image">
                                        </div>
                                    </div>
                                @endforelse
                            </div>
                        </div>

                        <div class="card-body pb-3">
                            <!-- Buttons and price -->
                            <div class="text-center">
                                <!-- Buttons -->
                                <span @if($product->in_stock == 0) data-bs-toggle="tooltip" data-bs-placement="top"
                                      title="Нет в наличии" @endif>
                                    <a href="{{route('add.to.cart', $product->id)}}"
                                       class="btn btn-success-soft mb-2 mb-sm-0 me-00 me-sm-3 @if($product->in_stock == 0) disabled @endif"><i
                                            class="bi bi-cart3 me-2"></i>В корзину</a>
                                </span>
                                <a href="{{route('add.to.wishlist', $product->id)}}" class="btn btn-light mb-0"><i
                                        class="bi bi-bookmark me-2"></i>В список желаний</a>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 col-lg-12">
                                <!-- Instructor image START -->
                                <div class="card mt-3 p-2 mb-4 text-center">
                                    <div class="rounded-3">
                                        @if($product->is_discount)
                                            <div class="h5  me-2 text-decoration-line-through text-danger">
                                                @convert($product->price) UZS
                                            </div>
                                            <div class="h5  me-2 text-success">@convert($product->discount_price) UZS
                                            </div>
                                        @else
                                            <div class="h5  me-2 text-success">@convert($product->price) UZS</div>
                                        @endif
                                    </div>

                                    <!-- Card body -->
                                    <div class="card-body px-3">
                                        <!-- Rating -->
                                    {{--                                        <ul class="list-inline">--}}
                                    {{--                                            <li class="list-inline-item me-0 small"><i--}}
                                    {{--                                                    class="fas fa-star text-warning"></i></li>--}}
                                    {{--                                            <li class="list-inline-item me-0 small"><i--}}
                                    {{--                                                    class="fas fa-star text-warning"></i></li>--}}
                                    {{--                                            <li class="list-inline-item me-0 small"><i--}}
                                    {{--                                                    class="fas fa-star text-warning"></i></li>--}}
                                    {{--                                            <li class="list-inline-item me-0 small"><i--}}
                                    {{--                                                    class="fas fa-star text-warning"></i></li>--}}
                                    {{--                                            <li class="list-inline-item me-0 small"><i--}}
                                    {{--                                                    class="fas fa-star-half-alt text-warning"></i></li>--}}
                                    {{--                                            <li class="list-inline-item ms-2 h6 fw-light mb-0">4.5/5.0</li>--}}
                                    {{--                                        </ul>--}}
                                    <!-- Social media button -->
                                        <ul class="list-inline mb-0">
                                            <li class="list-inline-item"><a class="btn px-2 btn-sm bg-facebook"
                                                                            href="#"><i
                                                        class="fab fa-fw fa-facebook-f"></i></a></li>
                                            <li class="list-inline-item"><a
                                                    class="btn px-2 btn-sm bg-instagram-gradient" href="#"><i
                                                        class="fab fa-fw fa-instagram"></i></a></li>
                                            <li class="list-inline-item"><a class="btn px-2 btn-sm bg-twitter" href="#"><i
                                                        class="fab fa-fw fa-twitter"></i></a></li>
                                            <li class="list-inline-item"><a class="btn px-2 btn-sm bg-linkedin"
                                                                            href="#"><i
                                                        class="fab fa-fw fa-linkedin-in"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- Instructor image END -->
                            </div>

                            <div class="col-md-6 col-lg-12">
                                <div class="card card-body shadow shadow-sm p-4 mb-4">

                                    <!-- Education START -->
                                    <!-- Title -->
                                    <h4 class="mb-3">Дополнительные</h4>

                                    <!-- Education item -->
                                    <div class="d-flex align-items-center mb-4">
                                        <span class="icon-md text-dark mb-0 bg-light rounded-3"><i
                                                class="bi bi-grid-3x3-gap-fill"></i></span>
                                        <div class="ms-3">
                                            <p class="mb-0 small">Категория</p>
                                            <h6 class="mb-0">{{$product->category->name}}</h6>

                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center mb-4">
                                        <span class="icon-md text-dark mb-0 bg-light rounded-3"><i
                                                class="bi bi-grid-3x3-gap-fill"></i></span>
                                        <div class="ms-3">
                                            <p class="mb-0 small">Подкатегория</p>
                                            <h6 class="mb-0">{{$product->subcategory->name}}</h6>

                                        </div>
                                    </div>

                                    <div class="d-flex align-items-center mb-4">
                                        <span class="icon-md text-dark mb-0 bg-light rounded-3"><i
                                                class="bi bi-apple"></i></span>
                                        <div class="ms-3">
                                            <p class="mb-0 small">Бренд</p>
                                            <h6 class="mb-0">{{$product->brand->name}}</h6>
                                        </div>
                                    </div>


                                    <hr> <!-- Divider -->

                                    <!-- Skills START -->
                                    <h4 class="mb-3">Теги</h4>

                                    <!-- Progress item -->
                                    <div>
                                        @if($product->tags != "")
                                            @foreach(explode(',',$product->tags) as $tag)
                                                <a href="#" class="badge bg-success"><i
                                                        class="fas fa-circle me-2 small fw-bold"></i>{{$tag}}</a>
                                            @endforeach
                                        @endif
                                    </div>


                                    <!-- Progress item -->
                                    <div class="overflow-hidden mb-4 d-none">
                                        <h6 class="uppercase">UI/UX</h6>
                                        <div class="progress progress-sm bg-danger bg-opacity-10">
                                            <div class="progress-bar bg-danger aos" role="progressbar"
                                                 data-aos="slide-right" data-aos-delay="200" data-aos-duration="1000"
                                                 data-aos-easing="ease-in-out" style="width: 50%;" aria-valuenow="50"
                                                 aria-valuemin="0" aria-valuemax="100">
                                                <span class="progress-percent-simple h6 mb-0">50%</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Skills END -->

                                </div>
                            </div>
                        </div> <!-- Row End -->
                    </div>
                    <!-- Left sidebar END -->

                    <!-- Main content START -->
                    <div class="col-lg-8">
                        <h1 class="mb-0">{{$product->name}}</h1>
                        <p>В наличии: {{$product->in_stock}} шт.</p>

                        @if($product->description != null)
                            <div class="mt-4">
                                <h2>Характеристики </h2>
                                <div>{!! $product->description !!}</div>
                            </div>
                    @endif


                    <!-- Counter START -->
                        <div class="row mt-4 g-3">
                            <!-- Counter item -->
                            <div class="col-sm-6 col-lg-4">
                                <div class="d-flex align-items-center">
                                    <span class="icon-lg text-success mb-0 bg-success bg-opacity-10 rounded-3"><i
                                            class="fas fa-play"></i></span>
                                    <div class="ms-3">
                                        <div class="d-flex">
                                            <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0"
                                                data-purecounter-end="10"
                                                data-purecounter-delay="200">{{$product->ratings->count()}}</h5>
                                            <span class="mb-0 h5"></span>
                                        </div>
                                        <p class="mb-0 h6 fw-light">всего комментарий</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Counter item -->
                            <div class="col-sm-6 col-lg-4">
                                <div class="d-flex align-items-center">
                                    <span class="icon-lg text-purple bg-purple bg-opacity-10 rounded-3 mb-0"><i
                                            class="fas fa-users"></i></span>
                                    <div class="ms-3">
                                        <div class="d-flex">
                                            <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0"
                                                data-purecounter-end="36"
                                                data-purecounter-delay="200">{{views($product)->count()}}</h5>
                                            <span class="mb-0 h5"></span>
                                        </div>
                                        <p class="mb-0 h6 fw-light">всего просмотров</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Counter item -->
                            <div class="col-sm-6 col-lg-4">
                                <div class="d-flex align-items-center">
                                    <span class="icon-lg text-orange bg-orange bg-opacity-10 rounded-3 mb-0"><i
                                            class="fas fa-trophy"></i></span>
                                    <div class="ms-3">
                                        <div class="d-flex">
                                            <h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0"
                                                data-purecounter-end="11" data-purecounter-delay="200">0</h5>
                                            <span class="mb-0 h5"></span>
                                        </div>
                                        <p class="mb-0 h6 fw-light">всего покупок</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Counter END -->


                        <div class="col-12 mt-4">
                            <!-- Tabs START -->
                            <ul class="nav nav-pills nav-pills-bg-soft px-3" id="book-pills-tab" role="tablist">
                                <!-- Tab item -->
                                <li class="nav-item me-2 me-sm-4" role="presentation">
                                    <button class="nav-link mb-0 active" id="book-pills-tab-2" data-bs-toggle="pill"
                                            data-bs-target="#book-pills-2" type="button" role="tab"
                                            aria-controls="book-pills-2" aria-selected="false">Отзывы
                                    </button>
                                </li>


                                <!-- Tab item -->
                                <li class="nav-item me-2 me-sm-4" role="presentation">
                                    <button class="nav-link mb-0" id="book-pills-tab-3" data-bs-toggle="pill"
                                            data-bs-target="#book-pills-3" type="button" role="tab"
                                            aria-controls="book-pills-3" aria-selected="false">Способ доставки
                                    </button>
                                </li>
                            </ul>
                            <!-- Tabs END -->

                            <!-- Tab contents START -->
                            <div class="tab-content pt-4 px-3" id="book-pills-tabContent">
                                <!-- Content START -->
                                <div class="tab-pane fade show active" id="book-pills-2" role="tabpanel"
                                     aria-labelledby="book-pills-tab-2">
                                    <!-- Review START -->
                                    @if($product->ratings->sum('rating') != 0)
                                        <div>
                                            <div class="row mb-4">
                                                <h4 class="mb-4">Все отзывы</h4>

                                                <!-- Rating info -->
                                                <div class="col-md-4 mb-3 mb-md-0">
                                                    <div class="text-center">
                                                        <!-- Info -->
                                                        <h2 class="mb-0">{{round($product->ratings->sum('rating') / $product->ratings->count(),1)}}</h2>
                                                        <!-- Star -->
                                                        <ul class="list-inline mb-0">
                                                            <li class="list-inline-item me-0"><i
                                                                    class="fas fa-star text-warning"></i></li>
                                                            {{--                                                    <li class="list-inline-item me-0"><i--}}
                                                            {{--                                                            class="fas fa-star text-warning"></i></li>--}}
                                                            {{--                                                    <li class="list-inline-item me-0"><i--}}
                                                            {{--                                                            class="fas fa-star text-warning"></i></li>--}}
                                                            {{--                                                    <li class="list-inline-item me-0"><i--}}
                                                            {{--                                                            class="fas fa-star text-warning"></i></li>--}}
                                                            {{--                                                    <li class="list-inline-item me-0"><i--}}
                                                            {{--                                                            class="fas fa-star-half-alt text-warning"></i></li>--}}
                                                        </ul>
                                                        <p class="mb-0">(На основе {{$product->ratings->count()}}
                                                            отзывов)</p>
                                                    </div>
                                                </div>

                                                <!-- Progress-bar and star -->
                                                <div class="col-md-8">
                                                    <div class="row align-items-center text-center">
                                                        <!-- Progress bar and Rating -->
                                                        <div class="col-6 col-sm-8">
                                                            <!-- Progress item -->
                                                            <div class="progress progress-sm bg-warning bg-opacity-15">
                                                                <div class="progress-bar bg-warning" role="progressbar"
                                                                     style="width: 100%" aria-valuenow="100"
                                                                     aria-valuemin="0"
                                                                     aria-valuemax="100">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-6 col-sm-4">
                                                            <!-- Star item -->
                                                            <ul class="list-inline mb-0">
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                            </ul>
                                                        </div>

                                                        <!-- Progress bar and Rating -->
                                                        <div class="col-6 col-sm-8">
                                                            <!-- Progress item -->
                                                            <div class="progress progress-sm bg-warning bg-opacity-15">
                                                                <div class="progress-bar bg-warning" role="progressbar"
                                                                     style="width: 80%" aria-valuenow="80"
                                                                     aria-valuemin="0"
                                                                     aria-valuemax="100">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-6 col-sm-4">
                                                            <!-- Star item -->
                                                            <ul class="list-inline mb-0">
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="far fa-star text-warning"></i></li>
                                                            </ul>
                                                        </div>

                                                        <!-- Progress bar and Rating -->
                                                        <div class="col-6 col-sm-8">
                                                            <!-- Progress item -->
                                                            <div class="progress progress-sm bg-warning bg-opacity-15">
                                                                <div class="progress-bar bg-warning" role="progressbar"
                                                                     style="width: 60%" aria-valuenow="60"
                                                                     aria-valuemin="0"
                                                                     aria-valuemax="100">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-6 col-sm-4">
                                                            <!-- Star item -->
                                                            <ul class="list-inline mb-0">
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="far fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="far fa-star text-warning"></i></li>
                                                            </ul>
                                                        </div>

                                                        <!-- Progress bar and Rating -->
                                                        <div class="col-6 col-sm-8">
                                                            <!-- Progress item -->
                                                            <div class="progress progress-sm bg-warning bg-opacity-15">
                                                                <div class="progress-bar bg-warning" role="progressbar"
                                                                     style="width: 40%" aria-valuenow="40"
                                                                     aria-valuemin="0"
                                                                     aria-valuemax="100">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-6 col-sm-4">
                                                            <!-- Star item -->
                                                            <ul class="list-inline mb-0">
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="far fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="far fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="far fa-star text-warning"></i></li>
                                                            </ul>
                                                        </div>

                                                        <!-- Progress bar and Rating -->
                                                        <div class="col-6 col-sm-8">
                                                            <!-- Progress item -->
                                                            <div class="progress progress-sm bg-warning bg-opacity-15">
                                                                <div class="progress-bar bg-warning" role="progressbar"
                                                                     style="width: 20%" aria-valuenow="20"
                                                                     aria-valuemin="0"
                                                                     aria-valuemax="100">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-6 col-sm-4">
                                                            <!-- Star item -->
                                                            <ul class="list-inline mb-0">
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="fas fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="far fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="far fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="far fa-star text-warning"></i></li>
                                                                <li class="list-inline-item me-0 small"><i
                                                                        class="far fa-star text-warning"></i></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Review END -->

                                            <!-- Student review START -->
                                            <div class="row">
                                            @foreach($product->ratings as $rating)
                                                <!-- Review item START -->
                                                    <div class="d-md-flex my-4">
                                                        <!-- Avatar -->
                                                        <div class="avatar avatar-xl me-4 flex-shrink-0">
                                                            <img class="avatar-img rounded-circle"
                                                                 src="/admin_uploads/default.png"
                                                                 alt="avatar">
                                                        </div>
                                                        <!-- Text -->
                                                        <div>
                                                            <div class="d-sm-flex mt-1 mt-md-0 align-items-center">
                                                                <h5 class="me-3 mb-0">{{$rating->user->name}}</h5>
                                                                <!-- Review star -->
                                                                <x-rating :rating="$rating->rating"></x-rating>
                                                            </div>
                                                            <!-- Info -->
                                                            <p class="small mb-2">{{$rating->created_at}}</p>
                                                            <p class="mb-2">{{$rating->comment}}</p>

                                                            <!-- Reply button -->
                                                            <a href="#" class="text-body mb-0"><i
                                                                    class="fas fa-reply me-2"></i>Reply</a>
                                                        </div>
                                                    </div>

                                                    <hr>
                                                @endforeach


                                            </div>
                                            <!-- Student review END -->
                                        </div>
                                    @else
                                        <h3 class="my-4">Нет отзывов</h3>
                                @endif


                                <!-- Leave Review START -->
                                    <div class="mt-2">
                                        <h5 class="mb-4">Оставить отзыв</h5>

                                        @if ($errors->any())
                                            <div class="alert alert-danger">
                                                <ul>
                                                    @foreach ($errors->all() as $error)
                                                        <li>{{ $error }}</li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        @endif

                                        <form class="row g-3" action="{{route('ratings.store')}}" method="POST">
                                            @csrf

                                            <input type="hidden" name="product_id" value="{{$product->id}}">

                                            <!-- Rating -->
                                            <div class="col-12">
                                                <select id="inputState2" name="rating" class="form-select  js-choice">
                                                    <option value="5" selected="">★★★★★ (5/5)</option>
                                                    <option value="4">★★★★☆ (4/5)</option>
                                                    <option value="3">★★★☆☆ (3/5)</option>
                                                    <option value="2">★★☆☆☆ (2/5)</option>
                                                    <option value="1">★☆☆☆☆ (1/5)</option>
                                                </select>
                                            </div>
                                            <!-- Message -->
                                            <div class="col-12">
                                                <textarea class="form-control" name="comment"
                                                          id="exampleFormControlTextarea1"
                                                          placeholder="Ваш отзыв" rows="3"></textarea>
                                            </div>
                                            <!-- Button -->
                                            <div class="col-12">
                                                <button type="submit" class="btn btn-primary mb-0">Опубликовать отзыв
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                    <!-- Leave Review END -->

                                </div>
                                <!-- Content END -->

                                <!-- Content START -->
                                <div class="tab-pane fade" id="book-pills-3" role="tabpanel"
                                     aria-labelledby="book-pills-tab-3">

                                    <p>- Доставка по всем регионам Республики:

                                        Доставка по регионам осуществляется при помощи курьерских служб.

                                        Срок доставки от 1 до 3х рабочих дней!

                                        Стоимость доставки при заказе свыше 200 000 сум и с весом до 10кг - БЕСПЛАТНО!
                                        Заказы с весом свыше 10 кг рассчитывается и отображается при заказе товара
                                        исходя из веса и месты доставки.

                                        Доставка крупногабаритного оборудования осуществляется только до дверей или
                                        подъезда (если это многоэтажный дом).

                                        Мы Вам гарантируем приемлемые минимальные цены! </p>

                                    <!-- Process START -->
                                    <div class="row mb-4">
                                        <div class="col-12">
                                            <div class="bg-light p-4 rounded-3">
                                                <div class="row g-4 text-center mx-auto">

                                                    <!-- Process item -->
                                                    <div class="col-md-4 text-center">
                                                        <!-- Icon -->
                                                        <div
                                                            class="icon-xl bg-dark bg-opacity-10 mx-auto rounded-circle mb-3">
                                                            <i class="far fa-fw fa-file-alt"></i>
                                                        </div>
                                                        <h6>Размещаете свой заказ</h6>
                                                    </div>

                                                    <!-- Process item -->
                                                    <div class="col-md-4 text-center">
                                                        <!-- Icon -->
                                                        <div
                                                            class="icon-xl bg-dark bg-opacity-10 mx-auto rounded-circle mb-3">
                                                            <i class="fas fa-fw fa-truck-moving"></i>
                                                        </div>
                                                        <!-- Title -->
                                                        <h6>Мы отправляем ваш заказ</h6>
                                                    </div>

                                                    <!-- Process item -->
                                                    <div class="col-md-4 text-center">
                                                        <!-- Icon -->
                                                        <div
                                                            class="icon-xl bg-dark bg-opacity-10 mx-auto rounded-circle mb-3">
                                                            <i class="fas fa-fw fa-people-carry"></i>
                                                        </div>
                                                        <!-- Title -->
                                                        <h6>Принимайте заказ!</h6>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <!-- Process END -->


                                </div>
                                <!-- Content END -->
                            </div>
                            <!-- Tab contents END -->
                        </div>


                    </div>
                    <!-- Main content END -->

                </div><!-- Row END -->
            </div>
        </section>
        <!-- =======================
        Page content END -->

        <!-- =======================
        Related instructor START -->
        <section>
            <div class="container">
                <!-- Title -->
                <div class="row mb-4">
                    <h2 class="mb-0">Связанные продукты</h2>
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
        Related instructor END -->

    </main>
</x-layout>
