<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OtpController extends Controller
{
    public function generateOtp()
    {

    }

    public function login(Request $request)
    {
        $request->validate([
            'phone_number' => 'required',
            'otp' => 'required'
        ]);

        $user = User::where('phone_number', $request->phone_number)->first();

        if ($user == null) {
            $user = User::create([
                'phone_number' => $request->phone_number
            ]);

        }
        Auth::loginUsingId($user->id);
        return redirect()->back();
    }

    public function logout()
    {
        Auth::logout();

        return redirect('/');
    }

    public function editProfile(Request $request)
    {
        dd($request->all());
    }


}
