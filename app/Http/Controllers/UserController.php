<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
    public function login() {
        return view('loginPage');
    }
    
    public function adminDashboard(){
        return view('posAdminDashboard/dashboard');
    }

    public function adminProducts(){
        return view('posAdminDashboard/products');
    }
    
    public function adminRecords(){
        return view('posAdminDashboard/records');
    }
    
    public function adminStatistics(){
        return view('posAdminDashboard/statistics');
    }
    
    public function adminTransactions(){
        return view('posAdminDashboard/transactions');
    }
}
