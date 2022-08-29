<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;

use Jenssegers\Mongodb\Eloquent\Model;
use Jenssegers\Mongodb\Eloquent\SoftDeletes as EloquentSoftDeletes;

class Car extends Model
{
    use HasFactory, EloquentSoftDeletes;

    protected $connection = 'mongodb';

    protected $fillable = [
        'carcompany', 'model','price'
    ];
}
