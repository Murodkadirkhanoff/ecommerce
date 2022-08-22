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
        Schema::create('reports', function (Blueprint $table) {
            $table->id();
            $table->foreignId('created_by')
                ->constrained('admin_users')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreignId('product_id')
                ->constrained('products')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreignId('customer_id')
                ->constrained('users')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreignId('vendor_id')
                ->constrained('vendors')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->float('quantity');
            $table->string('unit');


            $table->float('prime_cost');
            $table->float('sale_cost');
            $table->float('other_costs');
            $table->float('benefit');
            $table->timestamp('delivered_at');
            $table->text('comment');
            $table->string('order_source');
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
        Schema::dropIfExists('reports');
    }
};
