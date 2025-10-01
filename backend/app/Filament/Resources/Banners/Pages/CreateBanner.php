<?php

namespace App\Filament\Resources\Banners\Pages;

use App\Filament\Resources\Banners\BannerResource;
use Filament\Resources\Pages\CreateRecord;
use Filament\Actions\Action;

class CreateBanner extends CreateRecord
{
    protected static string $resource = BannerResource::class;

    protected static ?string $title = 'Upload Banner';

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
