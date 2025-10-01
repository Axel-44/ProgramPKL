<?php

namespace App\Filament\Resources\Fotos\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Schemas\Schema;

class FotoForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('title')
                    ->required(),
                TextInput::make('file_path')
                    ->required(),
                Textarea::make('caption')
                    ->columnSpanFull(),
            ]);
    }
}
