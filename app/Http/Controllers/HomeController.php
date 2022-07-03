<?php

namespace App\Http\Controllers;

use App\Models\Division;
use App\Models\Employee;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $division = Division::first();
        // $emp = Employee::where("id", 2)->first();
        // $divEmpsIDs = $division->employees->pluck("id")->toArray();
        // $emps = Employee::whereNotIn("id", $divEmpsIDs)->get();
        // dd($emps);

        // $emps = Employee::leftJoin('division_employees' , 'division_employees.employee_id', '=', 'employees.id')
        // ->select("employees.*")
        // ->where("division_employees.division_id", "!=", $division->id)
        // ->orWhere("division_employees.division_id", null)
        // ->limit(5)
        // ->get();

        $emps = $division->notEmployees()->get()->random(5);
        dump($emps);
        // dd($division->employees);
        return view('home');
    }
}
