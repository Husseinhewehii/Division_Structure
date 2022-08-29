<?php

namespace App\Http\Controllers;

use App\Models\Car;
use Illuminate\Http\Request;

class CarController extends Controller
{
    public function create()
    {
        return view('carcreate');
    }

    public function store(Request $request)
    {
        $car = new Car();
        $car->carcompany = $request->get('carcompany');
        $car->model = $request->get('model');
        $car->price = $request->get('price');
        $car->save();
        return redirect('car')->with('success', 'Car has been successfully added');
    }

    public function index()
    {
        $cars=Car::all();
        return view('carindex',compact('cars'));
    }

    public function edit($id)
    {
        $car = Car::find($id);
        return view('caredit',compact('car','id'));
    }

    public function update(Request $request, $id)
    {
        $car= Car::find($id);
        $car->carcompany = $request->get('carcompany');
        $car->model = $request->get('model');
        $car->price = $request->get('price');
        $car->save();
        return redirect('car')->with('success', 'Car has been successfully update');
    }

    public function destroy($id)
    {
        $car = Car::find($id);
        $car->delete();
        return redirect('car')->with('success','Car has been  deleted');
    }
}



interface Book{
    public function nextPage();
    public function previousPage();
}

class PaperBook implements Book{
    public function nextPage()
    {
        # code...
    }
    public function previousPage()
    {
        # code...
    }
}
