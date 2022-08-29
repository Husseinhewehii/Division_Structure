<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;

use Illuminate\Database\Eloquent\SoftDeletes;
use Jenssegers\Mongodb\Eloquent\Model;
use Jenssegers\Mongodb\Eloquent\SoftDeletes as EloquentSoftDeletes;
use Spatie\Activitylog\Traits\LogsActivity;

class Car extends Model
{
    use HasFactory, EloquentSoftDeletes, LogsActivity;

    protected $connection = 'mongodb';

    protected $fillable = [
        'carcompany', 'model','price'
    ];
}
