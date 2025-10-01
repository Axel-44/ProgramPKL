<?php

namespace App\Filament\Resources\Fotos;

use App\Filament\Resources\Fotos\Pages;
use App\Models\Foto;
use BackedEnum;
use Filament\Actions;
use Filament\Forms;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables;
use Filament\Tables\Table;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;


class FotoResource extends Resource
{
    protected static ?string $model = Foto::class;

    protected static BackedEnum|string|null $navigationIcon = 'heroicon-o-camera';

    protected static ?string $navigationLabel = 'Manajemen Foto';

    protected static ?string $pluralModelLabel = 'Foto';

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                Forms\Components\FileUpload::make('file_path')
                    ->label('File Foto')
                    ->image()
                    ->disk('public')
                    ->directory('photos')
                    ->imageEditor()
                    ->required(),

                Forms\Components\TextInput::make('title')
                    ->label('Judul / Alt Text')
                    ->required()
                    ->maxLength(255),

                Forms\Components\Textarea::make('caption')
                    ->label('Keterangan (Opsional)')
                    ->rows(3),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('file_path')
                    ->label('Foto')
                    ->disk('public')
                    ->square(),
                Tables\Columns\TextColumn::make('title')
                    ->label('Judul')
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Tanggal Upload')
                    ->dateTime('d M Y')
                    ->sortable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Actions\EditAction::make(),
                Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Actions\BulkActionGroup::make([
                    Actions\DeleteBulkAction::make(),
                ]),
            ]);
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
            'index' => Pages\ListFotos::class::route('/'),
            'create' => Pages\CreateFoto::class::route('/create'),
            'edit' => Pages\EditFoto::class::route('/{record}/edit'),
        ];
    }
}