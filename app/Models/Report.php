<?php

namespace App\Models;


use Encore\Admin\Facades\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Report extends Model
{
    use HasFactory;

    protected function serializeDate(\DateTimeInterface $date)
    {
        // you may give whatever format you want
        return $date->translatedFormat('d M Y H:i');
    }

    public function owner()
    {
        return $this->belongsTo(get_class(Admin::user()), 'created_by');
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function customer()
    {
        return $this->belongsTo(User::class);
    }

    public function vendor()
    {
        return $this->belongsTo(Vendor::class);
    }

}
