@extends('layouts.main')
@section('content')
<link rel="stylesheet" href="/assets/css/adminDashboard.css">
<title>Welcome!</title>

<section class="adminDashboardBody kld--display-flex">
    <section class="mobileSidebar kld--display-none">

    </section>
    <section class="kld--site kld--min-width-dvw-100">
        <header class="kld--display-flex kld--align-items-center adminDashboardNavbar custom-pattern">
            <section class="adminNavbarContent kld--navbar kld--display-flex kld--align-items-center">
                <a href="/admin/dashboard">
                    <p class="kld--text-color-white kld--site-title dashboardTitle">Sari-Savvy Store</p>
                </a>
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
                <section class="kld--margin-top-2 kld--margin-bottom-2">
                        <section class="card-container">
                            <a href="/admin/products" class="admin-dashboard-card-products admin-dashboard-card-products-hover card_product">
                                <div class="admin-dashboard-card-products-body">
                                    <img src="/assets/img/products-icon.png" width="123" height="123" alt=""
                                        class="card-image">
                                    <h2 class="kld--text-color-white kld--margin-bottom-1 nowrap">Products</h2>
                                    <p class="kld--text-color-white">Browse and manage the inventory of available items
                                        in
                                        the
                                        store. Easily add,
                                        update,
                                        or remove products as needed.
                                    </p>
                                </div>
                                <footer
                                    class="kld--text-align-center kld--text-color-white admin-dashboard-card-products-footer">
                                    Click here to view.
                                </footer>
                            </a>
                            <a href="/admin/records" class="admin-dashboard-card-records admin-dashboard-card-records-hover card_product">
                                <div class="admin-dashboard-card-records-body">
                                    <img src="/assets/img/records-icon.png" width="123" height="123" alt=""
                                        class="card-image">
                                    <h2 class="kld--text-color-white kld--margin-bottom-1 nowrap">Records</h2>
                                    <p class="kld--text-color-white">Access and maintain the database of users and
                                        employees. View, edit, or delete records to keep information up-to-date.
                                    </p>
                                </div>
                                <footer
                                    class="kld--text-align-center kld--text-color-white admin-dashboard-card-records-footer">
                                    Click here to view.
                                </footer>
                            </a>
                            <a href="/admin/statistics"
                                class="admin-dashboard-card-statistics admin-dashboard-card-statistics-hover card_product">
                                <div class="admin-dashboard-card-statistics-body">
                                    <img src="/assets/img/statistics-icon.png" width="123" height="123" alt=""
                                        class="card-image kld--padding-1">
                                    <h2 class="kld--text-color-white kld--margin-bottom-1 nowrap">Statistics</h2>
                                    <p class="kld--text-color-white">View detailed analytics and performance metrics of
                                        the store. Track sales trends, inventory levels, and more.
                                    </p>
                                </div>
                                <footer
                                    class="kld--text-align-center kld--text-color-white admin-dashboard-card-statistics-footer">
                                    Click here to view.
                                </footer>
                            </a>
                            <a href="/admin/transactions"
                                class="admin-dashboard-card-transactions admin-dashboard-card-transactions-hover card_product">
                                <div class="admin-dashboard-card-transactions-body">
                                    <img src="/assets/img/transactions-icon.png" width="123" height="123" alt=""
                                        class="card-image kld--padding-1">
                                    <h2 class="kld--text-color-white kld--margin-bottom-1 nowrap">Transactions</h2>
                                    <p class="kld--text-color-white">Monitor and review all store transactions. Manage
                                        sales, returns, and other financial activities efficiently.
                                    </p>
                                </div>
                                <footer
                                    class="kld--text-align-center kld--text-color-white admin-dashboard-card-transactions-footer">
                                    Click here to view.
                                </footer>
                            </a>                        
                        </section>
                </section>
            </section>
        </main>
    </section>
</section>

@endsection
