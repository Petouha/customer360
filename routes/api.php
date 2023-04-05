<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\UsersController;
use Illuminate\Http\Request;
use Illuminate\Routing\Controllers\Middleware;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
//http://customer360.test/api/users/v1/799.. ou quelque chose comme ça


Route::get('/users/v1',[UsersController::class, 'showAll'] );

Route::get('/users/packages/v1/{MSISDN}', [UsersController::class, 'packages']);

Route::post('/users/activate/v1', [UsersController::class, 'activate'])->middleware('auth');

Route::post('/users/migrate/v1/',[UsersController::class, 'migrate'])->middleware('auth');
//
Route::get('/users/v1/{MSISDN}',
        [UsersController::class, 'show'])->middleware('auth');

Route::middleware('login')->get('/user', function (Request $request) {
    return $request->user();
});

//public routes

// Route::post('/login',
// [AuthController::class, 'login']);

// Route::post('/register',
// [AuthController::class, 'register']);



// Route::post('/logout',
// [AuthController::class, 'logout']);

