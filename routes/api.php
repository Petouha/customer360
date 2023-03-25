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
//http://customer360.test/api/users/1 ou quelque chose comme ça
Route::get('/users/v1/{MSISDN}', [UsersController::class, 'show']);

Route::get('/users/v1',[UsersController::class, 'showAll'] );

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
