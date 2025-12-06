<?php

namespace App\Filament\Resources\VisiMisis\Pages;

use App\Filament\Resources\VisiMisis\VisiMisiResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use App\Models\VisiMisi; // Import Model

class ListVisiMisis extends ListRecords
{
    protected static string $resource = VisiMisiResource::class;

    protected function getHeaderActions(): array
    {
        $jumlahData = VisiMisi::count();

        if ($jumlahData >= 1) {
            return []; 
        }

        return [
            Actions\CreateAction::make(),
        ];
    }
}