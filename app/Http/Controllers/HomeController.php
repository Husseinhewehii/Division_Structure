<?php

namespace App\Http\Controllers;

use App\Models\Division;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $division = Division::first();
        dd($division->departments);
        return view('home');
    }
}
