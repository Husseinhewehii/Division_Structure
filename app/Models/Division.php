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
        return $this->belongsToMany(Employee::class, 'division_employees');
    }

    public function departments()
    {
        return $this->hasMany(Department::class);
    }
}
