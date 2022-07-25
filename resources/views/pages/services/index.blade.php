<x-layout>
    <main>

        <!-- =======================
        Page Banner START -->
        <section class="bg-dark align-items-center d-flex"
                 style="background:url(assets/images/pattern/04.png) no-repeat center center; background-size:cover;">
            <!-- Main banner background image -->
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Title -->
                        <h1 class="text-white">Список сервисов</h1>
                        <!-- Breadcrumb -->
                        <div class="d-flex">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb breadcrumb-dark breadcrumb-dots mb-0">
                                    <li class="breadcrumb-item"><a href="{{url('/')}}">Главная</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Список услуг</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- =======================
        Page Banner END -->
    @php
        $current = $services->currentpage()*$services->perpage();

       if ($services->total() < $current){
           $current = $services->total();
       }
    @endphp
    <!-- =======================
        Page content START -->
        <section class="pb-0 py-sm-5">
            <div class="container">
                <!-- Title and select START -->
                <div class="row g-3 align-items-center mb-4">
                    <!-- Content -->
                    <div class="col-md-4">
                        <h4 class="my-2">Показано с {{($services->currentpage()-1)*$services->perpage()+1}}
                            по {{$current}}
                            из {{$services->total()}} записей
                        </h4>

                    </div>

                    <!-- Select option -->
                    <div class="col-md-8">
                        <div class="row g-3 align-items-center justify-content-md-end me-auto">


                            <!-- Short by filter -->
                            <form class="col-md-4 border rounded p-1 input-borderless">
                                <select class="form-select js-choice z-index-9" aria-label=".form-select-sm">
                                    <option value="">Sort by</option>
                                    <option>Free</option>
                                    <option>Newest</option>
                                    <option>Most popular</option>
                                    <option>Most Viewed</option>
                                </select>
                            </form>

                            <!-- Advanced filter responsive toggler START -->
                            <div class="col-4 d-xl-none text-md-end">
                                <button class="btn btn-primary mb-0" type="button" data-bs-toggle="offcanvas"
                                        data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                                    <i class="fas fa-sliders-h me-1"></i> Show filter
                                </button>
                            </div>
                            <!-- Advanced filter responsive toggler END -->

                        </div>
                    </div>
                </div>
                <!-- Title and select END -->

                <div class="row">
                    <!-- Main content START -->
                    <div class="col-12">

                        <!-- Course list START -->
                        <div class="row g-4">
                        @foreach($services as $service)
                            <!-- Card list START -->
                                <div class="col-12">
                                    <div class="card shadow p-2">
                                        <div class="row g-0">
                                            <div class="col-md-3">
                                                <img src="{{env('MEDIA_URL') . $service->image}}" class="rounded-2"
                                                     alt="Card image">
                                            </div>
                                            <div class="col-md-9">
                                                <div class="card-body">
                                                    <!-- Badge and rating -->
                                                    <div class="d-flex justify-content-between align-items-center mb-2">
                                                        <!-- Badge -->
                                                        <a href="#"
                                                           class="badge bg-primary text-white mb-2 mb-sm-0">{{$service->created_at->diffForHumans()}}</a>
                                                    </div>

                                                    <!-- Title -->
                                                    <h5 class="card-title"><a
                                                            href="{{route('services.show', $service->id)}}">{{$service->title}}</a>
                                                    </h5>
                                                    <p>{!! \Illuminate\Support\Str::limit($service->body)  !!}</p>


                                                    <!-- Price and avatar -->
                                                    <div
                                                        class="mt-0 d-sm-flex justify-content-sm-between align-items-center">
                                                        <!-- Avatar -->
                                                        <div class="d-flex align-items-center">
                                                            <div class="avatar">
                                                                <img class="avatar-img rounded-circle"
                                                                     src="https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Free-Image.png"
                                                                     alt="avatar">
                                                            </div>
                                                            <p class="mb-0 ms-2"><a href="#"
                                                                                    class="h6 fw-light">admin</a></p>
                                                        </div>

                                                        <div class="d-flex align-items-center">
                                                            <i class="bi bi-coin fs-4"></i>
                                                            <p class="mb-0 ms-2"><a href="#"
                                                                                    class="h6 fw-light">@convert($service->price)
                                                                    UZS</a></p>
                                                        </div>
                                                        <!-- Price -->
                                                        <div class="mt-3 mt-sm-0">
                                                            <a href="{{route('services.show', $service->id)}}"
                                                               class="btn btn-dark">Посмотреть больше</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card list END -->
                            @endforeach

                        </div>


                        {{$services->links()}}
                    </div>
                    <!-- Main content END -->


                </div><!-- Row END -->
            </div>
        </section>
        <!-- =======================
        Page content END -->

        <!-- =======================
        Newsletter START -->
        <section class="pt-5 pt-lg-0">
            <div class="container position-relative overflow-hidden">
                <!-- SVG decoration -->
                <figure class="position-absolute top-50 start-50 translate-middle ms-3">
                    <svg>
                        <path class="fill-white opacity-3"
                              d="m496 22.999c0 10.493-8.506 18.999-18.999 18.999s-19-8.506-19-18.999 8.507-18.999 19-18.999 18.999 8.506 18.999 18.999z"/>
                        <path class="fill-white opacity-3"
                              d="m775 102.5c0 5.799-4.701 10.5-10.5 10.5-5.798 0-10.499-4.701-10.499-10.5 0-5.798 4.701-10.499 10.499-10.499 5.799 0 10.5 4.701 10.5 10.499z"/>
                        <path class="fill-white opacity-3"
                              d="m192 102c0 6.626-5.373 11.999-12 11.999s-11.999-5.373-11.999-11.999c0-6.628 5.372-12 11.999-12s12 5.372 12 12z"/>
                        <path class="fill-white opacity-3"
                              d="m20.499 10.25c0 5.66-4.589 10.249-10.25 10.249-5.66 0-10.249-4.589-10.249-10.249-0-5.661 4.589-10.25 10.249-10.25 5.661-0 10.25 4.589 10.25 10.25z"/>
                    </svg>
                </figure>
                <!-- Svg decoration -->
                <figure class="position-absolute bottom-0 end-0 mb-5 d-none d-sm-block">
                    <svg class="rotate-130" width="258.7px" height="86.9px" viewBox="0 0 258.7 86.9">
                        <path stroke="white" fill="none" stroke-width="2"
                              d="M0,7.2c16,0,16,25.5,31.9,25.5c16,0,16-25.5,31.9-25.5c16,0,16,25.5,31.9,25.5c16,0,16-25.5,31.9-25.5 c16,0,16,25.5,31.9,25.5c16,0,16-25.5,31.9-25.5c16,0,16,25.5,31.9,25.5s16-25.5,31.9-25.5"/>
                        <path stroke="white" fill="none" stroke-width="2"
                              d="M0,57c16,0,16,25.5,31.9,25.5c16,0,16-25.5,31.9-25.5c16,0,16,25.5,31.9,25.5c16,0,16-25.5,31.9-25.5 c16,0,16,25.5,31.9,25.5c16,0,16-25.5,31.9-25.5c16,0,16,25.5,31.9,25.5s16-25.5,31.9-25.5"/>
                    </svg>
                </figure>

                <div class="bg-grad p-3 p-sm-5 rounded-3">
                    <div class="row justify-content-center position-relative">
                        <!-- SVG decoration -->
                        <figure class="fill-white opacity-1 position-absolute top-50 start-0 translate-middle-y">
                            <svg width="141px" height="141px">
                                <path
                                    d="M140.520,70.258 C140.520,109.064 109.062,140.519 70.258,140.519 C31.454,140.519 -0.004,109.064 -0.004,70.258 C-0.004,31.455 31.454,-0.003 70.258,-0.003 C109.062,-0.003 140.520,31.455 140.520,70.258 Z"/>
                            </svg>
                        </figure>
                        <!-- Newsletter -->
                        <div class="col-12 position-relative my-2 my-sm-3">
                            <div class="row align-items-center">
                                <!-- Title -->
                                <div class="col-lg-6">
                                    <h3 class="text-white mb-3 mb-lg-0">Are you ready for a more great
                                        Conversation?</h3>
                                </div>
                                <!-- Input item -->
                                <div class="col-lg-6 text-lg-end">
                                    <form class="bg-body rounded p-2">
                                        <div class="input-group">
                                            <input class="form-control border-0 me-1" type="email"
                                                   placeholder="Type your email here">
                                            <button type="button" class="btn btn-dark mb-0 rounded">Subscribe</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div> <!-- Row END -->
                </div>
            </div>
        </section>
        <!-- =======================
        Newsletter END -->

    </main>
</x-layout>
