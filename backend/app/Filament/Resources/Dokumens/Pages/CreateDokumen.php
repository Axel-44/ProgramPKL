<?php

namespace App\Filament\Resources\Dokumens\Pages;

use App\Filament\Resources\Dokumens\DokumenResource;
use Filament\Resources\Pages\CreateRecord;
use Filament\Actions\Action;

class CreateDokumen extends CreateRecord
{
    protected static string $resource = DokumenResource::class;
    
    protected static ?string $title = 'Upload Dokumen';

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
