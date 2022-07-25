<x-layout>


    <section class="bg-dark align-items-center d-flex"
             style="background:url(assets/images/pattern/04.png) no-repeat center center; background-size:cover;">
        <!-- Main banner background image -->
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Title -->
                    <h1 class="text-white">{{$promotion->title}}</h1>
                    <!-- Breadcrumb -->
                    <div class="d-flex">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb breadcrumb-dark breadcrumb-dots mb-0">
                                <li class="breadcrumb-item"><a href="{{url('/')}}">Главная</a></li>
                                <li class="breadcrumb-item"><a href="{{route('promotions.index')}}">Список акций</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">{{$promotion->title}}</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="">
        <div class="container">


            <div class="row ">
                <div class="col-4">
                    <!-- Image -->
                    <div class="card shadow shadow-sm  p-2 mb-4 z-index-9">
                        <div class="overflow-hidden rounded-3">
                            <img src="{{env('MEDIA_URL') . $promotion->image}}" class="card-img" alt="course image">
                            <!-- Overlay -->

                        </div>
                    </div>


                    <div class="card card-body shadow shadow-sm p-4 mb-4">
                        <!-- Title -->
                        <h4 class="mb-3">Информация</h4>
                        <ul class="list-group list-group-borderless">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <span class="h6 fw-light mb-0"><i class="bi bi-calendar-date text-primary"></i>Дата создание</span>
                                <span>{{$promotion->created_at->diffForHumans()}}</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <span class="h6 fw-light mb-0"><i class="bi fa-business-time text-primary"></i>Время чтение</span>
                                <span>{{(new \Mtownsend\ReadTime\ReadTime($promotion->body))->get()}}</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <span class="h6 fw-light mb-0"><i class="bi bi-alarm text-primary"></i>Дата начало акции</span>
                                <span>{{$promotion->start}}</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <span class="h6 fw-light mb-0"><i class="bi bi-alarm-fill text-primary"></i>Дата окончание акции</span>
                                <span>{{$promotion->end}}</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <span class="h6 fw-light mb-0"><i class="bi bi-currency-exchange text-primary"></i>Тип акции</span>
                                <span>{{getPromotionTypeText($promotion->promotion_type)}}</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <span class="h6 fw-light mb-0"><i class="bi bi-eye text-primary"></i>Количество просмотров</span>
                                <span>{{views($promotion)->count()}}</span>
                            </li>
                        </ul>
                    </div>




                </div>

                <div class="col-8">

                    <div class="">{!! $promotion->body !!}</div>

                </div>
            </div>
        </div>

        <div class="container">
            @if($promotion->products->count() > 0)
                <div class="row">
                    <h2 class="my-5">Товары на этом акции</h2>
                    @foreach($promotion->products as $product)
                        <div class="col-md-3 mb-4">
                            <x-card :product="$product">

                            </x-card>
                        </div>
                    @endforeach
                </div>
            @endif
        </div>
    </section>


</x-layout>
