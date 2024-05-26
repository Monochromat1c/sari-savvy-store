<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
    // Schema::create('users', function (Blueprint $table) {
    // $table->id();
    // $table->string('name');
    // $table->string('email')->unique();
    // $table->timestamp('email_verified_at')->nullable();
    // $table->string('password');
    // $table->rememberToken();
    // $table->timestamps();
    // });

    // Schema::create('password_reset_tokens', function (Blueprint $table) {
    // $table->string('email')->primary();
    // $table->string('token');
    // $table->timestamp('created_at')->nullable();
    // });

    // Schema::create('sessions', function (Blueprint $table) {
    // $table->string('id')->primary();
    // $table->foreignId('user_id')->nullable()->index();
    // $table->string('ip_address', 45)->nullable();
    // $table->text('user_agent')->nullable();
    // $table->longText('payload');
    // $table->integer('last_activity')->index();
    // });

    Schema::create('genders', function(Blueprint $table) {
    $table->id('gender_id');
    $table->string('gender');
    $table->timestamps();
    });


    Schema::create('roles', function(Blueprint $table) {
    $table->id('role_id');
    $table->string('role');
    $table->timestamps();
    });

    Schema::create('users', function(Blueprint $table) {
    $table->id('user_id');
    $table->string('first_name');
    $table->string('middle_name');
    $table->string('last_name');
    $table->string('suffix_name');
    $table->date('birthday');
    $table->unsignedBigInteger('gender_id');
    $table->string('address');
    $table->string('contact_number');
    $table->string('email')->unique();
    $table->string('username')->unique();
    $table->string('password');
    $table->unsignedBigInteger('role_id');
    $table->timestamps();

    $table->foreign('gender_id')->references('gender_id')->on('genders');
    $table->foreign('role_id')->references('role_id')->on('roles');
    });

    Schema::create('suppliers', function(Blueprint $table){
    $table->id('supplier_id');
    $table->string('supplier');
    $table->timestamps();
    });

    Schema::create('products', function(Blueprint $table){
    $table->id('product_id');
    $table->string('product_name');
    $table->integer('quantity');
    $table->unsignedBigInteger('supplier_id');
    $table->timestamps();

    $table->foreign('supplier_id')->references('supplier_id')->on('suppliers');
    });

    Schema::create('payment_methods', function(Blueprint $table){
    $table->id('payment_method_id');
    $table->string('payment_method');
    $table->timestamps();
    });

    Schema::create('discounts', function(Blueprint $table){
    $table->id('discount_id');
    $table->string('discount_name');
    $table->decimal('discount_amount', 10, 2);
    $table->timestamps();
    });

    Schema::create('payment_transactions', function(Blueprint $table){
    $table->id('transaction_id');
    $table->unsignedBigInteger('user_id');
    $table->unsignedBigInteger('payment_method_id');
    $table->unsignedBigInteger('discount_id');
    $table->decimal('amount_paid', 10, 2);
    $table->timestamps();

    $table->foreign('user_id')->references('user_id')->on('users');
    $table->foreign('payment_method_id')->references('payment_method_id')->on('payment_methods');
    $table->foreign('discount_id')->references('discount_id')->on('discounts');
    });

    Schema::create('carts', function(Blueprint $table){
    $table->id('cart_id');
    $table->unsignedBigInteger('product_id');
    $table->integer('quantity');
    $table->timestamps();

    $table->foreign('product_id')->references('product_id')->on('products');
    });
    }

    /**
    * Reverse the migrations.
    */
    public function down(): void
    {
    Schema::table('users', function (Blueprint $table) {
    $table->dropForeign('users_gender_id_foreign');
    $table->dropForeign('users_role_id_foreign');
    });

    Schema::table('carts', function (Blueprint $table) {
    $table->dropForeign('carts_product_id_foreign');
    });

    Schema::table('payment_transactions', function(Blueprint $table){
    $table->dropForeign('payment_transactions_user_id_foreign');
    $table->dropForeign('payment_transactions_payment_method_id_foreign');
    $table->dropForeign('payment_transactions_discount_id_foreign');
    });

    Schema::table('products', function(Blueprint $table){
    $table->dropForeign('products_supplier_id_foreign');
    });

    Schema::dropIfExists('genders');
    Schema::dropIfExists('roles');
    Schema::dropIfExists('users');
    Schema::dropIfExists('suppliers');
    Schema::dropIfExists('products');
    Schema::dropIfExists('payment_methods');
    Schema::dropIfExists('discounts');
    Schema::dropIfExists('payment_transactions');
    Schema::dropIfExists('carts');
    }
};
