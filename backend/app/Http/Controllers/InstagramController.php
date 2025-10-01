<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class InstagramController extends Controller
{
    /**
     * Mengambil feed Instagram dari API secara real-time.
     */
    public function getFeed()
    {
        
        $userId = '6340894838'; 
        // Ganti dengan Access Token berumur panjang untuk akun pribadi Anda
        $accessToken = 'YOUR_ACCESS_TOKEN'; 

        if (empty($userId) || empty($accessToken)) {
            return response()->json([
                'error' => 'Instagram User ID or Access Token is missing.',
            ], 400);
        }

        $response = Http::get("https://graph.facebook.com/v19.0/{$userId}/media", [
            'fields' => 'id,caption,media_type,media_url,thumbnail_url,permalink',
            'access_token' => $accessToken,
        ]);

        if ($response->failed()) {
            return response()->json([
                'error' => 'Failed to fetch data from Instagram API.',
                'message' => $response->json()
            ], 500);
        }

        $media = $response->json();

        $formattedData = collect($media['data'])->map(function ($item) {
            return [
                'id' => $item['id'],
                'thumbnail_url' => $item['media_type'] === 'VIDEO' ? $item['thumbnail_url'] : $item['media_url'],
                'permalink' => $item['permalink'],
                'caption' => $item['caption'] ?? '',
            ];
        });

        return response()->json(['data' => $formattedData->take(6)], 200);
    }
}