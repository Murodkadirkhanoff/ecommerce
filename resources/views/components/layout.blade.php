<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from eduport.webestica.com/index-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 09 Jun 2022 06:17:17 GMT -->
<head>
    <title>{{getSiteName() . ' - ' . getSlogan()}}</title>

    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="itechno.uz">
    <meta name="description" content="Itechno.uz - современный онлайн-магазин">

    <!-- Favicon -->
    <link rel="shortcut icon" href="{{asset('assets/images/favicon.ico')}}">

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;700&amp;family=Roboto:wght@400;500;700&amp;display=swap">

    <!-- Plugins CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/vendor/font-awesome/css/all.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/vendor/bootstrap-icons/bootstrap-icons.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/vendor/tiny-slider/tiny-slider.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/vendor/glightbox/css/glightbox.css')}}">

    <!-- Theme CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/style.css')}}">

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">

    <style>
        #content {
            position: relative;
        }

        #content span {
            font-size: 10px;
            background-color: black;
            padding: 5px;
            font-weight: bold;
            border-radius: 30%;
            color: white;
            position: absolute;
            top: -14px;
            right: -14px;
        }

        #content i {
            top: 10px;
        }

        .center {
            height: 100%;
            display: flex !important;
            justify-content: center !important;;
            align-items: center !important;;

        }
    </style>
</head>

<body>

<!-- Top header START -->
<div class="navbar-top navbar-dark bg-light d-none d-xl-block py-2 mx-2 mx-md-4 rounded-bottom-4">
    <div class="container">
        <div class="d-lg-flex justify-content-lg-between align-items-center">
            <!-- Navbar top Left-->
            <!-- Top info -->
            <ul class="nav align-items-center justify-content-center">
                <li class="nav-item me-3" data-bs-toggle="tooltip" data-bs-animation="false" data-bs-placement="bottom"
                    data-bs-original-title="Воскресенье ЗАКРЫТО">
                    <span><i class="far fa-clock me-2"></i>Время посещения: пн-сб 9:00-19:00</span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-headset me-2"></i>Позвоните нам прямо
                        сейчас: {{ getSystemPhone() }} </a>
                </li>
            </ul>

            <!-- Navbar top Right-->
            <div class="d-flex align-items-center justify-content-center">
                <!-- Language -->
                <!-- <div class="dropdown me-3">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdownLanguage" data-bs-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false"><i class="fas fa-globe me-2"></i>Language</a>
                    <div class="dropdown-menu mt-2 min-w-auto shadow" aria-labelledby="dropdownLanguage">
                        <a class="dropdown-item me-4" href="#"><img class="fa-fw me-2" src="assets/images/flags/uk.svg"
                                                                    alt="">English</a>
                        <a class="dropdown-item me-4" href="#"><img class="fa-fw me-2" src="assets/images/flags/sp.svg"
                                                                    alt="">Español</a>
                        <a class="dropdown-item me-4" href="#"><img class="fa-fw me-2" src="assets/images/flags/fr.svg"
                                                                    alt="">Français</a>
                        <a class="dropdown-item me-4" href="#"><img class="fa-fw me-2" src="assets/images/flags/gr.svg"
                                                                    alt="">Deutsch</a>
                    </div>
                </div> -->

                <!-- Top social -->
                <ul class="list-unstyled d-flex mb-0">
                    <li><a class="px-2 nav-link" href="#"><i class="fab fa-facebook"></i></a></li>
                    <li><a class="px-2 nav-link" href="#"><i class="fab fa-instagram"></i></a></li>
                    <li><a class="px-2 nav-link" href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a class="ps-2 nav-link" href="#"><i class="fab fa-linkedin-in"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Top header END -->

@if (session('success'))
    <div class="alert alert-success" id="alert">
        {{ session('success') }}
    </div>
@endif




