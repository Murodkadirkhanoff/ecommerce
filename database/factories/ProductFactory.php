<?php

namespace Database\Factories;

use App\Models\Brand;
use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            "name" => $this->faker->name,
            "category_id" => Category::factory(),
            "subcategory_id" => Category::factory(),
            "brand_id" => rand(2,8),
            "status" =>1,
            "price" => $this->faker->numerify,
            "in_stock" => rand(1,20)
        ];
    }
}
