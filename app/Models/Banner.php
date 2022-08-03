<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\EloquentSortable\Sortable;
use Spatie\EloquentSortable\SortableTrait;

class Banner extends Model implements Sortable
{
    use HasFactory,  SortableTrait;

    public function scopeActive($query)
    {
        $query->where('status', 1);
    }

    public function scopeOrdered($query)
    {
        $query->orderBy('order_number');
    }

    public $sortable = [
        'order_column_name' => 'order_number',
        'sort_when_creating' => true,
    ];

}
