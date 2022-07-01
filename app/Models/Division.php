<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Division extends Model
{
    use HasFactory;

    //relations
    public function leaderEmployee()
    {
        return $this->belongsTo(Employee::class, 'leader', 'id', 'employees');
    }

    public function employees()
    {
        return $this->belongsToMany(DivisionEmployee::class);
    }

    public function departments()
    {
        return $this->hasMany(Department::class);
    }
}
