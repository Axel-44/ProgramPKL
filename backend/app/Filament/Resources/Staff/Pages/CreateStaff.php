<?php

namespace App\Filament\Resources\Staff\Pages;

use App\Filament\Resources\Staff\StaffResource;
use Filament\Resources\Pages\CreateRecord;
use Filament\Actions\Action;

class CreateStaff extends CreateRecord
{
    protected static string $resource = StaffResource::class;

    protected static ?string $title = 'Upload Staff';

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
