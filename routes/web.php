<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::controller(UserController::class)->group(function () {
    Route::get('/', 'login')->name('login');
    // Route::post('/user/process/login', 'processLogin');
});

// Routes for admin
Route::get('/admin/dashboard', [UserController::class, 'adminDashboard'])->name('adminDashboard');
Route::get('/admin/products', [UserController::class, 'adminProducts'])->name('adminProducts');
Route::get('/admin/records', [UserController::class, 'adminRecords'])->name('adminRecords');
Route::get('/admin/statistics', [UserController::class, 'adminStatistics'])->name('adminStatistics');
Route::get('/admin/transactions', [UserController::class, 'adminTransactions'])->name('adminTransactions');