<?php

namespace App\Http\Controllers;

use App\Repositories\Division\DivisionRepositoryInterface;
use Illuminate\Http\Request;

class HomeController extends Controller
{
   
    public function __construct(
        public DivisionRepositoryInterface $divisionRepository,
    ){}
    
    public function index()
    {
        $divs = $this->divisionRepository->getDivisions();
        dump($divs);
        return view('home');
    }
}
