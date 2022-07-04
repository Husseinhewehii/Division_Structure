<?php

namespace App\Http\Controllers;

use App\Models\Department;
use App\Models\Division;
use App\Models\Employee;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        // $division = Division::first();
        // dump($division->notEmployees()->first());

        $department = Department::first();
        dump($department->employees);
        return view('home');
    }
}
