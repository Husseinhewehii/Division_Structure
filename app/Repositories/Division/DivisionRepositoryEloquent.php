<?php

namespace App\Repositories\Division;

use App\Models\Division;

class DivisionRepositoryEloquent implements DivisionRepositoryInterface
{
    public function getDivisions()
    {   
        return Division::with(
            'leaderEmployee', 'employees',
            'departments', 'departments.leaderEmployee', 'departments.employees',
            'departments.teams', 'departments.teams.leaderEmployee', 'departments.teams.employees'
            )->get();
    }
}