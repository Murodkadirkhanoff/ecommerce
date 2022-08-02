<?php

namespace App\Models;

use CyrildeWit\EloquentViewable\Contracts\Viewable;
use CyrildeWit\EloquentViewable\InteractsWithViews;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Promotion extends Model  implements Viewable
{
    use HasFactory, InteractsWithViews;

    public function products()
    {
        return $this->belongsToMany(Product::class);
    }

    public function services()
    {
        return $this->belongsToMany(Service::class);
    }

    public function scopeActive($query)
    {
        $query->where('status', 1);
    }


}
