<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\EmployeesController;
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
//http://customer360.test/apiv1/users/799.. ou quelque chose comme ça




Route::get('v1/users',[UsersController::class, 'showAll'] );

Route::get('v1/users/packages/{MSISDN}', [UsersController::class, 'packages']);

Route::post('v1/users/activate', [UsersController::class, 'activate']);

Route::post('v1/users/migrate/',[UsersController::class, 'migrate']);

Route::put('v1/employees/sale', [EmployeesController::class,'makeSale']);

Route::post('v1/employees/info',[EmployeesController::class,'show']);
//
Route::get('v1/users/{MSISDN}',
        [UsersController::class, 'show']);


Route::get('v1/users/reclamations/{MSISDN}',[UsersController::class,'reclamations']);


Route::middleware('login')->get('/user', function (Request $request) {
    return $request->user();
});


//using the AuthController
Route::post('v1/login',
[AuthController::class, 'login']);

// Route::post('/register',
// [AuthController::class, 'register']);



// Route::post('/logout',
// [AuthController::class, 'logout']);

