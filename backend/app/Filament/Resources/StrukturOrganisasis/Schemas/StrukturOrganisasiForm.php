<?php

namespace App\Filament\Resources\StrukturOrganisasis\Schemas;

use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class StrukturOrganisasiForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('nama')
                    ->required(),
                TextInput::make('jabatan')
                    ->required(),
                TextInput::make('gambar'),
                Select::make('parent_id')
                    ->relationship('parent', 'id'),
                TextInput::make('sort_order')
                    ->required()
                    ->numeric()
                    ->default(0),
            ]);
    }
}
