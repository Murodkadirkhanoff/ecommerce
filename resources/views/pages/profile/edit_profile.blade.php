<x-layout>
    <main>

        <!-- =======================
        Page Banner START -->
        <section class="pt-0">
            <!-- Main banner background image -->
            <div class="container-fluid px-0">
                <div class="bg-blue h-100px h-md-200px rounded-0"
                     style="background:url(assets/images/pattern/04.png) no-repeat center center; background-size:cover;">
                </div>
            </div>
            <div class="container mt-n4">
                <div class="row">
                    <!-- Profile banner START -->
                    <div class="col-12">
                        <div class="card bg-transparent card-body p-0">
                            <div class="row d-flex justify-content-between">
                                <!-- Avatar -->
                                <div class="col-auto mt-4 mt-md-0">
                                    <div class="avatar avatar-xxl mt-n3">
                                        <img class="avatar-img rounded-circle border border-white border-3 shadow"
                                             src="{{ getAvatar() }}" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Profile banner END -->

                        <!-- Advanced filter responsive toggler START -->
                        <!-- Divider -->
                        <hr class="d-xl-none">
                        <div class="col-12 col-xl-3 d-flex justify-content-between align-items-center">
                            <a class="h6 mb-0 fw-bold d-xl-none" href="#">Menu</a>
                            <button class="btn btn-primary d-xl-none" type="button" data-bs-toggle="offcanvas"
                                    data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                                <i class="fas fa-sliders-h"></i>
                            </button>
                        </div>
                        <!-- Advanced filter responsive toggler END -->
                    </div>
                </div>
            </div>
        </section>
        <!-- =======================
        Page Banner END -->

        <!-- =======================
        Page content START -->
        <section class="pt-0">
            <div class="container">
                <div class="row">
                    <!-- Left sidebar START -->
                    <div class="col-xl-3">
                        <!-- Responsive offcanvas body START -->
                    @include('components.profile_sidebar')
                    <!-- Responsive offcanvas body END -->
                    </div>
                    <!-- Left sidebar END -->

                    <!-- Main content START -->
                    <div class="col-xl-9">


                        <div class="card bg-transparent border rounded-3">
                            <!-- Card header -->
                            <div class="card-header bg-transparent border-bottom">
                                <h3 class="card-header-title mb-0">Редактировать профиль</h3>
                            </div>
                            <!-- Card body START -->
                            <div class="card-body">
                                <!-- Form -->
                                <form class="row g-4" action="{{route('edit.profile')}}" method="POST"
                                      enctype="multipart/form-data">
                                @csrf

                                <!-- Profile picture -->
                                    <div class="col-12 justify-content-center align-items-center">
                                        <label class="form-label">Фото профиля</label>
                                        <div class="d-flex align-items-center" >
                                            <label class="position-relative me-4" for="uploadfile-1"
                                                   title="Replace this pic">
                                                <!-- Avatar place holder -->
                                                <span class="avatar avatar-xl">
											<img style="cursor: pointer"    D id="uploadfile-1-preview"
                                                 class="avatar-img rounded-circle border border-white border-3 shadow"
                                                 src="{{  getAvatar()  }}" alt="">
										</span>

                                            @if(\Illuminate\Support\Facades\Auth::user()->avatar != 'avatars/default.png')
                                                <!-- Remove btn -->
                                                    <a href="{{route('remove.avatar')}}" class="uploadremove"><i
                                                            class="bi bi-x text-white"></i></a>
                                                @endif
                                            </label>
                                            <!-- Upload button -->

                                            <input id="uploadfile-1" class="form-control d-none" name="avatar"
                                                   type="file">
                                        </div>
                                    </div>


                                    <div class="col-md-6">
                                        <label class="form-label">Фамилия</label>
                                        <input type="text" class="form-control"
                                               value="{{\Illuminate\Support\Facades\Auth::user()->surname}}"
                                               name="surname"
                                               placeholder="Фамилия">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Имя</label>
                                        <input type="text" class="form-control"
                                               value="{{\Illuminate\Support\Facades\Auth::user()->name}}"
                                               name="name"
                                               placeholder="Имя">
                                    </div>


                                    <!-- Phone number -->
                                    <div class="col-md-6">
                                        <label class="form-label">Номер телефона</label>
                                        <input type="text" class="form-control"
                                               value="{{\Illuminate\Support\Facades\Auth::user()->phone_number}}"
                                               name="phone_number"
                                               placeholder="Номер телефона">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Адрес</label>
                                        <input class="form-control" name="address" type="text"
                                               value="{{\Illuminate\Support\Facades\Auth::user()->address}}">
                                    </div>

                                    <!-- Save button -->
                                    <div class="d-sm-flex justify-content-end">
                                        <button type="submit" class="btn btn-primary mb-0">Сохранить изменения</button>
                                    </div>
                                </form>
                            </div>
                            <!-- Card body END -->
                        </div>


                    </div>
                    <!-- Main content END -->
                </div><!-- Row END -->
            </div>
        </section>
        <!-- =======================
        Page content END -->

    </main>
</x-layout>
