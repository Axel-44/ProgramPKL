<?php

namespace App\Filament\Resources\Agendas;

use App\Filament\Resources\Agendas\Pages;
use App\Models\Agenda;
use BackedEnum;
use Filament\Actions;
use Filament\Forms;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables;
use Filament\Tables\Table;

class AgendaResource extends Resource
{
    protected static ?string $model = Agenda::class;

    protected static BackedEnum|string|null $navigationIcon = 'heroicon-o-calendar-days';

    protected static ?string $navigationLabel = 'Manajemen Agenda';

    protected static ?string $pluralModelLabel = 'Agenda';

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                Forms\Components\TextInput::make('nama_kegiatan')
                    ->label('Nama Kegiatan')
                    ->required()
                    ->maxLength(255)
                    ->columnSpanFull(),
                Forms\Components\DatePicker::make('tanggal')
                    ->label('Tanggal')
                    ->required(),
                Forms\Components\TimePicker::make('waktu')
                    ->label('Waktu')
                    ->required(),
                Forms\Components\TextInput::make('lokasi')
                    ->label('Lokasi')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nama_kegiatan')
                    ->label('Nama Kegiatan')
                    ->searchable(),
                Tables\Columns\TextColumn::make('tanggal')
                    ->label('Tanggal')
                    ->date('d F Y') // Format tanggal menjadi "02 September 2025"
                    ->sortable(),
                Tables\Columns\TextColumn::make('waktu')
                    ->label('Waktu')
                    ->time('H:i') // Format waktu menjadi "08:20"
                    ->sortable(),
                Tables\Columns\TextColumn::make('lokasi')
                    ->label('Lokasi')
                    ->searchable(),
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
            ])
            ->defaultSort('tanggal', 'asc'); // Urutkan berdasarkan agenda terdekat
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListAgendas::class::route('/'),
            'create' => Pages\CreateAgenda::class::route('/create'),
            'edit' => Pages\EditAgenda::class::route('/{record}/edit'),
        ];
    }
}
