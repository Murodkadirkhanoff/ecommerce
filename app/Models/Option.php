<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Option extends Model
{
    protected $guarded = [];
    use HasFactory;

//    public function images()
//    {
//        return $this->hasMany(OptionImages::class);
//    }

    public function setImagesAttribute($pictures)
    {
        if (is_array($pictures)) {
            $this->attributes['images'] = json_encode($pictures);
        }
    }

    public function getImagesAttribute($pictures)
    {
        return json_decode($pictures, true);
    }

    public function products()
    {
        return $this->belongsToMany(Product::class);
    }

}
