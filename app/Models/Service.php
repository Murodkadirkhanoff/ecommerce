<?php

namespace App\Models;

use CyrildeWit\EloquentViewable\Contracts\Viewable;
use CyrildeWit\EloquentViewable\InteractsWithViews;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model implements Viewable
{
    use HasFactory, InteractsWithViews;

    protected $guarded = [];

    public function scopeActive($query)
    {
        $query->where('status', 1);
    }
}
