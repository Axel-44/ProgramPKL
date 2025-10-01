<?php

namespace App\Http\Controllers;

use App\Models\Dokumen;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;

class DokumenController extends Controller
{
    /**
     * Menampilkan atau mengunduh file dokumen berdasarkan ID.
     *
     * @param  Dokumen $dokumen
     * @return \Symfony\Component\HttpFoundation\StreamedResponse|\Illuminate\Http\Response
     */
    public function show(Dokumen $dokumen) 
    {

        if (!Storage::disk('public')->exists($dokumen->file_path)) {
            abort(404, 'File tidak ditemukan di server.');
        }

        $path = Storage::disk('public')->path($dokumen->file_path);
        
        $headers = [
            'Content-Type' => mime_content_type($path),
            'Content-Disposition' => 'inline; filename="' . basename($path) . '"',
        ];

        return response()->file($path, $headers);
    }
}