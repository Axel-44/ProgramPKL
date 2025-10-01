<?php

namespace App\Filament\Resources\StrukturOrganisasis\Pages;

use App\Filament\Resources\StrukturOrganisasis\StrukturOrganisasiResource;
use Filament\Resources\Pages\CreateRecord;
use Filament\Actions\Action;

class CreateStrukturOrganisasi extends CreateRecord
{
    protected static string $resource = StrukturOrganisasiResource::class;

    protected static ?string $title = 'Buat Stuktur Organisasi';

    protected function getCreateFormAction(): Action
    {
        return parent::getCreateFormAction()->label('Buat');
    }
    protected function getCreateAnotherFormAction(): Action
    {
        return parent::getCreateAnotherFormAction()->label('Buat & Buat yang lain');
    }
    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');    
    }
}
