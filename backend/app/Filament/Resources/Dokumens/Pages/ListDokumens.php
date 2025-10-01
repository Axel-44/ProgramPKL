<?php

namespace App\Filament\Resources\Dokumens\Pages;

use App\Filament\Resources\Dokumens\DokumenResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;
use Filament\Actions;

class ListDokumens extends ListRecords
{
    protected static string $resource = DokumenResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->label('Upload Dokumen'),
        ];
    }
}
