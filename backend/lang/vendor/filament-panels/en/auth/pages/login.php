<?php

return [

    'title' => 'Login Dashboard',

    'heading' => 'Login Dashboard',

    'actions' => [

        'register' => [
            'before' => 'or',
            'label' => 'sign up for an account',
        ],

        'request_password_reset' => [
            'label' => 'Forgot password?',
        ],

    ],

    'form' => [

        'email' => [
            'label' => 'Email address',
        ],

        'password' => [
            'label' => 'Password',
        ],

        'remember' => [
            'label' => 'Remember me',
        ],

        'actions' => [

            'authenticate' => [
                'label' => 'Login',
            ],

        ],

    ],

    'multi_factor' => [

        'heading' => 'Verify your identity',

        'subheading' => 'To continue Login, you need to verify your identity.',

        'form' => [

            'provider' => [
                'label' => 'How would you like to verify?',
            ],

            'actions' => [

                'authenticate' => [
                    'label' => 'Confirm Login',
                ],

            ],

        ],

    ],

    'messages' => [

        'failed' => 'Login gagal Email atau Password tidak terdaftar.',

    ],

    'notifications' => [

        'throttled' => [
            'title' => 'Too many login attempts',
            'body' => 'Please try again in :seconds seconds.',
        ],

    ],

];
