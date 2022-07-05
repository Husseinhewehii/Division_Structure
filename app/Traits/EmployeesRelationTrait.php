<?php

namespace App\Traits;

use App\Models\Employee;

trait EmployeesRelationTrait{

    public function notEmployees()
    {
        return Employee::whereNot('id', $this->leader)
        ->whereRaw(sprintf("id NOT IN (SELECT employees.id FROM employees LEFT join %s on %s.`employee_id` = `employees`.`id` where %s.%s = %s)", self::$employees_relation_table, self::$employees_relation_table, self::$employees_relation_table, self::$pivot_key, $this->id))
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


// select * from `employees` where id NOT IN 
// (SELECT employees.id FROM employees LEFT join `division_employees` on `division_employees`.`employee_id` = `employees`.`id` where `division_employees`.`division_id` = 2);