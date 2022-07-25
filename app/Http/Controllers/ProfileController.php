<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class ProfileController extends Controller
{
    public function index()
    {
        $current_month = \App\Models\Order::whereMonth('created_at', now()->month)->where('customer_id', \Illuminate\Support\Facades\Auth::id())->sum('total');
        $prev_month = \App\Models\Order::whereMonth('created_at', now()->subMonth())->where('customer_id', \Illuminate\Support\Facades\Auth::id())->sum('total');
        $current_percent = get_percentage($current_month, $prev_month);

        return view('pages.profile.index', compact('current_month', 'prev_month', 'current_percent'));
    }

    public function editProfile()
    {
        if (\request()->isMethod('get')) {
            return view('pages.profile.edit_profile');
        } else {

            request()->validate([
                'surname' => 'required',
                'name' => 'required',
                'address' => 'required',
                'phone_number' => 'required',
            ]);

            $filename = Auth::user()->avatar;
            if (\request()->has('avatar')) {
                $filename = Storage::disk('admin')->put('/avatars', \request()->file('avatar'));
            }

            Auth::user()->update([
                'surname' => \request()->get('surname'),
                'name' => \request()->get('name'),
                'address' => \request()->get('address'),
                'avatar' => $filename,
                'phone_number' => \request()->get('phone_number')
            ]);

            return redirect()->back();

        }

    }

    public function removeAvatar()
    {
        $file = Auth::user()->avatar;
        Auth::user()->avatar = 'avatars/default.png';
        Storage::disk('admin')->delete($file);
        Auth::user()->save();
        return redirect()->back();
    }

    public function deleteProfile()
    {
        return view('pages.profile.delete_profile');
    }
}
