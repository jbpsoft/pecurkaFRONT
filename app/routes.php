<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', 'HomeController@live');
Route::get('/admin', 'HomeController@showWelcome');
Route::post('/pre-Welcome', 'HomeController@preWelcome');
Route::post('/admin-login-store', 'Admin@admin_login_store');
Route::get('/admin-delete-item/{id?}', 'CrudController@destroy');
Route::get('/admin-delete-worker/{id?}', 'WorkersController@destroy');
Route::post('/admin-edit-item/{id?}', 'CrudController@edit');
Route::get('/admin-login', 'HomeController@showWelcome');
Route::get('/admin-welcome', 'HomeController@welcome');
Route::get('/admin-mala', 'HomeController@litleTable');
Route::get('/admin-velika', 'HomeController@bigTable'); 
Route::post('/admin-save-item', 'CrudController@store');
Route::get('/admin-find-item/{id}', 'CrudController@finding');
Route::get('/admin-find-worker/{id}', 'WorkersController@finding');
Route::post('/admin-update-item/{id?}', 'CrudController@update');
Route::post('/admin-update-worker/{id?}', 'WorkersController@update');
Route::post('/admin-save-worker/{id?}', 'WorkersController@storeWorker');
Route::get('/workers', 'WorkersController@workers');
Route::get('/workers1', 'WorkersController@workers1');
Route::get('/workers2', 'WorkersController@workers2');
Route::post('/admin-new-buyer', 'BuyersController@newBuyer');
Route::post('/admin-update-buyer/{id}', 'BuyersController@updateBuyer');


Route::get('/test/{id?}', 'BuyersController@show');
Route::get('/sel', function(){
	return View::make('sel');
	}
);