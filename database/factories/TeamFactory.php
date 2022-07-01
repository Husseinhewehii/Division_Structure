<?php

namespace Database\Factories;

use App\Models\Department;
use App\Models\Employee;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Team>
 */
class TeamFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $employees = Employee::pluck("id");
        $departments = Department::pluck("id");

        return [
            'name' => $this->faker->name()." team",
            'leader' => $employees->random(),
            'department_id' => $departments->random(),
        ];
    }
}
