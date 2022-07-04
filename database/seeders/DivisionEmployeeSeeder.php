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
        $notEmployees = $division->notEmployees()->get()->random(5);
        $division->employees()->attach($notEmployees);
    }
}
