<?php

namespace gabized\front;

use Illuminate\Support\ServiceProvider;

class frontServiceProvider extends ServiceProvider {
    /**
     * Perform post-registration booting of services.
     *
     * @return void
     */
    public function boot() {
        include __DIR__.'/routes/web.php';
        //include __DIR__.'/requests/ContactFormRequest.php';
        $this->app->make('gabized\front\FrontController');
    }

    /**
     * Register any package services.
     *
     * @return void
     */
    public function register() {
        $this->loadViewsFrom(__DIR__.'/views', 'front');
    }
}
