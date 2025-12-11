<?php

namespace App\Filament\Resources\RilisKategoris\Pages;

use App\Filament\Resources\RilisKategoris\RilisKategoriResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListRilisKategoris extends ListRecords
{
    protected static string $resource = RilisKategoriResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
