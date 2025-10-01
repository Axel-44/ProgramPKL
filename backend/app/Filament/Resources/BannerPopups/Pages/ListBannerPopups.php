<?php

namespace App\Filament\Resources\BannerPopups\Pages;

use App\Filament\Resources\BannerPopups\BannerPopupResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;
use Filament\Actions;

class ListBannerPopups extends ListRecords
{
    protected static string $resource = BannerPopupResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->label('Upload Banner Pop-up'),
        ];
    }
}
