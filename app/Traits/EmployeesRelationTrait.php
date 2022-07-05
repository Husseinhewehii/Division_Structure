<?php

namespace App\Traits;

use App\Models\Employee;

trait EmployeesRelationTrait{

    public function notEmployees()
    {
        $pivotTable = self::$employees_relation_table;
        $pivotKey = self::$pivot_key;

        return Employee::whereNot('id', $this->leader)
        ->whereRaw("id NOT IN (SELECT employees.id FROM employees LEFT join $pivotTable on $pivotTable.`employee_id` = `employees`.`id` where $pivotTable.$pivotKey =  $this->id)")
        ->get();
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