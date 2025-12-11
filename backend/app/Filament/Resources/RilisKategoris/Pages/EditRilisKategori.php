<?php

namespace App\Filament\Resources\RilisKategoris\Pages;

use App\Filament\Resources\RilisKategoris\RilisKategoriResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditRilisKategori extends EditRecord
{
    protected static string $resource = RilisKategoriResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
