<?php

namespace App\Filament\Resources\Dokumens\Pages;

use App\Filament\Resources\Dokumens\DokumenResource;
use Filament\Resources\Pages\CreateRecord;
use Filament\Actions\Action;
use Filament\Notifications\Notification; 

class CreateDokumen extends CreateRecord
{
    protected static string $resource = DokumenResource::class;
    
    protected static ?string $title = 'Upload Dokumen';


    protected function getCreatedNotification(): ?Notification
    {
        return null; 
    }

    protected function afterCreate(): void
    {
        Notification::make()
            ->title('File berhasil di Unggah')
            ->success()
            ->body('Dokumen baru telah tersimpan di sistem.')
            ->send(); 
    }

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