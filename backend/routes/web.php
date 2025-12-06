<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\DokumenController;
use App\Http\Controllers\StaffController;
use App\Http\Controllers\StrukturOrganisasiPhotoController; 

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return redirect('/admin');
});

Route::get('/dokumen/{dokumen}', [DokumenController::class, 'show'])->name('dokumen.show');
Route::get('/struktur/photo/{pejabat}', [StrukturOrganisasiPhotoController::class, 'show'])->name('struktur.photo');
