<?php

namespace App\Filament\Resources\Agendas\Schemas;

use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\TimePicker;
use Filament\Schemas\Schema;

class AgendaForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('nama_kegiatan')
                    ->required(),
                DatePicker::make('tanggal')
                    ->required(),
                TimePicker::make('waktu')
                    ->required(),
                TextInput::make('lokasi')
                    ->required(),
            ]);
    }
}
