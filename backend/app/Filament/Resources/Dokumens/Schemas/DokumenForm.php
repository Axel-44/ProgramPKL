<?php

namespace App\Filament\Resources\Dokumens\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class DokumenForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('title')
                    ->required(),
                TextInput::make('file_path')
                    ->required(),
                TextInput::make('kategori')
                    ->required(),
            ]);
    }
}
