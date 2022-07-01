<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;

    //relations
    public function divisions()
    {
        $this->belongsToMany(Division::class);
    }
}
