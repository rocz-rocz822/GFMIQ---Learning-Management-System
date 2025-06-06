<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Auth\Notifications\ResetPassword;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;
use Illuminate\View\View;

class PasswordResetLinkController extends Controller
{
    /**
     * Display the password reset link request view.
     */
    public function create(): View
    {
        return view('admin.auth.forgot-password');
    }

    /**
     * Handle an incoming password reset link request.
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request): RedirectResponse
    {
        $email = strtolower(trim($request->input('email')));
        
        $request->merge(['email' => $email]);

        $request->validate([
            'email' => ['required', 'email'],
        ]);

        $status = Password::broker('admins')->sendResetLink(
            $request->only('email'),
            function ($user, string $token) {
                $notification = new ResetPassword($token);
                $notification->createUrlUsing(function () use ($user, $token) {
                    return route('admin.password.reset', ['token' => $token, 'email' => $user->email]);
                });
                $user->notify($notification);
            }
        );

        return $status === Password::RESET_LINK_SENT
            ? back()->with('status', 'We have emailed your password reset link!')
            : back()->withInput($request->only('email'))
                    ->withErrors(['email' => 'Unable to send reset link to that email address.']);
    }
}
