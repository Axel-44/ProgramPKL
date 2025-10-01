<?php

namespace App\Filament\Resources\BannerPopups\Pages;

use App\Filament\Resources\BannerPopups\BannerPopupResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditBannerPopup extends EditRecord
{
    protected static string $resource = BannerPopupResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
    protected function getRedirectUrl(): string
    {
        return static::getResource()::getUrl('index');
    }
}

