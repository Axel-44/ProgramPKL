<?php

namespace App\Filament\Resources\Agendas\Pages;

use App\Filament\Resources\Agendas\AgendaResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateAgenda extends CreateRecord
{
    protected static string $resource = AgendaResource::class;

    public function getTitle(): string
    {
        return 'Upload Agenda';
    }

    public function getCreateFormAction(): Actions\Action
    {
        return parent::getCreateFormAction()->label('Upload');
    }

    public function getCreateAnotherFormAction(): Actions\Action
    {
        return parent::getCreateAnotherFormAction()->label('Upload & Upload yang lain');
    }
    
    protected function getRedirectUrl(): string
    {
        return static::getResource()::getUrl('index');
    }
}

