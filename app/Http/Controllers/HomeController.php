<?php

namespace App\Http\Controllers;

use App\Repositories\Division\DivisionRepositoryInterface;

class HomeController extends Controller
{
    public function __construct(
        public DivisionRepositoryInterface $divisionRepository,
    ) {
    }

    public function index()
    {
        $divisions = $this->divisionRepository->getDivisions();

        return view('home', ['divisions' => $divisions]);
    }
}
