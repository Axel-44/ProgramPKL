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
        // 1. Tabel Users (Induk) harus dibuat duluan
        Schema::create('users', function (Blueprint $table) {
            $table->id(); 
            $table->string('name');
            $table->string('email')->unique(); // Wajib Unique agar bisa direlasikan
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->timestamps();
        });

        // 2. Tabel Password Reset Tokens (Sekarang punya relasi ke Users)
        Schema::create('password_reset_tokens', function (Blueprint $table) {
            $table->string('email')->primary();
            $table->string('token');
            $table->timestamp('created_at')->nullable();

            // TAMBAHAN RELASI DI SINI:
            // Menghubungkan email di tabel ini ke email di tabel users
            $table->foreign('email')
                  ->references('email')
                  ->on('users')
                  ->onDelete('cascade') // Jika user dihapus, token reset password juga hilang
                  ->onUpdate('cascade'); // Jika user ganti email, di sini juga berubah
        });

        // 3. Tabel Sessions (Sesuai perbaikan sebelumnya)
        Schema::create('sessions', function (Blueprint $table) {
            $table->string('id')->primary();
            
            $table->foreignId('user_id')
                  ->nullable() 
                  ->index() 
                  ->constrained('users') 
                  ->onDelete('cascade'); 
            
            $table->string('ip_address', 45)->nullable();
            $table->text('user_agent')->nullable();
            $table->longText('payload');
            $table->integer('last_activity')->index();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Urutan penghapusan harus dibalik agar tidak error constraint
        Schema::dropIfExists('sessions'); 
        Schema::dropIfExists('password_reset_tokens');
        Schema::dropIfExists('users');
    }
};