<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function create() {
        return view('register');
    }

    public function store(Request $request) {

        $formFields=$request->validate(
            [
                'firstName'=>['required'],
                'lastName'=>['required'],
                'email'=>['required','email',Rule::unique('users','email')],
                'password'=>'required|confirmed|min:4',
                'registration'=>['required',Rule::unique('users','registration')],
                'groupId'=>'required',
                'managerId'
            ]
        );
        $formFields['password']=bcrypt($formFields['password']);

        $user= User::create($formFields);



        return redirect('/')->with('message', 'created and logged in');

    }

    public function logout(Request $request)
    {
        auth()->logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/')->with('message','logout');

    }

    public function login()
    {
        return view('login');
    }

    public function authenticate(Request $request)
    {
        $formFields=$request->validate(
            [

                'email'=>['required','email'],
                'password'=>'required'
            ]
        );

        if (auth()->attempt($formFields)) {
            $request->session()->regenerate();

            return redirect('/');
        }

        return back()->withErrors(['email' => 'Invalid'])
        ->onlyInput('email');
    }
}
