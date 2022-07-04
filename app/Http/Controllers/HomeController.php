<?php

namespace App\Http\Controllers;

use App\Models\Department;
use App\Models\Division;
use App\Models\Employee;
use App\Models\Team;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        // $division = Division::first();
        // dump($division->notEmployees()->first());

        // $department = Department::first();
        // dump($department->employees);

        $team = Team::first();
        dump($team->employees);
        return view('home');
    }
}
