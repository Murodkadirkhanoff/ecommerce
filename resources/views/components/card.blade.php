<div class="card border-light action-trigger-hover border">
    <a href="{{route('products.show',[$product->id])}}">
        <!-- Image -->
        <img src="{{ env('MEDIA_URL') . getPhoto($product)}}" class="card-img-top"
             style="height: 300px; object-fit: cover" alt="course image">
        <!-- Ribbon -->
    </a>
    <!-- Card body -->
    <div class="card-body pb-0">
        <!-- Badge and favorite -->

        <!-- Title -->
        <h6 class="card-title text-truncate"><a>{{$product->name}}</a></h6>
        <!-- Rating -->
        <div class="d-flex justify-content-between mb-2">
            <div class="hstack gap-2">
                <p class="text-warning m-0">4.5<i class="fas fa-star text-warning ms-1"></i></p>
                <span class="small">(6500)</span>
            </div>
        </div>
        <!-- Time -->
        <div class="hstack gap-3">
            {{--            <span class="text-dark"><i class="far fa-clock text-danger me-2"></i>6h 56m</span>--}}

        </div>

        <div class="hstack gap-3">
            <span class="text-dark"><i
                    class="fas fa-clipboard-check text-orange me-2"></i>{{$product->in_stock == 0 ? "Нет в наличии" : "В наличии: " . $product->in_stock}}</span>
        </div>


    </div>
    <!-- Card footer -->
    <div class="card-footer pt-0">
        <hr>
        <!-- Avatar and Price -->
        <div class="d-flex justify-content-between align-items-center" style="height: 40px;">
            <!-- Avatar -->
            <div class="d-flex align-items-center">
                <div class="avatar avatar-sm">
                    <img class="avatar-img rounded-1" style="object-fit: contain"
                         src="{{ env('MEDIA_URL') . $product->brand->image}}"
                         alt="avatar">
                </div>
                <p class="mb-0 ms-2"><a href="#" class="text-dark">{{$product->brand->name}}</a></p>
            </div>
            <!-- Price -->
            <div>
                <h6 class="text-success mb-0    @if($product->in_stock > 0) item-show  @endif">
                    @if($product->is_discount)
                      <p class="text-danger text-decoration-line-through mb-0">@convert($product->price) UZS</p>
                      <p>@convert($product->discount_price) UZS</p>

                    @else
                        @convert($product->price) UZS
                    @endif
                </h6>
                @if($product->in_stock > 0)
                    <a href="{{route('add.to.cart', $product->id)}}" class="btn-sm btn-success-soft item-show-hover"><i
                            class="fas fa-shopping-cart me-2"></i>В корзину</a>
                @endif

            </div>
        </div>
    </div>

</div>
