<?php

Route::get('/', 'Gabized\Front\FrontController@index');

Route::get('pagina/{alias}', 'Gabized\Front\FrontController@page');

Route::get('search', 'Gabized\Front\FrontController@search');

Route::post('/', 'Gabized\Front\FrontController@contact');

//wildcards to catch wrong links
Route::get('{directlink}', 'Gabized\Front\FrontController@directlink');

 ?>
