<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('videos', function (Blueprint $table) {
            $table->string('type')->default('file')->after('title');

            $table->string('youtube_url')->nullable()->after('type');

            $table->string('file_path')->nullable()->change();
        });
    }

    public function down(): void
    {
        Schema::table('videos', function (Blueprint $table) {
            $table->dropColumn(['type', 'youtube_url']);
            $table->string('file_path')->nullable(false)->change();
        });
    }
};