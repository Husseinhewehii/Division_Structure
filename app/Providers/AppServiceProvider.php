<?php

namespace App\Providers;

use App\Repositories\Division\DivisionRepositoryEloquent;
use App\Repositories\Division\DivisionRepositoryInterface;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $this->app->bind(DivisionRepositoryInterface::class, DivisionRepositoryEloquent::class);
    }
}
