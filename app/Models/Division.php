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

    //boolean
    public function notEmployees()
    {
        return Employee::leftJoin('division_employees' , 'division_employees.employee_id', '=', 'employees.id')
        ->select("employees.*")
        ->where("division_employees.division_id", "!=", $this->id)
        ->orWhere("division_employees.division_id", null);
    }
}
