<?php

namespace App\Http\Controllers;

use App\Models\User;
use phpseclib3\Crypt\Hash;
use Illuminate\Http\Request;
use App\Traits\HttpResponses;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\LoginUserRequest;
use App\Http\Requests\StoreUserRequest;

class AuthController extends Controller
{
   use HttpResponses;

   public function login(LoginUserRequest $request)
   {

    $formFields=$request->validate(
        [

            'email'=>['required','email'],
            'password'=>'required'
        ]
    );
        $group = DB::select("SELECT groupId 
        FROM users JOIN groups ON groups.id=users.groupId 
        WHERE email ='".$request->email."';");

        if (auth()->attempt($formFields)) 
        {
            if ($group[0]->groupId == 1) 
            {
                $json = 
                [
                    'auth' =>  true,
                    'message' => 'authenticated' 
                ];
                return response()->json($json);
            }
            else {
                $json = 
                [
                    'auth' =>  false,
                    'message' => 'Access Denied' 
                ];
                return response()->json($json);
            }
        }
        else{
            return response()->json(
            [
                'auth' =>  false,
                'message' => 'Credentials do not match' 
            ]);
        }
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
