<?php

namespace App\Filament\Resources\BannerPopups;

use App\Filament\Resources\BannerPopups\Pages;
use App\Models\BannerPopup;
use BackedEnum;
use Filament\Actions;
use Filament\Forms;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables;
use Filament\Tables\Table;

class BannerPopupResource extends Resource
{
    protected static ?string $model = BannerPopup::class;
    protected static BackedEnum|string|null $navigationIcon = 'heroicon-o-photo';
    protected static ?string $navigationLabel = 'Banner Pop-up';
    protected static ?string $pluralModelLabel = 'Banner Pop-up';

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                Forms\Components\TextInput::make('title')
                    ->label('Judul Banner')
                    ->required()
                    ->maxLength(255),

                Forms\Components\FileUpload::make('image')
                    ->label('Gambar Banner')
                    ->disk('public')
                    ->directory('banner-popups') 
                    ->image()
                    ->imageEditor()
                    ->required(),

                Forms\Components\TextInput::make('url')
                    ->label('URL Link (Opsional)')
                    ->url()
                    ->nullable(),

                Forms\Components\Toggle::make('is_active')
                    ->label('Aktifkan Banner')
                    ->default(true),
                
                Forms\Components\TextInput::make('sort_order')
                    ->label('Urutan Tampil')
                    ->numeric()
                    ->default(0),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('image')
                    ->label('Gambar')
                    ->disk('public'),
                Tables\Columns\TextColumn::make('title')
                    ->label('Judul')
                    ->searchable(),
                Tables\Columns\ToggleColumn::make('is_active')
                    ->label('Status Aktif'),
                Tables\Columns\TextColumn::make('sort_order')
                    ->label('Urutan')
                    ->sortable(),
            ])
            ->defaultSort('sort_order', 'asc')
            ->actions([
                Actions\EditAction::make(),
                Actions\DeleteAction::make(),
            ]);
    }
    
    public static function getPages(): array
    {
        return [
            'index' => Pages\ListBannerPopups::class::route('/'),
            'create' => Pages\CreateBannerPopup::class::route('/create'),
            'edit' => Pages\EditBannerPopup::class::route('/{record}/edit'),
        ];
    }    
}

