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
        Schema::create('beritas', function (Blueprint $table) {
            $table->id();
            $table->string('title'); // Judul Berita
            $table->string('slug')->unique(); // URL-friendly dari judul
            $table->string('type'); // Jenis Berita: 'bkad' atau 'kota_bogor'
            $table->longText('content'); // Isi berita
            $table->string('image')->nullable(); // Path untuk gambar utama berita
            $table->timestamp('published_at')->nullable(); // Tanggal publikasi
            $table->timestamps(); // created_at dan updated_at
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('beritas');
    }
};
