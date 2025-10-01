<?php

namespace App\Filament\Resources\ActivityResource\Pages;

use App\Filament\Resources\ActivityResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Spatie\Activitylog\Models\Activity;
use Filament\Notifications\Notification;

class ListActivities extends ListRecords
{
    protected static string $resource = ActivityResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\Action::make('bersihkanLog')
                ->label('Bersihkan Log Aktivitas')
                ->color('danger')
                ->icon('heroicon-o-trash')
                ->requiresConfirmation()
                ->action(function () {
                    Activity::truncate();
                    Notification::make()
                        ->title('Log berhasil dibersihkan')
                        ->success()
                        ->send();
                }),
        ];
    }
}