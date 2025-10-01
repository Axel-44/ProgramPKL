<?php

namespace App\Filament\Resources\BannerPopups\Pages;

use App\Filament\Resources\BannerPopups\BannerPopupResource;
use Filament\Resources\Pages\CreateRecord;
use Filament\Actions\Action;

class CreateBannerPopup extends CreateRecord
{
    protected static string $resource = BannerPopupResource::class;
    
    protected static ?string $title = 'Upload Banner Pop-up';

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