<x-layout>


    <section class="bg-dark align-items-center d-flex"
             style="background:url(assets/images/pattern/04.png) no-repeat center center; background-size:cover;">
        <!-- Main banner background image -->
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Title -->
                    <h1 class="text-white">{{$service->title}}</h1>
                    <!-- Breadcrumb -->
                    <div class="d-flex">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb breadcrumb-dark breadcrumb-dots mb-0">
                                <li class="breadcrumb-item"><a href="{{url('/')}}">Главная</a></li>
                                <li class="breadcrumb-item"><a href="{{route('services.index')}}">Список услуг</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">{{$service->title}}</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="mb-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 ">
                    <!-- Image -->
                    <div class="card shadow shadow-sm  p-2 mb-4 z-index-9">
                        <div class="overflow-hidden rounded-3">
                            <img src="{{env('MEDIA_URL') . $service->image}}" class="card-img" alt="course image">
                            <!-- Overlay -->

                        </div>
                    </div>

                    <div class="card card-body shadow shadow-sm p-4 mb-4">
                        <!-- Title -->
                        <h4 class="mb-3">Информация</h4>
                        <ul class="list-group list-group-borderless">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <span class="h6 fw-light mb-0"><i class="bi bi-calendar-date text-primary"></i>Дата создание</span>
                                <span>{{$service->created_at->diffForHumans()}}</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <span class="h6 fw-light mb-0"><i class="bi fa-business-time text-primary"></i>Время чтение</span>
                                <span>{{(new \Mtownsend\ReadTime\ReadTime($service->body))->get()}}</span>
                            </li>
                            @if($service->deadline)
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <span class="h6 fw-light mb-0"><i class="bi bi-alarm text-primary"></i>Срок обслуживания</span>
                                    <span>{{$service->deadline}}</span>
                                </li>
                            @endif
                            @if($service->price)
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <span class="h6 fw-light mb-0"><i
                                            class="bi bi-cash-coin text-primary"></i>Цена</span>
                                    <span>@convert($service->price) UZS</span>
                                </li>
                            @endif
                        </ul>
                    </div>


                </div>

                <div class="col-lg-8">
                    <h2 class="mb-3">{{$service->title}}</h2>
                    <div class="">{!! $service->body !!}</div>

                </div>
            </div>
        </div>
    </section>


</x-layout>
