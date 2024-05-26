<?php

namespace App\Http\Controllers;

use App\Models\Products;

class UserController extends Controller
{
    public function login()
    {
        return view('loginPage');
    }

    public function adminDashboard()
    {
        return view('posAdminDashboard.dashboard');
    }

    public function adminProducts()
    {
        $products = Products::orderBy('product_name')->get();
        return view('posAdminDashboard.products', compact('products'));
    }

    public function adminRecords()
    {
        return view('posAdminDashboard.records');
    }

    public function adminStatistics()
    {
        return view('posAdminDashboard.statistics');
    }

    public function adminTransactions()
    {
        return view('posAdminDashboard.transactions');
    }
}