<!-- Header START -->
<header class="navbar-light header-static navbar-sticky">
    <!-- Logo Nav START -->
    <nav class="navbar navbar-expand-xl">
        <div class="container">
            <!-- Logo START -->
            <a class="navbar-brand me-0" href="{{url('/')}}">
                <img class="light-mode-item navbar-brand-item" style="height: 100px;"
                     src="{{getSystemLogo()}}" alt="logo">
                <img class="dark-mode-item navbar-brand-item" src="{{getSystemLogo()}}" alt="logo">
            </a>
            <!-- Logo END -->

            <!-- Responsive navbar toggler -->
            <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
                    aria-label="Toggle navigation">
				<span class="navbar-toggler-animation">
					<span></span>
					<span></span>
					<span></span>
				</span>
            </button>

            <!-- Main navbar START -->
            <div class="navbar-collapse collapse" id="navbarCollapse">

                <!-- Nav Search END -->
                <ul class="navbar-nav navbar-nav-scroll mx-auto">


                    <!-- Nav item 2 Pages -->
                    {{--                    <li class="nav-item dropdown">--}}
                    {{--                        <a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown"--}}
                    {{--                           aria-haspopup="true" aria-expanded="false">Категории товаров</a>--}}
                    {{--                        <ul class="dropdown-menu" aria-labelledby="pagesMenu" style="width: 400px">--}}
                    {{--                            @foreach(\App\Models\Category::whereNull('parent_id')->get() as $category)--}}
                    {{--                                <li class="dropdown-submenu dropend">--}}
                    {{--                                    <a class="dropdown-item dropdown-toggle" href="#">{{$category->name}}</a>--}}
                    {{--                                    <ul class="dropdown-menu dropdown-menu-start" data-bs-popper="none">--}}
                    {{--                                        @foreach($category->children as $children)--}}
                    {{--                                            <li><a class="dropdown-item"--}}
                    {{--                                                   href="{{route('products.by.category', $children->slug)}}">{{$children->name}}</a>--}}
                    {{--                                            </li>--}}
                    {{--                                        @endforeach--}}
                    {{--                                    </ul>--}}
                    {{--                                </li>--}}
                    {{--                            @endforeach--}}
                    {{--                        </ul>--}}
                    {{--                    </li>--}}

                    <li class="nav-item">
                        <a class="nav-link" href="{{route('promotions.index') }}">Акции</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{route('services.index') }}">Сервисы</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{route('posts.index') }}">Публикации</a>
                    </li>

                    <!-- Nav item 4 Megamenu-->
                    <li class="nav-item dropdown dropdown-fullwidth">
                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false">Каталог</a>
                        <div class="dropdown-menu dropdown-menu-end pb-0" data-bs-popper="none">
                            <div class="row p-4 g-4">
                                <!-- Dropdown column item -->
                                <div class="col-xl-6 col-xxl-5">
                                    <h6 class="mb-0">Категории</h6>
                                    <hr>
                                    {{--                                    <ul class="list-unstyled">--}}
                                    {{--                                        @foreach(\App\Models\Brand::take(10)->inRandomOrder()->get() as $brand)--}}
                                    {{--                                            <li><a class="dropdown-item mb-2" href="#"><img--}}
                                    {{--                                                        src="{{env('MEDIA_URL'). $brand->image}}" width="35"--}}
                                    {{--                                                        alt=""> {{$brand->name}}</a></li>--}}
                                    {{--                                        @endforeach--}}
                                    {{--                                    </ul>--}}
                                    <ul class="list-unstyled" aria-labelledby="pagesMenu">
                                        @foreach(\App\Models\Category::active()->whereNull('parent_id')->get() as $category)
                                            <li class="dropdown-submenu dropend">
                                                <a class="dropdown-item dropdown-toggle"
                                                   href="#">{{$category->name}}</a>
                                                <ul class="dropdown-menu dropdown-menu-start" data-bs-popper="none">
                                                    @foreach($category->children as $children)
                                                        <li><a class="dropdown-item"
                                                               href="{{route('products.by.category', $children->slug)}}">{{$children->name}}</a>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>

                                <!-- Dropdown column item -->
                                <div class="col-xl-6 col-xxl-3">
                                    <h6 class="mb-0">Топ товары</h6>
                                    <hr>
                                    @foreach(\App\Models\Product::active()->take(5)->inRandomOrder()->get() as $top)
                                        <div
                                            class="mb-2 position-relative bg-primary-soft-hover rounded-2 transition-base p-3">
                                            <a class="stretched-link h6 mb-0 text-truncate-2"
                                               href="{{route('products.show', $top->id)}}"> <img width="50"
                                                                                                 src="{{env('MEDIA_URL') . getPhoto($top)}}"
                                                                                                 alt=""> {{$top->name}}
                                            </a>
                                            <p class="mb-0 small text-truncate-2">@convert($top->price) UZS</p>
                                        </div>
                                    @endforeach
                                </div>

                                <!-- Dropdown column item -->
                                <div class="col-xl-6 col-xxl-3">
                                    <h6 class="mb-0">Топ скидки</h6>
                                    <hr>
                                    @foreach(\App\Models\Product::active()->where('is_discount', 1)->take(5)->get() as $top)
                                        <div
                                            class="mb-2 position-relative bg-primary-soft-hover rounded-2 transition-base p-3">
                                            <a class="stretched-link h6 mb-0 text-truncate-2"
                                               href="{{route('products.show', $top->id)}}"> <img width="50"
                                                                                                 src="{{env('MEDIA_URL') . getPhoto($top)}}"
                                                                                                 alt=""> {{$top->name}}
                                            </a>
                                            <p class="mb-0 small text-truncate-2 text-decoration-line-through text-danger">
                                                @convert($top->price) UZS</p>
                                            <p class="mb-0 small text-truncate-2">@convert($top->discount_price) UZS</p>
                                        </div>
                                    @endforeach
                                </div>


                                <!-- Action box -->
                                <div class="col-12">
                                    <div class="alert alert-success alert-dismissible fade show mt-2 mb-0 rounded-3"
                                         role="alert">
                                        <!-- Avatar -->
                                        <div class="avatar avatar-xs me-2">
                                            <img class="avatar-img rounded-circle"
                                                 src="{{asset('assets/images/avatar/09.jpg')}}"
                                                 alt="avatar">
                                        </div>
                                        <!-- Info -->
                                        У нас обычно быстро проходят разные акции. Подписывайтесь на нас <a href="#"
                                                                                                            class="alert-link">Присоединяйся
                                            сейчас</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>

                    <!-- Dropdown Level -->
                    @if(\Illuminate\Support\Facades\Auth::guest())
                        <li class="nav-item">
                            <a data-bs-toggle="modal"
                               data-bs-target="#exampleModal"
                               data-bs-whatever="@fat" class="nav-link" href="#"> <i class="bi bi-box-arrow-in-right"
                                                                                     style="padding-right: 5px;"></i>Вход</a>
                        </li>
                    @else
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('profile') }}">Профиль пользователя</a>
                        </li>
                    @endif
                </ul>
            </div>
            <!-- Main navbar END -->

            <!-- Nav Search START -->
            <div class="nav-item dropdown nav-search">
                <a class="nav-link" role="button" href="#" id="navSearch" data-bs-toggle="dropdown" aria-expanded="true"
                   data-bs-auto-close="outside" data-bs-display="static">
                    <i class="bi bi-search fs-4"> </i>
                </a>
                <div class="dropdown-menu dropdown-menu-end shadow rounded p-2" aria-labelledby="navSearch"
                     data-bs-popper="none">
                    <form class="input-group">
                        <input class="form-control border-primary" type="search" placeholder="Search..."
                               aria-label="Search">
                        <button class="btn btn-primary m-0" type="submit">Search</button>
                    </form>

                    <!-- Recent search -->
                    <ul class="list-group list-group-borderless p-2 small">
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <span class="fw-bold">Recent Searches:</span>
                            <button class="btn btn-sm btn-link mb-0 px-0">Clear all</button>
                        </li>
                        <li class="list-group-item text-primary-hover text-truncate">
                            <a href="#" class="text-body"> <i class="far fa-clock me-1"></i>Digital marketing course for
                                Beginner</a>
                        </li>
                        <li class="list-group-item text-primary-hover text-truncate">
                            <a href="#" class="text-body"> <i class="far fa-clock me-1"></i>Customer Life cycle</a>
                        </li>
                        <li class="list-group-item text-primary-hover text-truncate">
                            <a href="#" class="text-body"> <i class="far fa-clock me-1"></i>What is Search</a>
                        </li>
                        <li class="list-group-item text-primary-hover text-truncate">
                            <a href="#" class="text-body"> <i class="far fa-clock me-1"></i>Facebook ADS</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- Nav Search END -->

        {{--            @if(\Illuminate\Support\Facades\Auth::guest())--}}
        {{--                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"--}}
        {{--                        data-bs-whatever="@fat">Login--}}
        {{--                </button>--}}
        {{--            @else--}}
        <!-- Profile START -->
            <div class="nav-item dropdown nav-search">
                <a class="nav-link" href="{{route('shopping.cart')}}" id="navSearch">
                    <div id="content">
                        @if(\Cart::getTotalQuantity() != 0)
                            <span>{{\Cart::getTotalQuantity()}}</span>
                        @endif
                        <i class="bi bi-cart4 fs-4"></i>
                    </div>
                </a>
            </div>


            <div class="nav-item dropdown nav-search">
                <a class="nav-link" href="{{route('wishlist')}}">
                    <div id="content">
                        @if(app('wishlist')->getTotalQuantity() != 0)
                            <span>{{ app('wishlist')->getContent()->count()}}</span>
                        @endif
                        <i class="bi bi-heart fs-4"></i>
                    </div>
                </a>
            </div>


        </div>
    </nav>
    <!-- Logo Nav END -->
</header>
<!-- Header END -->

<div class="container">
    <div class="row">
        @if ($errors->any())
            <div class="alert alert-danger" id="alert">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
    </div>
</div>


{{ $slot }}

<!-- =======================
Footer START -->
<footer class="pt-5">
    <div class="container">
        <!-- Row START -->
        <div class="row g-4">

            <!-- Widget 1 START -->
            <div class="col-lg-3">
                <!-- logo -->
                <a class="me-0" href="{{url('/')}}">
                    <img class="light-mode-item h-40px" src="{{getSystemLogo()}}" alt="logo">
                    <img class="dark-mode-item h-40px" src="{{getSystemLogo()}}" alt="logo">
                </a>
                <p class="my-3">iTechno.uz (OOO "itechno")– это современный онлайн-магазин созданный в 2016 году,
                    который радует своих клиентов качественной продукцией от ведущих мировых и местных
                    производителей.</p>
                <!-- Social media icon -->
                <ul class="list-inline mb-0 mt-3">
                    <li class="list-inline-item"><a class="btn btn-white btn-sm shadow px-2 text-facebook" href="#"><i
                                class="fab fa-fw fa-facebook-f"></i></a></li>
                    <li class="list-inline-item"><a class="btn btn-white btn-sm shadow px-2 text-instagram" href="#"><i
                                class="fab fa-fw fa-instagram"></i></a></li>
                    <li class="list-inline-item"><a class="btn btn-white btn-sm shadow px-2 text-twitter" href="#"><i
                                class="fab fa-fw fa-twitter"></i></a></li>
                    <li class="list-inline-item"><a class="btn btn-white btn-sm shadow px-2 text-linkedin" href="#"><i
                                class="fab fa-fw fa-linkedin-in"></i></a></li>
                </ul>
            </div>
            <!-- Widget 1 END -->

            <!-- Widget 2 START -->
            <div class="col-lg-6">
                <div class="row g-4">
                    <!-- Link block -->
                    <div class="col-6 col-md-4">
                        <h5 class="mb-2 mb-md-4">Компания</h5>
                        <ul class="nav flex-column">
                            <li class="nav-item"><a class="nav-link" href="#">О Нас</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Контакты</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Публикации</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Вакансии</a></li>
                        </ul>
                    </div>

                    <!-- Link block -->
                    <div class="col-6 col-md-4">
                        <h5 class="mb-2 mb-md-4">Каталог</h5>
                        <ul class="nav flex-column">
                            <li class="nav-item"><a class="nav-link" href="#">Категории товаров</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Скидки</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Услуги</a></li>
                        </ul>
                    </div>


                </div>
            </div>
            <!-- Widget 2 END -->

            <!-- Widget 3 START -->
            <div class="col-lg-3">
                <h5 class="mb-2 mb-md-4">Contact</h5>
                <!-- Time -->
                <p class="mb-2">
                    <span class="h6 fw-light ms-2"> {{ getSystemPhone() }}</span>
                </p>

                <p class="mb-0">Email:<span class="h6 fw-light ms-2">itechno.uz@mail.ru</span></p>

                <div class="row g-2 mt-2">
                    <!-- Google play store button -->
                    <div class="col-6 col-sm-4 col-md-3 col-lg-6">
                        <a href="#"> <img src="assets/images/client/google-play.svg" alt=""> </a>
                    </div>
                    <!-- App store button -->
                    <div class="col-6 col-sm-4 col-md-3 col-lg-6">
                        <a href="#"> <img src="assets/images/client/app-store.svg" alt="app-store"> </a>
                    </div>
                </div> <!-- Row END -->
            </div>
            <!-- Widget 3 END -->
        </div><!-- Row END -->

        <!-- Divider -->
        <hr class="mt-4 mb-0">

        <!-- Bottom footer -->
        <div class="py-3">
            <div class="container px-0">
                <div class="d-md-flex justify-content-between align-items-center py-3 text-center text-md-left">
                    <!-- copyright text -->
                    <div class="text-primary-hover"><a href="#" class="text-body">© 2016-2022. ООО "itechno.uz" </a>
                    </div>
                    <!-- copyright links-->
                    <div class=" mt-3 mt-md-0">
                        <ul class="list-inline mb-0">
                            <li class="list-inline-item">
                                <!-- Language selector -->
                                <!-- <div class="dropup mt-0 text-center text-sm-end">
                                    <a class="dropdown-toggle nav-link" href="#" role="button" id="languageSwitcher"
                                       data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="fas fa-globe me-2"></i>Language
                                    </a>
                                    <ul class="dropdown-menu min-w-auto" aria-labelledby="languageSwitcher">
                                        <li><a class="dropdown-item me-4" href="#"><img class="fa-fw me-2"
                                                                                        src="assets/images/flags/uk.svg"
                                                                                        alt="">English</a></li>
                                        <li><a class="dropdown-item me-4" href="#"><img class="fa-fw me-2"
                                                                                        src="assets/images/flags/gr.svg"
                                                                                        alt="">German </a></li>
                                        <li><a class="dropdown-item me-4" href="#"><img class="fa-fw me-2"
                                                                                        src="assets/images/flags/sp.svg"
                                                                                        alt="">French</a></li>
                                    </ul>
                                </div> -->
                            </li>
                            <li class="list-inline-item"><a class="nav-link" href="#">Оферта</a></li>
                            <li class="list-inline-item"><a class="nav-link pe-0" href="#">Политика
                                    конфиденциальности</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- =======================
Footer END -->


<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="{{route('login')}}" method="POST">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Вход</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    @csrf
                    <div class="mb-3">
                        <label for="recipient-name" class="col-form-label">Номер телефона</label>
                        <input type="text" class="form-control" name="phone_number" required id="phone_number">
                    </div>
                    <div class="mb-3">
                        <label for="message-text" class="col-form-label">Пароль</label>
                        <input type="text" class="form-control" name="otp" required id="password">
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Отмена</button>
                    <button type="submit" class="btn btn-primary">Отправить</button>
                </div>
            </div>
        </form>
    </div>
</div>


<!-- Back to top -->
<div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

<!-- Bootstrap JS -->
<script src="{{asset('assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js')}}"></script>

<!-- Vendors -->
<script src="{{asset('assets/vendor/tiny-slider/tiny-slider.js')}}"></script>
<script src="{{asset('assets/vendor/glightbox/js/glightbox.js')}}"></script>

<!-- Template Functions -->
<script src="{{asset('assets/js/functions.js')}}"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>


<script>
    $("#alert").fadeTo(4000, 500).slideUp(500, function () {
        $("#alert").slideUp(500);
    });

    $(document).ready(function () {
        $('#table_id').DataTable({
            "searching": false,
            "language": {
                "paginate": {
                    'previous': '<span class="bi bi-arrow-left"></span>',
                    'next': '<span class="bi bi-arrow-right"><span>'
                },
                "lengthMenu": "Показать _MENU_ записей на странице",
                "zeroRecords": "Ничего не найдено - извините",
                "info": "Показаны страницы _PAGE_ из _PAGES_",
                "infoEmpty": "Нет доступных записей",
                "infoFiltered": "(отфильтровано из _MAX_ записей)"
            }
        });
    });

</script>

</body>

<!-- Mirrored from eduport.webestica.com/index-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 09 Jun 2022 06:17:22 GMT -->
</html>
