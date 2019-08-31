<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Illuminate\Support\Facades\Route;

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/shoutbox', 'ShoutboxController@indexHandler')->name('shoutbox');
Route::get('/blog', 'BlogController@indexHandler')->name('blog');

Route::get('/', "ApplicationController@welcomePageHandler")->name("welcome_page");

Route::post('/action/new-shout', "ShoutboxController@createShoutHandler");

Route::get("/external/redirect", "RedirectController@externalRedirectHandler");
