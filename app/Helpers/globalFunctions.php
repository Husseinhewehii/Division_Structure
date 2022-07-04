<?php

if(!function_exists("assets")){
    function assets($path){
        return url("assets/$path");
    }
 }

 if(!function_exists("seed_organization_with_employees")){
    function seed_organization_with_employees($model){
        $organizations = $model::all();
        $organizations->each(fn($organization) => $organization->employees()->attach($organization->notEmployees()->get()->random(rand(3,8))));
    }
 }