<div class="container-fluid">
    <div class="row">
        <div class="col-lg-3 col-xs-6">

            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3>{{$data['counts']['products_count']}}</h3>
                    <p>Продуктов</p>
                </div>
                <div class="icon">
                    <i class="fa fa-shopping-bag"></i>
                </div>
                <a href="/admin/products" class="small-box-footer">Подробнее <i
                        class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-xs-6">

            <div class="small-box bg-green">
                <div class="inner">
                    <h3>{{$data['counts']['reports_count']}}<sup style="font-size: 20px"></sup></h3>
                    <p>Отчётов</p>
                </div>
                <div class="icon">
                    <i class="fa fa-pie-chart"></i>
                </div>
                <a href="/admin/reports" class="small-box-footer">Подробнее <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-xs-6">

            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3>{{$data['counts']['customers_count']}}</h3>
                    <p>Клиентов</p>
                </div>
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <a href="/admin/users" class="small-box-footer">Подробнее <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-xs-6">

            <div class="small-box bg-red">
                <div class="inner">
                    <h3>{{$data['counts']['notcompleted_reports_count']}}</h3>
                    <p>Незавершенных отчетов</p>
                </div>
                <div class="icon">
                    <i class="fa fa-question-circle"></i>
                </div>
                <a href="/admin/reports?is_completed=0" class="small-box-footer">Подробнее <i
                        class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

    </div>

    <div class="row">
        <div class="col-md-3">
            <div class="box box-default">
                <div class="box-header with-border">
                    <h3 class="box-title">Источник заказов</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
                        </button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="chart-responsive">
                                <canvas id="myChart"></canvas>

                            </div>
                            <!-- ./chart-responsive -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.box-body -->
{{--                <div class="box-footer no-padding">--}}
{{--                    <ul class="nav nav-pills nav-stacked">--}}
{{--                        <li><a href="#">United States of America--}}
{{--                                <span class="pull-right text-red"><i class="fa fa-angle-down"></i> 12%</span></a></li>--}}
{{--                        <li><a href="#">India <span class="pull-right text-green"><i--}}
{{--                                        class="fa fa-angle-up"></i> 4%</span></a>--}}
{{--                        </li>--}}
{{--                        <li><a href="#">China--}}
{{--                                <span class="pull-right text-yellow"><i class="fa fa-angle-left"></i> 0%</span></a></li>--}}
{{--                    </ul>--}}
{{--                </div>--}}
                <!-- /.footer -->
            </div>
        </div>
        <div class="col-md-9">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Ежемесячный итоговый отчет</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                class="fa fa-minus"></i>
                        </button>
                        <div class="btn-group">
                            <button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown"
                                    aria-expanded="false">
                                <i class="fa fa-wrench"></i></button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
                        </button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body" style="">
                    <div class="row">
                        <div class="col-md-12">
                            <p class="text-center">
                                <strong>Статистика по: {{$data['chart1']['first_month']}}
                                    - {{$data['chart1']['last_month']}}</strong>
                            </p>

                            <div class="chart">
                                <!-- Sales Chart Canvas -->
                                <canvas id="salesChart" height="300"></canvas>
                            </div>
                            <!-- /.chart-responsive -->
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- ./box-body -->
                <div class="box-footer" style="">
                    <div class="row">
                        <div class="col-sm-3 col-xs-6">
                            <div class="description-block border-right">
                                <span
                                    class="description-percentage @if($data['chart1']['percent1'] > 0) text-green @else text-red @endif"><i
                                        class="@if($data['chart1']['percent1'] > 0) fa fa-caret-up @else fa fa-caret-down @endif"></i> {{ $data['chart1']['percent1'] }} %</span>
                                <h5 class="description-header">{{ currencyFormat($data['chart1']['sales'][2]) }}</h5>
                                <span class="description-text">{{$data['chart1']['months'][2]}}</span>
                            </div>
                        </div>

                        <div class="col-sm-3 col-xs-6">
                            <div class="description-block border-right">
                                <span
                                    class="description-percentage @if($data['chart1']['percent2'] > 0) text-green @else text-red @endif"><i
                                        class="@if($data['chart1']['percent2'] > 0) fa fa-caret-up @else fa fa-caret-down @endif"></i> {{ $data['chart1']['percent2'] }} %</span>
                                <h5 class="description-header">{{ currencyFormat($data['chart1']['sales'][3]) }}</h5>
                                <span class="description-text">{{$data['chart1']['months'][3]}}</span>
                            </div>
                        </div>

                        <div class="col-sm-3 col-xs-6">
                            <div class="description-block border-right">
                                <span
                                    class="description-percentage @if($data['chart1']['percent3'] > 0) text-green @else text-red @endif"><i
                                        class="@if($data['chart1']['percent3'] > 0) fa fa-caret-up @else fa fa-caret-down @endif"></i> {{ $data['chart1']['percent3'] }} %</span>
                                <h5 class="description-header">{{ currencyFormat($data['chart1']['sales'][4]) }}</h5>
                                <span class="description-text">{{$data['chart1']['months'][4]}}</span>
                            </div>
                        </div>

                        <div class="col-sm-3 col-xs-6">
                            <div class="description-block border-right">
                                <span
                                    class="description-percentage @if($data['chart1']['percent4'] > 0) text-green @else text-red @endif"><i
                                        class="@if($data['chart1']['percent4'] > 0) fa fa-caret-up @else fa fa-caret-down @endif"></i> {{ $data['chart1']['percent4'] }} %</span>
                                <h5 class="description-header">{{ currencyFormat($data['chart1']['sales'][5]) }}</h5>
                                <span class="description-text">{{$data['chart1']['months'][5]}}</span>
                            </div>
                        </div>

                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.box-footer -->
            </div>
            <!-- /.box -->
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Последние добавленные продукты</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
                        </button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <ul class="products-list product-list-in-box">


                        @foreach(\App\Models\Product::orderByDesc('id')->take(5)->get() as $product)
                            <li class="item">
                                <div class="product-img">
                                    <img src="{{env('MEDIA_URL') . getPhoto($product)}}" alt="Product Image">
                                </div>
                                <div class="product-info">
                                    <a href="javascript:void(0)" class="product-title">{{$product->category->name}}
                                        <span
                                            class="label label-success pull-right">{{ currencyFormat(getProductPrice($product)) }} UZS</span></a>
                                    <span class="product-description">
                          {{$product->name}}
                        </span>
                                </div>
                            </li>
                        @endforeach

                    </ul>
                </div>
                <!-- /.box-body -->
                <div class="box-footer text-center">
                    <a href="javascript:void(0)" class="uppercase">View All Products</a>
                </div>
                <!-- /.box-footer -->
            </div>

        </div>
    </div>
