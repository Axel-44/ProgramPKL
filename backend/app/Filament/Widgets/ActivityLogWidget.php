<?php

namespace App\Filament\Widgets;

use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
// Gunakan model Activity dari Spatie
use Spatie\Activitylog\Models\Activity;
// Tambahkan ini untuk Aksi dan Notifikasi
use Filament\Actions;
use Filament\Notifications\Notification;

class ActivityLogWidget extends BaseWidget
{
    // Judul yang akan tampil di atas tabel
    protected static ?string $heading = 'Log Aktivitas';

    // Agar widget ini memakan lebar penuh halaman dashboard
    protected int | string | array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        return $table
            // Query untuk mengambil data dari model Activity
            ->query(Activity::query())
            // Mengurutkan dari yang terbaru secara default
            ->defaultSort('created_at', 'desc')
            // Mendefinisikan kolom-kolom tabel
            ->columns([
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Waktu')
                    ->dateTime('d-m-Y H:i:s')
                    ->sortable(),
                Tables\Columns\TextColumn::make('description')
                    ->label('Aktivitas')
                    ->searchable(),
                Tables\Columns\TextColumn::make('causer.name')
                    ->label('User')
                    ->searchable(),
            ])
            // Menambahkan tombol "Bersihkan Log" di header tabel
            ->headerActions([
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
            ]);
    }
}