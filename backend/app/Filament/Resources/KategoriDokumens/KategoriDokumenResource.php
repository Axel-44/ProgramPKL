<?php

namespace App\Filament\Resources\KategoriDokumens;

use App\Filament\Resources\KategoriDokumens\Pages;
use App\Models\KategoriDokumen;
use BackedEnum;
use Filament\Actions;
use Filament\Forms;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables;
use Filament\Tables\Table;

class KategoriDokumenResource extends Resource
{
    protected static ?string $model = KategoriDokumen::class;
    protected static BackedEnum|string|null $navigationIcon = 'heroicon-o-folder-open';
    protected static ?string $navigationLabel = 'Kategori Dokumen';
    protected static ?string $pluralModelLabel = 'Kategori Dokumen';
    protected static ?int $navigationSort = 2; 

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                Forms\Components\TextInput::make('nama_kategori')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nama_kategori')->searchable(),
                Tables\Columns\TextColumn::make('slug')->label('Nama Folder'),
            ])
            ->actions([
                Actions\EditAction::make(),
                Actions\DeleteAction::make(),
            ]);
    }
    
    public static function getPages(): array
    {
        return [
            'index' => Pages\ListKategoriDokumens::route('/'),
            'create' => Pages\CreateKategoriDokumen::route('/create'),
            'edit' => Pages\EditKategoriDokumen::route('/{record}/edit'),
        ];
    }    
}

