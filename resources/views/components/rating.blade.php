<ul class="list-inline mb-0">
    @for ($i = 0; $i < 5; $i++)
        @if($rating > $i)
            <li class="list-inline-item me-0"><i
                    class="fas fa-star text-warning"></i></li>
        @else
            <li class="list-inline-item me-0"><i
                    class="far fa-star text-warning"></i></li>
        @endif
    @endfor
</ul>


