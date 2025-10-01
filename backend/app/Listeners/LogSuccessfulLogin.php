<?php

namespace App\Listeners;

use Illuminate\Auth\Events\Login;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Spatie\Activitylog\Models\Activity;
// TAMBAHKAN INI untuk menggunakan Cache
use Illuminate\Support\Facades\Cache;

class LogSuccessfulLogin
{
    public function __construct()
    {
        //
    }

    public function handle(Login $event): void
    {
        // 1. Buat sebuah "kunci" yang unik untuk setiap user.
        $lockKey = 'log-login-lock:' . $event->user->id;

        // 2. Cek apakah kunci ini sudah ada di dalam cache.
        if (Cache::has($lockKey)) {
            // Jika ada, berarti login baru saja terjadi dalam 10 detik terakhir.
            // Hentikan eksekusi fungsi ini dan jangan lakukan apa-apa.
            return;
        }

        // 3. Jika kunci tidak ada, maka ini adalah login yang "sah".
        // Letakkan kunci di cache dengan durasi 10 detik.
        Cache::put($lockKey, true, now()->addSeconds(10));

        // 4. Lanjutkan dengan logika pencatatan log aktivitas kita yang asli.
        // Pengecekan guard ini tetap baik untuk keamanan.
        if ($event->guard !== 'web') {
            return;
        }

        activity()
           ->causedBy($event->user)
           ->log('Berhasil Login');
    }
}