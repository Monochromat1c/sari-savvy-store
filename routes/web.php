<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Models\Products;


// Route::get('/', function () {
//     return view('welcome');
// });

Route::controller(UserController::class)->group(function () {
    Route::get('/', 'login')->name('login');
    // Route::post('/user/process/login', 'processLogin');
});

// Routes for admin
Route::controller(UserController::class)->group(function () {
    Route::get('/admin/dashboard', 'adminDashboard')->name('posAdminDashboard.dashboard');
    Route::get('/admin/products', 'adminProducts')->name('posAdminDashboard.products');
    Route::get('/admin/records', 'adminRecords')->name('admiposAdminDashboard.records');
    Route::get('/admin/statistics', 'adminStatistics')->name('posAdminDashboard.statistics');
    Route::get('/admin/transactions', 'adminTransactions')->name('posAdminDashboard.transactions');
});

// Route::get('/admin/dashboard', [UserController::class, 'adminDashboard'])->name('adminDashboard');
// Route::get('/admin/products', [UserController::class, 'adminProducts'])->name('admin.products');
// Route::get('/admin/records', [UserController::class, 'adminRecords'])->name('adminRecords');
// Route::get('/admin/statistics', [UserController::class, 'adminStatistics'])->name('adminStatistics');
// Route::get('/admin/transactions', [UserController::class, 'adminTransactions'])->name('adminTransactions');
