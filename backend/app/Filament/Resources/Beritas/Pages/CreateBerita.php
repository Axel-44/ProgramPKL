<?php

namespace App\Filament\Resources\Beritas\Pages;

use App\Filament\Resources\Beritas\BeritaResource;
use Filament\Resources\Pages\CreateRecord;
use Filament\Actions\Action;

class CreateBerita extends CreateRecord
{
    protected static string $resource = BeritaResource::class;

    protected static ?string $title = 'Upload Berita';

    protected function getCreateFormAction(): Action
    {
        return parent::getCreateFormAction()->label('Upload');
    }

    protected function getCreateAnotherFormAction(): Action
    {
        return parent::getCreateAnotherFormAction()->label('Upload & upload yang lain');
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }    
}
