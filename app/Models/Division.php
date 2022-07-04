<?php

namespace App\Models;

use App\Traits\EmployeesRelationTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Division extends Model
{
    use HasFactory, EmployeesRelationTrait;

    private static $employees_relation_table = 'division_employees';
    private static $pivot_key = 'division_id';

    //relations
    public function departments()
    {
        return $this->hasMany(Department::class);
    }

    //boolean
    
}
