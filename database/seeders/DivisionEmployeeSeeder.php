<?php

namespace Database\Seeders;

use App\Models\Division;
use App\Models\DivisionEmployee;
use App\Models\Employee;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DivisionEmployeeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $division = Division::first();
        $employees = Employee::all();
        // $firstEmployee = Employee::find(7);
        // $division->employees()->attach($firstEmployee);

        // dd($division->employees);
        dd($division->leaderEmployee);
    }
}
