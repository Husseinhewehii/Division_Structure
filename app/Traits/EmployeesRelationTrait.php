<?php

namespace App\Traits;

use App\Models\Employee;

trait EmployeesRelationTrait{

    public function notEmployees()
    {
        return Employee::leftJoin(self::$employees_relation_table , self::$employees_relation_table.".employee_id", '=', 'employees.id')
        ->select("employees.*")
        ->where(self::$employees_relation_table.".".self::$pivot_key, "!=", $this->id)
        ->orWhere(self::$employees_relation_table.".".self::$pivot_key, null);
    }

    public function leaderEmployee()
    {
        return $this->belongsTo(Employee::class, 'leader', 'id', 'employees');
    }

    public function employees()
    {
        return $this->belongsToMany(Employee::class, self::$employees_relation_table);
    }
}