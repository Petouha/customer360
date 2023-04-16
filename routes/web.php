<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});








//lOGIN ROUTES

Route::get('/login',[UserController::class,'login'])->name('login');

Route::post('/users/authenticate', [UserController::class, 'authenticate']);

Route::get('/register',[UserController::class,'create']);

Route::post('/logout', [UserController::class, 'logout'])->middleware('auth');

Route::post('/users', [UserController::class, 'store']);

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
