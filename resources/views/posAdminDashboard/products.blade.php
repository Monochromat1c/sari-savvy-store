@extends('layouts.main')
@section('content')
<link rel="stylesheet" href="/assets/css/adminProducts.css">
<title>Products</title>

<section class="adminDashboardBody kld--display-flex">
    <section class="mobileSidebar kld--display-none">

    </section>
    <section class="kld--site kld--min-width-dvw-100">
        <header class="kld--display-flex kld--align-items-center adminDashboardNavbar custom-pattern">
            <section class="adminNavbarContent kld--navbar kld--display-flex kld--align-items-center">
                <a href="/admin/dashboard">
                    <p class="kld--text-color-white kld--site-title dashboardTitle">Sari-Savvy Store</p>
                </a>
                <ul class="kld--text-color-white kld--display-flex kld--align-items-center navbarLink">
                    <li class="kld--padding-1"><a href="#"
                            class="kld--text-color-info kld--text-hover-info-light-4">Products</a></li>|
                    <li class="kld--padding-1"><a href="/admin/records"
                            class="kld--text-color-white kld--text-hover-info-light-4">Records</a></li>|
                    <li class="kld--padding-1"><a href="/admin/statistics"
                            class="kld--text-color-white kld--text-hover-info-light-4">Statistics</a></li>|
                    <li class="kld--padding-1"><a href="/admin/transactions"
                            class="kld--text-color-white kld--text-hover-info-light-4">Transactions</a></li>
                </ul>
                <section class="navbarProfile kld--text-color-white">
                    Diestro, Charles Manuel <span class="kld--text-color-info">&#8711</span>
                </section>
            </section>
            <section class="mobileHamburger kld--margin-right-2">
                <button type="button" class="hamburgerIcon">
                    <i class="fa-solid fa-bars kld--font-size-large kld--text-color-white"></i>
                </button>
            </section>
        </header>
        <main>
            <section class="kld--container">
                <div class="header kld--margin-top-2">
                    <h1 class="kld--text-color-white kld--text-align-center">Available Products</h1>
                </div>
                <div class="table-navbar">
                    <div class="search-bar">
                        <form id="search-bar-container" class="search-bar-container " action="" method="GET">
                            <input class="search-bar-input" type="text" name="q" value="" placeholder="Search for products...">
                            <button class="search-button" type="submit">
                                <i class="fa-solid fa-magnifying-glass kld--background-color-white"></i>
                            </button>
                        </form>
                    </div>
                    <!-- <div class="pagination kld--background-color-blue">
                        pagination
                    </div> -->
                </div>
                <div class="products-table kld--margin-bottom-2">
                    <table class="">
                        <thead class="">
                            <tr class="sticky">
                                <th>Id</th>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <tbody id="" class="">
                            @foreach($products as $key => $product)
                                <tr
                                    class="table-row{{ $loop->last ? ' last-row' : '' }}">
                                    <td
                                        class="{{ $loop->last ? 'first-td-last-row' : '' }}">
                                        {{ $product->product_id }}</td>
                                    <td>{{ $product->product_name }}</td>
                                    <td>{{ $product->quantity }}</td>
                                    <td
                                        class="{{ $loop->last ? 'last-td-last-row' : '' }}">
                                        {{ $product->price }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </section>
        </main>
    </section>
</section>

@endsection
