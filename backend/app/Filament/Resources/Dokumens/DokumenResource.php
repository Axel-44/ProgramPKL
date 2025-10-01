<?php

namespace App\Filament\Resources\Dokumens;

use App\Filament\Resources\Dokumens\Pages;
use App\Models\Dokumen;
use App\Models\KategoriDokumen;
use BackedEnum;
use Filament\Actions;
use Filament\Forms;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Schemas\Components\Utilities\Get;
use Illuminate\Support\Facades\Storage;

class DokumenResource extends Resource
{
    protected static ?string $model = Dokumen::class;

    protected static BackedEnum|string|null $navigationIcon = 'heroicon-o-document-text';

    protected static ?string $navigationLabel = 'Manajemen Dokumen';

    protected static ?string $pluralModelLabel = 'Dokumen';

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                Forms\Components\FileUpload::make('file_path')
                    ->label('File Dokumen')
                    ->disk('public')
                    ->directory(function (Get $get) {
                        $kategori = KategoriDokumen::find($get('kategori_dokumen_id'));
                        return $kategori ? 'dokumen/' . $kategori->slug : 'dokumen/lainnya'; 
                    })
                    ->required()
                    ->acceptedFileTypes(['application/pdf', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet']),

                Forms\Components\TextInput::make('title')
                    ->label('Judul Dokumen')
                    ->required()
                    ->maxLength(255),

                Forms\Components\TextInput::make('tahun')
                    ->label('Tahun Dokumen')
                    ->numeric()
                    ->required()
                    ->minValue(2000)
                    ->maxValue(date('Y')) 
                    ->helperText('Masukkan tahun terbit dokumen.'),    

                Forms\Components\Select::make('kategori_dokumen_id')
                    ->label('Kategori')
                    ->relationship('kategoriDokumen', 'nama_kategori')
                    ->required()
                    ->reactive()
                    ->createOptionForm([ 
                        Forms\Components\TextInput::make('nama_kategori')
                            ->required()
                            ->maxLength(255),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('file_link')
                    ->label('File')
                    ->default('Lihat')
                    ->icon('heroicon-o-document-arrow-down')
                    ->url(fn (Dokumen $record): string => Storage::disk('public')->url($record->file_path))
                    ->openUrlInNewTab(),

                Tables\Columns\TextColumn::make('title')
                    ->label('Judul')
                    ->searchable(),

                Tables\Columns\TextColumn::make('tahun')
                    ->label('Tahun')
                    ->searchable()
                    ->sortable(),    

                Tables\Columns\TextColumn::make('kategoriDokumen.nama_kategori')
                    ->label('Kategori')
                    ->searchable()
                    ->sortable()
                    ->badge(),
                    
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Tanggal Upload')
                    ->dateTime('d M Y'),
            ])
            //->filters(/)
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

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListDokumens::class::route('/'),
            'create' => Pages\CreateDokumen::class::route('/create'),
            'edit' => Pages\EditDokumen::class::route('/{record}/edit'),
        ];
    }
}
