<?php

namespace App\Repositories\Division;

use App\Models\Division;

class DivisionRepositoryEloquent implements DivisionRepositoryInterface
{
    public function getDivisions()
    {   
        return Division::with('departments')->get();
    }
}