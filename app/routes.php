<?php

//////////////////////////////   A D M I N   //////////////////////////////

Route::get('/admin', 'HomeController@showWelcome');
Route::post('/pre-Welcome', 'HomeController@preWelcome');
Route::post('/admin-login-store', 'Admin@admin_login_store');
Route::get('/admin-delete-worker/{id?}', 'WorkersController@destroy');
Route::post('/admin-edit-item/{id?}', 'CrudController@edit');
Route::get('/admin-login', 'HomeController@showWelcome');
Route::get('/admin-welcome', 'HomeController@welcome');
Route::get('/admin-mala', 'HomeController@litleTable');
Route::get('/admin-velika', 'HomeController@bigTable'); 
Route::post('/admin-save-item', 'CrudController@store');
Route::get('/admin-delete-item/{id?}', 'CrudController@destroy');
Route::get('/admin-find-item/{id}', 'CrudController@finding');
Route::get('/admin-find-worker/{id}', 'WorkersController@finding');
Route::post('/admin-update-item/{id?}', 'CrudController@update');
Route::post('/admin-update-worker/{id?}', 'WorkersController@update');
Route::post('/admin-save-worker', 'WorkersController@storeWorker');
Route::get('/workers', 'WorkersController@workers');
Route::get('/workers1', 'WorkersController@workers1');
Route::get('/workers2', 'WorkersController@workers2');
Route::get('/workers3', 'WorkersController@workers3');
Route::post('/admin-new-buyer', 'BuyersController@newBuyer');
Route::get('/admin-find-buyer/{id}', 'BuyersController@findBuyer');
Route::get('/admin-delete-buyer/{id}', 'BuyersController@deleteBuyer');
Route::post('/admin-update-buyer/{id}', 'BuyersController@updateBuyer');
Route::post('/admin-save-group', 'GroupController@saveGroup');
Route::get('/admin-delete-group/{id}', 'GroupController@deleteGroup');
Route::post('/admin-update-group/{id}', 'GroupController@updateGroup');
Route::get('/admin-find-group/{id}', 'GroupController@findGroup');
Route::get('/admin-list-group', 'GroupController@showGroup');
Route::post('/admin-new-product', 'ProductController@newProduct');
Route::post('/admin-update-product/{id}', 'ProductController@updateProduct');
Route::get('/admin-find-product/{id}', 'ProductController@findProduct');
Route::get('/admin-delete-product/{id}', 'ProductController@deleteProduct');
Route::get('/admin-list-items', 'ProductController@listProduct');




//////////////////////////////   L  I  V  E   //////////////////////////////


Route::get('/', 'HomeController@live');





//////////////////////////////   T  E  S  T   //////////////////////////////


Route::get('/test/{id?}', 'BuyersController@show');
Route::get('/sel', function(){
	return View::make('modals/confirm');
	}
);