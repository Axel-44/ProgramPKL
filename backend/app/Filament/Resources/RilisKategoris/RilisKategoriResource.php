<?php

namespace App\Filament\Resources\RilisKategoris;

use App\Filament\Resources\RilisKategoris\Pages\CreateRilisKategori;
use App\Filament\Resources\RilisKategoris\Pages\EditRilisKategori;
use App\Filament\Resources\RilisKategoris\Pages\ListRilisKategoris;
use App\Filament\Resources\RilisKategoris\Schemas\RilisKategoriForm;
use App\Filament\Resources\RilisKategoris\Tables\RilisKategorisTable;
use App\Models\RilisKategori;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class RilisKategoriResource extends Resource
{
    protected static ?string $model = RilisKategori::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'nama';

    public static function form(Schema $schema): Schema
    {
        return RilisKategoriForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return RilisKategorisTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListRilisKategoris::route('/'),
            'create' => CreateRilisKategori::route('/create'),
            'edit' => EditRilisKategori::route('/{record}/edit'),
        ];
    }
}
