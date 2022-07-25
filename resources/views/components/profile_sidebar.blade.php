<nav class="navbar navbar-light navbar-expand-xl mx-0">
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
         aria-labelledby="offcanvasNavbarLabel">
        <!-- Offcanvas header -->
        <div class="offcanvas-header bg-light">
            <h5 class="offcanvas-title" id="offcanvasNavbarLabel">My profile</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                    aria-label="Close"></button>
        </div>
        <!-- Offcanvas body -->
        <div class="offcanvas-body p-3 p-xl-0">
            <div class="bg-dark border rounded-3 pb-0 p-3 w-100">
                <!-- Dashboard menu -->
                <div class="list-group list-group-dark list-group-borderless">
                    <a class="list-group-item @if(\Route::currentRouteName() == 'profile') active  @endif" href="{{route('profile')}}"><i
                            class="bi bi-ui-checks-grid fa-fw me-2"></i>Статистика</a>
                    <a class="list-group-item @if(\Route::currentRouteName() == 'orders') active  @endif" href="{{route('orders')}}"><i
                            class="bi bi-basket fa-fw me-2"></i>Мои заказы</a>
                    <a class="list-group-item @if(\Route::currentRouteName() == 'edit.profile') active  @endif" href="{{route('edit.profile')}}"><i
                            class="bi bi-question-diamond fa-fw me-2"></i>Профиль</a>
                    <a class="list-group-item @if(\Route::currentRouteName() == 'delete.profile') active  @endif" href="{{route('delete.profile')}}"><i
                            class="bi bi-trash fa-fw me-2"></i>Удалит профиль</a>
                    <form action="{{route('logout')}}" method="POST">
                        @csrf
                        <button type="submit"
                                class="list-group-item text-danger bg-danger-soft-hover"
                                href="sign-in.html"><i
                                class="fas fa-sign-out-alt fa-fw me-2"></i>Выйти
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</nav>
