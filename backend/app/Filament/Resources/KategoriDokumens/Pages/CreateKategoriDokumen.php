<?php

namespace App\Filament\Resources\KategoriDokumens\Pages;

use App\Filament\Resources\KategoriDokumens\KategoriDokumenResource;
use Filament\Resources\Pages\CreateRecord;
use Filament\Actions\Action;

class CreateKategoriDokumen extends CreateRecord
{
    protected static string $resource = KategoriDokumenResource::class;

    protected static ?string $title = 'Buat Kategori';

    protected function getCreateFormAction(): Action
    {
        return parent::getCreateFormAction()->label('Buat');
    }

    protected function getCreateAnotherFormAction(): Action
    {
        return parent::getCreateAnotherFormAction()->label('Buat & buat yang lain');
    }
    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');    
    }
}    
