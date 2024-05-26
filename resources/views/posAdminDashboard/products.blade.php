@extends('layouts.main')
@section('content')
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
                    <li class="kld--padding-1"><a href="/admin/records" class="kld--text-color-white kld--text-hover-info-light-4">Records</a></li>|
                    <li class="kld--padding-1"><a href="/admin/statistics" class="kld--text-color-white kld--text-hover-info-light-4">Statistics</a></li>|
                    <li class="kld--padding-1"><a href="/admin/transactions" class="kld--text-color-white kld--text-hover-info-light-4">Transactions</a></li>
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

        </main>
    </section>
</section>

@endsection
