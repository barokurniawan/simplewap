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

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Auth::routes();
Route::get('/home', 'ApplicationController@welcomePageHandler')->name('home');
Route::get('/', "ApplicationController@welcomePageHandler")->name("welcome_page");

Route::get('/shoutbox', 'ShoutboxController@indexHandler')->name('shoutbox');
Route::get('/blog', 'BlogController@indexHandler')->name('blog');

Route::get('/blog/read/{slug}.html', 'BlogController@readArticleHandler');
Route::get('/category/{slug}.html', 'BlogController@articleByCategoryHandler');

Route::post('/action/new-shout', "ShoutboxController@createShoutHandler");
Route::post('/action/new-comment', "CommentController@createCommentHandler");

Route::get("/external/redirect", "RedirectController@externalRedirectHandler");

Route::middleware("auth")->group(function () {
    Route::get('/dashboard', "PanelController@dashboardHandler")->name("dashboard");
    Route::get("dashboard/master-category", "PanelController@masterCategoryHandler")->name("master_category");
    Route::post("dashboard/master-category/create", "PanelController@createCategoryHandler");
    Route::post("dashboard/master-category/update", "PanelController@actionUpdateCategoryHandler");
    Route::get("dashboard/master-category/delete/{category_id}", "PanelController@deleteCategoryHandler");
    Route::get("dashboard/master-category/update/{category_id}", "PanelController@updateCategoryHandler");
});

Route::get('/logout', function () {
    Auth::guard()->logout();
    session()->invalidate();
    return redirect('/');
});

Route::get('/loads', function () {
    return back()->withErrors([
        "Kami belum siap untuk fitur download."
    ]);
});
