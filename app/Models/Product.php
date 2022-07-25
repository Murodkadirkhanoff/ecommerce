<?php

namespace App\Models;

use CyrildeWit\EloquentViewable\Contracts\Viewable;
use CyrildeWit\EloquentViewable\InteractsWithViews;
use Encore\Admin\Grid\Selectable;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model implements Viewable
{
    use HasFactory, InteractsWithViews;
    protected $guarded = [];
    protected $casts = [
        'tags' => 'array'
    ];

    public function attachments()
    {
        return $this->hasMany(Attachment::class);
    }


    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public function subcategory()
    {
        return $this->belongsTo(Category::class);
    }

    public function options()
    {
        return $this->hasMany(ProductOption::class);
    }

    public function ratings()
    {
        return $this->hasMany(Rating::class)->orderByDesc('id');
    }

    public function scopeActive($query)
    {
        $query->where('status', 1);
    }


}
