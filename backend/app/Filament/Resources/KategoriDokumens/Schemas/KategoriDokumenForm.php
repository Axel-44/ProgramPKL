<?php

namespace App\Filament\Resources\KategoriDokumens\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class KategoriDokumenForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('nama_kategori')
                    ->required(),
                TextInput::make('slug')
                    ->required(),
            ]);
    }
}
