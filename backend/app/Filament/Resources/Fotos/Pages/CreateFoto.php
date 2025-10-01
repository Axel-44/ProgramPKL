<?php

namespace App\Filament\Resources\Fotos\Pages;

use App\Filament\Resources\Fotos\FotoResource;
use Filament\Actions\Action;
use Filament\Resources\Pages\CreateRecord;

class CreateFoto extends CreateRecord
{
    protected static string $resource = FotoResource::class;

    protected static ?string $title = 'Upload Foto';

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