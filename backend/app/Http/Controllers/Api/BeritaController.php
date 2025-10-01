<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Berita;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class BeritaController extends Controller
{   
    public function index(Request $request)
    {
        $query = Berita::query();

        if ($request->has('category')) {
            $categoryType = match ($request->category) {
                'Berita BKAD' => 'bkad',
                'Berita Kota Bogor' => 'kota_bogor',
                default => null,
            };

            if ($categoryType) {
                $query->where('type', $categoryType);
            }
        }

        $berita = $query->orderBy('published_at', 'desc')->paginate(10);

        $berita->getCollection()->transform(function ($item) {
            $item->image_url = $item->image ? asset(Storage::url($item->image)) : null;
            $item->excerpt = \Illuminate\Support\Str::limit(strip_tags($item->content), 150);
            $item->kategori = match ($item->type) {
                'bkad' => 'Berita BKAD',
                'kota_bogor' => 'Berita Kota Bogor',
                default => 'Tidak Diketahui',
            };
            return $item;
        });

        return response()->json([
            'success' => true,
            'data' => $berita
        ]);
    }

    /**
     * Mengambil semua nama kategori yang unik.
     */
    public function getCategories()
    {
        $categories = [
            'Berita BKAD',
            'Berita Kota Bogor',
        ];

        return response()->json([
            'success' => true,
            'data' => $categories
        ]);
    }
}