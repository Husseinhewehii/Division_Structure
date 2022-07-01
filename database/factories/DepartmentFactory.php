<?php

namespace Database\Factories;

use App\Models\Division;
use App\Models\Employee;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Department>
 */
class DepartmentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $employees = Employee::pluck("id");
        $divisions = Division::pluck("id");

        return [
            'name' => $this->faker->name()." department",
            'leader' => $employees->random(),
            'division_id' => $divisions->random(),
        ];
    }
}
