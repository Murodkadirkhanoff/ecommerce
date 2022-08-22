<?php

namespace Database\Factories;

use App\Models\Report;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Report>
 */
class ReportFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

    protected $model = Report::class;

    public function definition()
    {
        $order_sources = [
            'olx',
            'instagram',
            'telegram',
            'facebook',
            'youtube',
            'recommendation',
            'web_site'
        ];
        $quantity = $this->faker->randomFloat(0, 1, 20);
        $prime_cost = $this->faker->randomFloat(0, 1000000, 20000000);
        $sale_cost = $prime_cost + 500000;
        $other_costs = $this->faker->randomFloat(0, 10000, 300000);
        return [
            'created_by' => $this->faker->numberBetween(1, 2),
            'product_id' => $this->faker->numberBetween(113, 149),
            'customer_id' => $this->faker->numberBetween(1, 5),
            'vendor_id' => $this->faker->numberBetween(1, 2),
            'quantity' => $quantity,
            'unit' => $this->faker->randomElement(['Штук', 'Метр', 'Бухта']),
            'prime_cost' => $prime_cost,
            'sale_cost' => $sale_cost,
            'other_costs' => $this->faker->randomFloat(0, 10000, 300000),
            'benefit' => ($sale_cost * $quantity) - ($prime_cost * $quantity) - $other_costs,
            'delivered_at' => $this->faker->date(),
            'order_source' => $this->faker->randomElement($order_sources),
            'is_completed' => $this->faker->numberBetween(0, 1),
            'total_sale_cost' => $sale_cost * $quantity,
        ];
    }
}
