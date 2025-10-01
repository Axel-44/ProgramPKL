<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Dokumen;
use App\Models\KategoriDokumen; 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class DokumenController extends Controller
{

    public function index(Request $request)
    {
        $query = Dokumen::with('kategoriDokumen');

        if ($request->has('category_id') && !empty($request->category_id)) {
            $query->where('kategori_dokumen_id', $request->category_id);
        }
        
        if ($request->has('search') && !empty($request->search)) {
            $query->where('judul', 'like', '%' . $request->search . '%');
        }

        $dokumen = $query->latest()->paginate(10);

        $dokumen->getCollection()->transform(function ($item) {
            $item->file_url = $item->file_path ? asset(Storage::url($item->file_path)) : null;
            return $item;
        });

        return response()->json([
            'success' => true,
            'data' => $dokumen
        ]);
    }


    public function getCategories()
    {
        try {
            $categories = KategoriDokumen::select('id', 'nama_kategori')->get();

            return response()->json([
                'success' => true,
                'data' => $categories
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Gagal mengambil data kategori.'
            ], 500);
        }
    }
}