<?php

namespace App\Repositories\Division;

use App\Models\Division;

class DivisionRepositoryEloquent implements DivisionRepositoryInterface
{
    public function getDivisions()
    {   
        return Division::with([
            'leaderEmployee', 'employees:firstName,lastName',
            'departments' => ['leaderEmployee', 'employees:firstName,lastName'], 
            'departments.teams' => ['leaderEmployee', 'employees:firstName,lastName']
            ])->get();
    }
}