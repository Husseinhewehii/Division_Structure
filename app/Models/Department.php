<?php

namespace App\Models;

use App\Traits\EmployeesRelationTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    use HasFactory, EmployeesRelationTrait;

    private static $employees_relation_table = 'department_employees';
    private static $pivot_key = 'department_id';
}
