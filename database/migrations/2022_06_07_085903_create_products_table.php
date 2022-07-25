<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->foreignId('category_id')
                ->constrained('categories')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreignId('subcategory_id')
                ->constrained('categories')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreignId('brand_id')
                ->constrained('brands')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->string('name', 255);
            $table->integer('type')->default(1);
            $table->integer('status')->default(1);
            $table->jsonb('tags')->nullable();

            $table->float('price', 8, 2)->nullable();
            $table->integer('in_stock')->nullable();
            $table->string('guarantee')->nullable()->default('нет гарантии');

            $table->integer('is_discount')->default(0);
            $table->timestamp('discount_from')->nullable();
            $table->timestamp('discount_to')->nullable();
            $table->float('discount_price', 8, 2)->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
};
