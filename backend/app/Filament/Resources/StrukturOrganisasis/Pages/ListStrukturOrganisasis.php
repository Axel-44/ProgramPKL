<?php

namespace App\Filament\Resources\StrukturOrganisasis\Pages;

use App\Filament\Resources\StrukturOrganisasis\StrukturOrganisasiResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;
use Filament\Actions;

class ListStrukturOrganisasis extends ListRecords
{
    protected static string $resource = StrukturOrganisasiResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->label('Buat Struktur Organisasi'),
        ];
    }
}