</div>


<canvas id="qichchigi" height="160" width="332"
        style="width: 332px; height: 160px;"></canvas>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


<script>

    var counts = {!! json_encode( \Illuminate\Support\Facades\DB::table('reports')
                 ->orderBy('order_source')
                 ->select(\Illuminate\Support\Facades\DB::raw('count(*) as total'))
                 ->groupBy('order_source')
                 ->pluck('total')->toArray()) !!};

    var names = {!! json_encode( \Illuminate\Support\Facades\DB::table('reports')
                 ->orderBy('order_source')
                 ->groupBy('order_source')
                 ->pluck('order_source')->toArray()) !!};
    const data = {
        labels: names,
        datasets: [{
            label: 'My First Dataset',
            data: counts,
            backgroundColor: [
                '#2436e7',
                '#e535b5',
                '#3bbbb5',
                '#ffc108',
                '#419dff',
                '#00bd56',
                '#b63131'
            ],
            hoverOffset: 4
        }]
    };

    const config = {
        type: 'doughnut',
        data: data,
        options: {
            plugins: {
                title: {
                    display: true,
                    text: 'Статистика по источникам заказов'
                }
            }
        }
    };

    const myChart = new Chart(
        document.getElementById('myChart'),
        config
    );

</script>


<script>
    var months = {!! json_encode($data['chart1']['months']) !!};
    var sales = {!! json_encode($data['chart1']['sales']) !!};
    var benefit = {!! json_encode($data['chart1']['benefit']) !!};
</script>


<script>

    const labels = months;
    const data2 = {
        labels: labels,
        datasets: [
            {
                label: 'Чистая прыбил',
                data: benefit,
                borderColor: '#f81688',
                backgroundColor: '#f53794',

                pointStyle: 'circle',
                pointRadius: 7,
                pointHoverRadius: 12
            },
            {
                label: 'Объем продаж',
                data: sales,
                borderColor: '#0b84ac',
                backgroundColor: '#4dc9f6',

                pointStyle: 'circle',
                pointRadius: 7,
                pointHoverRadius: 12
            }
        ]
    };

    const config2 = {
        type: 'line',
        data: data2,
        options: {
            responsive: true,
            interaction: {
                mode: 'index',
                intersect: false,
            },
            stacked: false,
            plugins: {
                title: {
                    align: 'start',
                    display: true,
                    text: 'Ежемесячный итоговый отчет'
                }
            },
            scales: {
                myScale: {
                    type: 'linear',
                    position: 'right', // `axis` is determined by the position as `'y'`
                }
            }
        },
    };


    const myChart2 = new Chart(
        document.getElementById('salesChart'),
        config2
    );


</script>
