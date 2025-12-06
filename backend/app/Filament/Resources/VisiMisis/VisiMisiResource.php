<?php

namespace App\Filament\Resources\VisiMisis;

use App\Filament\Resources\VisiMisis\Pages;
use App\Models\VisiMisi;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Actions;
use BackedEnum;

// Import Schema & Komponen
use Filament\Schemas\Schema; 
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\RichEditor;
use Filament\Tables\Columns\TextColumn;

class VisiMisiResource extends Resource
{
    protected static ?string $model = VisiMisi::class;

    // --- UBAH NAMA DISINI (Supaya jadi "Visi Misi", bukan "Visi Misis") ---
    protected static ?string $navigationLabel = 'Visi & Misi'; // Nama di Sidebar
    protected static ?string $modelLabel = 'Visi Misi';        // Nama Tunggal (Create Visi Misi)
    protected static ?string $pluralModelLabel = 'Visi Misi';  // Nama Jamak/Judul Halaman
    // -----------------------------------------------------------------------

    protected static BackedEnum|string|null $navigationIcon = 'heroicon-o-flag';

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                Textarea::make('visi')
                    ->label('Visi BKAD')
                    ->rows(4)
                    ->required()
                    ->columnSpanFull(),

                RichEditor::make('misi')
                    ->label('Misi BKAD')
                    ->toolbarButtons([
                        'bold', 'italic', 'bulletList', 'orderedList', 'undo', 'redo'
                    ])
                    ->required()
                    ->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('visi')
                    ->label('Visi')
                    ->limit(50),
                    // SAYA HAPUS ->searchable() AGAR KOTAK SEARCH HILANG

                TextColumn::make('updated_at')
                    ->label('Terakhir Diubah')
                    ->dateTime('d M Y'),
            ])
            ->filters([
                //
            ])
            ->actions([
                // Tombol Edit & Delete
                Actions\EditAction::make(),
                Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                //
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
            'index' => Pages\ListVisiMisis::route('/'),
            'create' => Pages\CreateVisiMisi::route('/create'),
            'edit' => Pages\EditVisiMisi::route('/{record}/edit'),
        ];
    }
}