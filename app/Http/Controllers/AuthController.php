<?php

namespace App\Http\Controllers;

use App\Models\User;
use phpseclib3\Crypt\Hash;
use Illuminate\Http\Request;
use App\Traits\HttpResponses;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\LoginUserRequest;
use App\Http\Requests\StoreUserRequest;

class AuthController extends Controller
{
   use HttpResponses;

   public function login(LoginUserRequest $request)
   {

    $request->validated($request->all());

    if (!Auth::attempt($request->only('email','password'))) {
        return $this->error('','Credentials do not match',401);
    }

    $user = User::where('email', $request->email)->first();

    return $this->success(
        [
            'user'=>$user,
            'token'=>$user->createToken('API token of '.$user->name)->plainTextToken
        ]
    );

   }

   public function register(StoreUserRequest $request)
   {

    $request->validated($request->all());

    $user = User::create(
        [
                'firstName'=>$request->firstName,
                'lastName'=>$request->lastName,
                'email'=>$request->email,
                'password'=>bcrypt($request->password),
                'registration'=>$request->registration,
                'groupId'=>$request->groupId,
                'managerId'=>$request->managerId,
        ]
    );

    return $this->success([
        'user' => $user,
        'token' => $user->createToken('API TOKEN'.$user->name)->plainTextToken
    ]);

   }

   public function logout()
   {
        Auth::user()->currentAccessToken()->delete();

        return $this->success([
            'message' => 'logged out'
        ]);
   }
}
